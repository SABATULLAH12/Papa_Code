//#region imports
import { Component, OnInit, ViewChild, AfterViewInit, Pipe, Injectable } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { CdkDragDrop, moveItemInArray } from '@angular/cdk/drag-drop';
import { CustomAjaxService, UserDetails } from '../../common-services/custom-ajax.service';
import { environment } from '../../../environments/environment';
import { async, Observable, Subject } from 'rxjs';
import { map } from 'rxjs/operators';
import { MatStepper } from '@angular/material/stepper';
import { MatSnackBar } from '@angular/material/snack-bar';
import { JsonpClientBackend } from '@angular/common/http';
import { PipeTransform } from '@angular/core';
import { DomSanitizer, SafeUrl } from '@angular/platform-browser';
//#endregion

//#region class declerations
declare class operation {
  command: string;
  data: string;
  status: string;
  message: string;
}
declare class customFileInfo {
  file: File;
  status: string;
  message: string;
  totalOperationCounts: number;
  successOperationCounts: number;
  operation: Array<operation>;
}
//#endregion

@Component({
  selector: 'app-home-page',
  templateUrl: './home-page.component.html',
  styleUrls: ['./home-page.component.scss']
})
export class HomePageComponent implements OnInit {
  //#region variables
  isLinear = true;
  isEditable = false;
  loginFormGroup: FormGroup;
  uploadingFormGroup: FormGroup;
  uploadFileFormGroup: FormGroup;
  fileValidFormGroup: FormGroup;
  signedIn: boolean = false;
  IsSkipUpload: boolean = false;
  userDetails: UserDetails;
  filelist: File[] = [];
  customfileList: customFileInfo[] = [];
  mockEmptyFiles: FileList;
  ongoingRequestCount= 0;
  files: FileList;
  downloadJsonHref:SafeUrl;
  isFileValid: boolean = false;
  panelOpenState = false;
  @ViewChild('stepper') private myStepper: MatStepper;
  totalStepsCount: number;
  //#endregion variables

  constructor(private _formBuilder: FormBuilder, private customAjaxService: CustomAjaxService, private _snackBar: MatSnackBar,private sanitizer: DomSanitizer) { }
  
  //#region step1 login
  public getIsAuthenticatedData(): Observable<boolean> {
    return this.customAjaxService
      .getFlag("/Account/IsAuthenticated");
  }
  public getname(): Observable<UserDetails> {
    return this.customAjaxService
      .getUserDetails("/Account/GetUserDetails");
  }
  public forceSignIn(){
    this.customAjaxService.signIn();
  }
  public setname() {
    setTimeout(() => {
      this.getname().subscribe(
        (data) => { this.userDetails = data },
        (err) => console.log(err),
        () => this.validateLoginControl()
      )
    }, 200);
  }
  public validateLoginControl() {
    this.loginFormGroup.setValue({
      name: this.userDetails.name
    });
  }
  //#endregion step1
  
  //#region step2
  public validateFileControl(file: FileList) {
    this.isFileValid = this.fileCheck();
    this.fileValidFormGroup.setValue({
      filescount: !this.isFileValid ? '' : this.filelist.length,
      isValid: ''
    });
  }
  public createCustomFileInfo() {
    this.fileValidFormGroup.setValue({
      filescount: !this.isFileValid ? '' : this.filelist.length,
      isValid: !this.isFileValid ? '' : 'pass'
    });
    this.goForward(1,50);
    this.filelist.forEach(file => {
      this.setCustomFileInfo(file);
    });
  }
  public addfilesToList(files: FileList) {
    this.mockEmptyFiles = files;
    let maxFileSizeAllowedBytes = environment.MaxFileSizeMB * 1000000;
    let maxFileNumbersAllowed = environment.MaxFileNumber;
    let successCount = 0;
    let fileNameWithSizeIssue: Array<string> = [];
    let fileNameWithTypeIssue: Array<string> = [];
    let fileNameWithNameIssue: Array<string> = [];
    let fileNamewithNumberIssue: Array<string> = [];
    let loadedFileNames: Array<string> = this.filelist.map((file) => { return file.name });
    for (let i = 0; i < files.length; i++) {
      let file = files[i];
      console.log(file.type);
      console.log(file.size);
      if (file.type.toLocaleLowerCase() != "text/plain") {
        fileNameWithTypeIssue.push(file.name);
        continue;
      }
      else if (file.size > maxFileSizeAllowedBytes) {
        fileNameWithSizeIssue.push(file.name);
        continue;
      }
      else if (loadedFileNames.includes(file.name)) {
        fileNameWithNameIssue.push(file.name);
        continue;
      }
      else if (this.filelist.length>=maxFileNumbersAllowed){
        fileNamewithNumberIssue.push(file.name);
        continue;
      }
      else {
        this.filelist.push(file);
        successCount++;
        console.log("file added " + file.name);
      }
    }
    let message = "";
    let errorcount = fileNameWithTypeIssue.length + fileNameWithSizeIssue.length + fileNameWithNameIssue.length + fileNamewithNumberIssue.length;
    if (successCount > 0) {
      let successMessage = successCount + " new file Loaded";
      this._snackBar.open(successMessage, "Ok", { duration: 3000, panelClass: ['success-snackbar'] });
    }
    if (errorcount > 0) {
      message += message == "" ? "" : "\n\n";
      message += "Failed to load " + errorcount + " file.";
      message += fileNameWithTypeIssue.length > 0 ? "\n\nFile should be of text/plain format, Problem with file:- ['" + fileNameWithTypeIssue.join("','") + "']" : "";
      message += fileNameWithSizeIssue.length > 0 ? "\n\nFile should be not exceed" + environment.MaxFileSizeMB + "MB, Problem with file:- ['" + fileNameWithSizeIssue.join("','") + "']" : "";
      message += fileNameWithNameIssue.length > 0 ? "\n\nFile with same name already been loaded, Problem with file ['" + fileNameWithNameIssue.join("','") + "']" : "";
      message += fileNamewithNumberIssue.length > 0 ?  "\n\nOnly "+ maxFileNumbersAllowed +" files are allowed at a time, failed to load file ['" + fileNamewithNumberIssue.join("','") + "']" : "";
      alert(message);
    }
    console.log(message);
  }
  public drop(event: CdkDragDrop<string[]>) {
    moveItemInArray(this.filelist, event.previousIndex, event.currentIndex);
  }
  public removeFileFromList(file, index) {
    this.filelist.splice(index, 1);
    this.validateFileControl(this.mockEmptyFiles);
  }
  public submit(files: FileList) {
    console.log('files:', files);
    this.addfilesToList(files);
    this.validateFileControl(files);
    console.log(this.filelist);
  }
  public fileCheck(): boolean {
    return this.filelist !== undefined && this.filelist !== null && this.filelist.length > 0;
  }
  //#endregion step2
  
  //#region step3 uploading
  private customfileUploadTrigger(url:string,op:operation): Observable<object>{
    return this.customAjaxService.postWithParamData(url, op);
  }
  public retryUpload(fileInfo: customFileInfo){
    fileInfo.status = "uploading";
    this.customfileUploadConfig(fileInfo);
  }
 
  private customfileUploadConfig(fileInfo: customFileInfo){
    if(fileInfo.message =="file loading failed. file may be corrupt or not correct format."){
      fileInfo.status = "failed";
    }
    fileInfo.operation.forEach(item => {
      if(item.status == "failed"){
        item.status = "uploading";
      }
      if(item.status !="success"){
        //orchastate ajax calls
        this.orchastrateCalls(item,fileInfo);
      }
    });
  }
  private orchastrateCalls(op:operation,fileInfo: customFileInfo){
    setTimeout(() => {
      if(this.ongoingRequestCount>= environment.maxParallelRequestCount){
        this.orchastrateCalls(op,fileInfo);
      }
      else{
        this.ongoingRequestCount++;
        this.triggerOperationUpload(op,fileInfo);
      }
    }, 500);
  }
  private triggerOperationUpload(op:operation,fileInfo: customFileInfo){
    this.customfileUploadTrigger('/upload', op).subscribe(
      (data) => {
        if(data["isSuccess"]==true){
          op.data = 'uploaded';
          op.status = "success";
          op.message = JSON.stringify(data);
        }
        else{
          op.status = "failed";
          op.message = JSON.stringify(data);
        }
      },
      (err) => {
        this.ongoingRequestCount--;
        op.status = "failed";
        op.message = JSON.stringify(err);
        this.refreshFileStatus(fileInfo);
      },
      () => {
        this.ongoingRequestCount--;
        this.refreshFileStatus(fileInfo);
      }
    )
  }
  public validateUploadControl(){
    let totalFileCount = this.customfileList.length;
    let successFileCount = this.getFileStatus('success');
    this.uploadingFormGroup.setValue({
      upladingDone: totalFileCount==successFileCount? 'yes':''
    });
    if(totalFileCount==successFileCount){
      this.generateDownloadJsonReport(this.customfileList.map(file=>{
        return {
          "fileName" : file.file.name,
          "status": file.status,
          "message": file.message,
          "operation": file.operation.map(op =>{
            {
              return {
                "command" : op.command,
                "response" : op.message,
                "status" : op.status
              }
            }
          })
        }
      }));
    }
    this.goForward(2);
  }
  private refreshFileStatus(fileInfo:customFileInfo){
    let successCount = fileInfo.operation.filter(item=> item.status =="success").length;
    let failCount = fileInfo.operation.filter(item=> item.status =="failed").length;
    fileInfo.successOperationCounts = successCount;
    if(fileInfo.successOperationCounts == fileInfo.totalOperationCounts){
      fileInfo.status = "success";
      console.log(this.customfileList);
      this.validateUploadControl();
    }
    else if(successCount + failCount==fileInfo.totalOperationCounts && failCount>0){
      fileInfo.status = "failed";
      fileInfo.message = fileInfo.operation
                          .filter(item=> item.status =="failed")
                          .map(item=> item.command + "\n"+ item.message)
                          .join("\n");
      console.log(this.customfileList);
      this.setIsSkipUpload();
    }
    else{
      fileInfo.status = "uploading";
    }
  }
  public setIsSkipUpload(){
    let successFiles = this.getFileStatus("success");
    let failedFiles = this.getFileStatus("failed");
    if(failedFiles >0 && successFiles+failedFiles == this.customfileList.length){
      this.IsSkipUpload = true;
      this.generateDownloadJsonReport(this.customfileList.map(file=>{
        return {
          "fileName" : file.file.name,
          "status": file.status,
          "message": file.message,
          "operation": file.operation.map(op =>{
            {
              return {
                "command" : op.command,
                "response" : op.message,
                "status" : op.status
              }
            }
          })
        }
      }));
    }
  }
  public getFailedInfo(cf:customFileInfo){
    let totalOperationCount = cf.operation.length;
    let failedOperationCount = cf.operation.filter(item=> item.status =="failed").length;
    return failedOperationCount + "/"+totalOperationCount+" operations failed!";
  }
  public getFileStatus(status:string){
    return this.customfileList.filter(item=> item.status ==status).length;
  }
  public setCustomFileInfo(fileRef: File) {
    let fileReader = new FileReader();
    fileReader.onload = (e) => {
      try {
        let data = fileReader.result.toString();
        data = data.replace(/[\n\r]/g, '');
        let res = data.split(environment.tableDelem).map((item) => {
          if (item.length > 0) {
            let splitData = item.split(environment.opDelem);
            return {
              command: splitData[1],
              data: btoa(environment.tableDelem + splitData[2] + environment.tableDelem),
              status: 'uploading',
              message: '',
            }
          }
        }).filter(this.notEmpty);
        console.log("from once file loaded " + fileRef.name);
        res = res.filter(item=> this.notEmpty(item) && item.command.length>1);
        if(res.length == 0){
          throw "no operations";
        }
        let customFile:customFileInfo = { file: fileRef, status: 'uploading', message: "file loaded", operation: res, totalOperationCounts: res.length, successOperationCounts: 0 };
        this.customfileList.push(customFile);
        setTimeout(() => { this.customfileUploadConfig(customFile) }, 200);
      }
      catch (ex) {
        console.log("from once file loaded " + fileRef.name);
        this.customfileList.push({
          file: fileRef,
          status: 'failed',
          message: "file loading failed. file may be corrupt or not correct format.",
          operation: [],
          totalOperationCounts: 0,
          successOperationCounts: 0
        });
        this.setIsSkipUpload();
      }
    }
    fileReader.onerror = (e)=>{
      console.log("from once file loaded " + fileRef.name);
        this.customfileList.push({
          file: fileRef,
          status: 'failed',
          message: "file loading failed. file may be corrupt or not correct format.",
          operation: [],
          totalOperationCounts: 0,
          successOperationCounts: 0
        });
        this.setIsSkipUpload();
    }
    fileReader.readAsText(fileRef);
  }
  //#endregion step3
  
  //#region reset everthing
  public resetStepper(){
    this.generateDownloadJsonReport([]);
    
    this.loginFormGroup = this._formBuilder.group({
      name: ['', Validators.required]
    });
    this.uploadFileFormGroup = this._formBuilder.group({
      files: ['']
    });
    this.fileValidFormGroup = this._formBuilder.group({
      filescount: ['', Validators.required],
      isValid: ['', Validators.required]
    });
    this.uploadingFormGroup = this._formBuilder.group({
      upladingDone: ['', Validators.required],
    });
    this.signedIn = false;
    this.IsSkipUpload = false;
    this.filelist = [];
    this.customfileList = [];
    this.isFileValid = false;
    this.getIsAuthenticatedData().subscribe(
      (data) => { this.signedIn = data },
      (err) => console.log(err),
      () => this.setname()
    );
  }
  //#endregion reset everthing
  
  //#region common
  public generateDownloadJsonReport(element:any) {
    console.log(this.customfileList);
    var theJSON = JSON.stringify(element);
    this.downloadJsonHref = this.sanitizer.bypassSecurityTrustUrl("data:text/json;charset=UTF-8," + encodeURIComponent(theJSON));
  }
  public notEmpty<TValue>(value: TValue | null | undefined): value is TValue {
    return value !== null && value !== undefined;
  }
  public goForward(stepId,time=1700): string {
    if (this.myStepper.selectedIndex == stepId) {
      setTimeout(() => this.myStepper.next(), time);
    }
    return "";
  }
  //#endregion common
  
  ngOnInit() {
    this.resetStepper();
  }
  
  ngAfterViewInit() {
    this.totalStepsCount = this.myStepper._steps.length;
  }
  
}

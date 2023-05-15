import { Component, OnInit } from '@angular/core';
import { CustomAjaxService, UserDetails } from '../../common-services/custom-ajax.service';
import { Observable } from 'rxjs';
@Component({
  selector: 'app-navigation-bar',
  templateUrl: './navigation-bar.component.html',
  styleUrls: ['./navigation-bar.component.scss']
})
export class NavigationBarComponent implements OnInit {

  userDetails: UserDetails;
  ShowUserDetails: boolean = false;
  constructor( private customAjaxService: CustomAjaxService) { }

  ngOnInit(): void {
    this.getname().subscribe(
      (data) => { this.userDetails = data },
      (err) => console.log(err),
      () => {this.ShowUserDetails = true;}
    )
  }
  public logout(){
    this.customAjaxService.signOut();
  }
  public getname(): Observable<UserDetails> {
    return this.customAjaxService
      .getUserDetails("/Account/GetUserDetails");
  }

}

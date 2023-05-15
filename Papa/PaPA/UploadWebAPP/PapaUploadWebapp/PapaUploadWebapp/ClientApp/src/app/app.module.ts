import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { DemoMaterialModule } from './material-module';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NotFoundComponent } from './common-components/not-found/not-found.component';
import { FileDirective } from './common-components/file-drop-directive/file.directive';
import { FileDropDirective } from './common-components/file-drop-directive/file-drop.directive';
import { MasterLayoutComponent } from './master-layout/master-layout.component';
import { HomePageComponent } from './pages/home-page/home-page.component';
import { SettingPageComponent } from './pages/setting-page/setting-page.component';
import { NavigationBarComponent } from './common-components/navigation-bar/navigation-bar.component';
import { FooterBarComponent } from './common-components/footer-bar/footer-bar.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';
import { MatSidenavModule } from '@angular/material/sidenav';
import { MatFormFieldModule, MAT_FORM_FIELD_DEFAULT_OPTIONS } from '@angular/material/form-field';
import { MatSelectModule } from '@angular/material/select';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
@NgModule({
  declarations: [
    AppComponent,
    NotFoundComponent,
    MasterLayoutComponent,
    HomePageComponent,
    SettingPageComponent,
    NavigationBarComponent,
    FooterBarComponent,
    FileDirective,
    FileDropDirective
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    MatButtonModule,
    MatIconModule,
    FormsModule,
    ReactiveFormsModule,
    DemoMaterialModule,
    MatSidenavModule,
    MatFormFieldModule,
    MatSelectModule,
    HttpClientModule
  ],
  providers: [
    { provide: MAT_FORM_FIELD_DEFAULT_OPTIONS, useValue: { appearance: 'fill' } },
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }

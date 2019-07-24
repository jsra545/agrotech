import { Component, OnInit } from '@angular/core';
import { NavController } from '@ionic/angular';

@Component({
  selector: 'app-inicio',
  templateUrl: './inicio.page.html',
  styleUrls: ['./inicio.page.scss'],
})
export class InicioPage implements OnInit {

  constructor(private navCtrl: NavController){}


  goHum(){ 
    this.navCtrl.navigateForward(['humedad']);
  }


   goTem(){ 
    this.navCtrl.navigateForward(['temperatura']);
  }
  ngOnInit() {
  }

}

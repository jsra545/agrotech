import { Component, OnInit } from '@angular/core';
import {TaskService} from '/home/mauricio/App_AgroTec/src/app/services/task.service';
import {HttpClientModule} from '@angular/common/http';
import{Task} from '/home/mauricio/App_AgroTec/src/app/interfaces/task';

@Component({
  selector: 'app-temperatura',
  templateUrl: './temperatura.page.html',
  styleUrls: ['./temperatura.page.scss'],
})
export class TemperaturaPage implements OnInit {

	tasks : Task[]=[];

  constructor(
  	private taskService: TaskService
  	) { }

  ngOnInit() {
  }

  getAllTasks(){
    this.taskService.getAllTasks()
    .subscribe(tasks => {
      this.tasks=tasks;
      console.log(tasks);
    });
}
}

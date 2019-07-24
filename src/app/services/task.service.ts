import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Task} from './../interfaces/task';

@Injectable({
  providedIn: 'root'
})
export class TaskService {

  constructor(
  	private http: HttpClient
  	) { }

  getAllTasks(){

  	const path = 'http://10.42.0.174:1880/temp/';
  	//const path = 'https://jsonplaceholder.typicode.com/todos';
  	return this.http.get<Task[]>(path);
  }
}

 export class Student {
    constructor(name, age, grade) {
      this.name = name;
      this.age = age;
      this.grade = grade;
    }
  
    displayInfo() {
      console.log(`Name: ${this.name}, Age: ${this.age}, Grade: ${this.grade}`);
    }
  }
  
  // 
export function promoteStudent(student) {
    student.grade += 1;
    console.log(`${student.name} has been promoted to grade ${student.grade}`);
  }
  
  // 
import Student from './student.js';
import { promoteStudent } from './studentUtils.js';

const student1 = new Student("Alice", 14, 8);
student1.displayInfo();

promoteStudent(student1);
student1.displayInfo();

/*
Create a class Student with 2 data members rollno and name. Create one method setData() that takes roll number and student name
as parameter and stores them in data members rollno and name. Create one more method showData() to print the data member values.
Create another class (main class) StudentDemo that creates Student class object and calls setData() and showData() methods.
*/
package Assignment3;
import java.util.Scanner;

class Student
{
   int rollNo;
   String name;
   
   void setData(int rollNo,String name)
   {
       this.rollNo=rollNo;
       this.name=name;
   }
   void showData()
   {
       System.out.println("Roll no : "+rollNo);
       System.out.println("Name : "+name);
   }
}
public class StudentDemo {
    public static void main(String args[])
    {
        Student std=new Student();
        Scanner sc=new Scanner(System.in);
        System.out.println("Enter roll no : ");
        int rollNo=sc.nextInt();
        sc.nextLine();
        System.out.println("Enter name of the student : ");
        String name=sc.nextLine();
        std.setData(rollNo, name);
        std.showData();    
    }
}

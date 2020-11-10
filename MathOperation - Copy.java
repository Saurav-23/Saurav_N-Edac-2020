/*
 Que->Create a class MathOperation containing overloaded methods ‘multiply’ to calculate multiplication of following arguments. 
 *two integers 
 *three floats 
 *all elements of array 
 *one double and one integer 

 */
package Assignment3;

public class MathOperation {
       int multiply(int a,int b)
       {
           int c=0;
           c=a*b;
           return c;
       }
       double multiply(float a,float b,float c)
       {
           double d=0.0;
           d=a*b*c;
           return d;
       }
       long multiply(int arr[])
       {
           long l=1;
           for(int i=0;i<arr.length;i++)
           {
               l=l*arr[i];
           }
           return l;
       }
       double multiply(double a,int b)
       {
           double d=0.0;
           d=a*b;
           return d;
       }
    public static void main(String args[])
    {
        MathOperation mop=new MathOperation();
        int i=mop.multiply(5, 2);
        System.out.println("Two integers multiplication :"+i);
        double d=mop.multiply(2.5f, 3.5f, 2.0f);
        System.out.println("Three float numbers multiplication :"+d);
        int arr[]={1,2,3,4,5};
        long a=mop.multiply(arr);
        System.out.println("Array multiplication :"+a);
        double x=mop.multiply(5.5,3);
        System.out.println("One double and one integer multiplication :"+x);
        
    }
}

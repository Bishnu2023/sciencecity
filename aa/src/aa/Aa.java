/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aa;
//import ab.Ab;
//import ab.Ac;
import ab.*;

/**
 *
 * @author BISHNU
 */
public class Aa {
    
        static int a=10;
        int b=23;
        public void Display()
        {
            System.out.println(a);
            System.out.println(b);
        }
        public static void ShowData()
        {
            System.out.println(a);
           // System.out.print(b);
        }        
    public static void main(String[] args) {
        
            Aa obj=new Aa();
            obj.Display();
            obj.ShowData();
    }
    
};

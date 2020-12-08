<<<<<<< HEAD
﻿using System;

using System.Collections.Generic;

=======
﻿using System;
>>>>>>> c44bac0e4d5cfe81b7c8723d9bb5f94bb401bb87

namespace _01_domaci_zadatak
{
    class Program
    {
        static void Main(string[] args)
        {
            //4.1.2 - Ispis brojeva
            //Napišite program koji na konzoli ispisuje
            //brojeve 1,2,3 svaki u novi red.
            Console.WriteLine(1);
            Console.WriteLine(2);
            Console.WriteLine(3);

            //4.1.3 - Ledište/Vrelište
            //Napišite program koji će ispisivati temperaturu ledišta i vrelišta
            //vode, svaku u novi red
<<<<<<< HEAD
            string naslov;
            naslov = "\nLed i vatra vode";
            int led = 0;
            int vrelo = 100;
            Console.WriteLine(naslov);
            Console.WriteLine("Ledište je:" + led);
            Console.WriteLine("Vrelište je:" + vrelo);


            //5.1.1 - Zbroj i razlika
            //Program koji traži unos 2 cijela broja i prikazuje
            //na ekranu njihov zbroj te razliku
            naslov = "\nZbroj i razlika";
            Console.WriteLine(naslov);
            int Number1, Number2;
            Console.WriteLine("Unesite prvi cijeli broj:");
            Number1 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Unesite drugi cijeli broj:");
            Number2 = Convert.ToInt32(Console.ReadLine());
            int Sum;
            int Razlika;
            Razlika = Number1 - Number2;
            Sum = Number1 + Number2;
            Console.WriteLine("Zbroj i razlika su {0} i {1}\n", Sum, Razlika);


            //5.1.2 - Umnožak i kvocijent
            //Program koji traži unos 2 cijela broja i prikazuje 
            //umnožak i kvocijent
            naslov = "\nUmnožak i kvocijent";
            Console.WriteLine(naslov);
            Console.WriteLine("Unesite prvi cijeli broj:");
            int num1 = int.Parse(Console.ReadLine());
            Console.WriteLine("Unesite drugi cijeli broj:");
            int num2 = int.Parse(Console.ReadLine());
            int multi = num1*num2;
            double divis = (double) num1/num2;
            Console.WriteLine("Umnožak = " + multi);
            Console.WriteLine("Kvocijent = " + divis);
        }
    }

    
   

=======

            string title;
            title = "Ledište / Vrelište";

            int ledište = 0;
            int vrelište = 100;
            Console.WriteLine(title);
            Console.WriteLine("Ledište je:" + ledište);
            Console.WriteLine("Vrelište je:" + vrelište);

            //5.1.1 - Zbroj i razlika
            //Program koji traži unos 2 cijela broja i prikazuje
            //na ekranu njihov zbroj te razliku

            string title2;
            title2 = "Zbroj i Razlika";
            Console.WriteLine(title2);

            int prviBroj;
            Console.WriteLine("Unesite prvi broj: ");
            prviBroj = int.Parse(Console.ReadLine());

            int drugiBroj;
            Console.WriteLine("Unesite drugi broj: ");
            drugiBroj = int.Parse(Console.ReadLine());

            int zbroj = prviBroj + drugiBroj;
            int razlika = prviBroj - drugiBroj;

            Console.WriteLine("Zbroj je {0}.", zbroj);
            Console.WriteLine("Razlika je ({0} - {1}) {2}.", prviBroj, drugiBroj, razlika);

            //5.1.2 - Umnožak i kvocijent
            //Program koji traži unos 2 cijela broja i prikazuje 
            //umnožak i kvocijent

            string title3;
            title3 = "Umnožak i kvocijent";
            Console.WriteLine(title3);

            int treciBroj;
            Console.WriteLine("Unesite prvi broj: ");
            treciBroj = int.Parse(Console.ReadLine());

            int cetvrtiBroj;
            Console.WriteLine("Unesite drugi broj: ");
            cetvrtiBroj = int.Parse(Console.ReadLine());

            int umnozak = treciBroj * cetvrtiBroj;
            Console.WriteLine("Umnožak je {0}", umnozak);

            double kvocijent = (double)treciBroj / (double)cetvrtiBroj;
            Console.WriteLine("Kvocijent je {0}", kvocijent);

            Console.WriteLine("Pritisnite bilo koju tipku za izlaz");
        }
    }
>>>>>>> c44bac0e4d5cfe81b7c8723d9bb5f94bb401bb87
}

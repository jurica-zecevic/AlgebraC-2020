using System;
using System.Collections.Generic;

namespace Zadatak_2
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("ZADATAK 2");

            Console.WriteLine("Unos riječi sve dok se ne unese riječ kraj");

            Console.WriteLine("Molimo unosite riječi");

            List<string> listaRijeci = new List<string>();

            string rijec = "";

            while (rijec != "kraj" && rijec != "KRAJ")
            {
                rijec = Console.ReadLine();

                if (rijec != "kraj" && rijec != "KRAJ")
                {
                    listaRijeci.Add(rijec);
                }
            }

            Console.WriteLine("\n Riječ(i) koje počinju slovom a ili A:");
            foreach (var item in listaRijeci)
            {
                if (item[0] == 'a' || item[0] == 'A')
                {
                    Console.Write(item + " ");
                }
            }

            Console.WriteLine("\n Riječ(i) koje počinju slovom b ili B:");
            foreach (var item in listaRijeci)
            {
                if (item[0] == 'b' || item[0] == 'B')
                {
                    Console.Write(item + " ");
                }
            }

            Console.WriteLine("\n Riječ(i) koje počinju slovom c ili C:");
            foreach (var item in listaRijeci)
            {
                if (item[0] == 'c' || item[0] == 'C')
                {
                    Console.Write(item + " ");
                }
            }

            Console.WriteLine("\n Ostale riječi:");
            foreach (var item in listaRijeci)
            {
                if (
                    item[0] != 'a'
                    &&
                    item[0] != 'A'
                    &&
                    item[0] != 'b'
                    &&
                    item[0] != 'B'
                    &&
                    item[0] != 'c'
                    &&
                    item[0] != 'C'
                    )
                {
                    Console.Write(item + " ");
                }
            }

            Console.ReadKey();
        }
    }
}

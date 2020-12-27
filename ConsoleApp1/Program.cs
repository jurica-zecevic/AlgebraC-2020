using System;
using System.Collections.Generic;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Unesite 10 brojeva");

            List<int> brojevi = new List<int>();

            for (int i = 0; i < 10; i++)
            {
                Console.WriteLine("Molim unesite {0}. broj: ", i + 1);
                int broj = int.Parse(Console.ReadLine());
                brojevi.Add(broj);
            }

            brojevi.Sort();

            foreach (var item in brojevi)
            {
                Console.Write("{0} ", item);
            }

            Console.ReadKey();
        }
    }
}

using System;

namespace Zadatak_1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("ZADATAK 1");

            Console.WriteLine("Unos broja i ispisivanje broja naopako");

            Console.WriteLine("Molimo unesite prirodni broj");

            int broj;
            int naopako = 0;

            do
            {
                broj = int.Parse(Console.ReadLine());

                if (broj < 0)
                {
                    Console.WriteLine("Greška! Molimo unesite pozitivni prirodni broj");
                }

                while (broj > 0)
                {
                    int ostatak = broj % 10;
                    naopako = (naopako * 10) + ostatak;
                    broj /= 10;
                }

            } while (broj < 0);

            Console.WriteLine("Unešeni broj napisan naopako: {0}", naopako);

            Console.ReadLine();
        }
    }
}

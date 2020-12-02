using System;

namespace _5._2._8_prijestupna_godina
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Unesite godinu kako bi provjerili je li prijestupna ili ne");
            int godina = 0;

            try
            {
                godina = int.Parse(Console.ReadLine());
            }
            catch (Exception ex)
            {
                Console.WriteLine("Niste unijeli ispravan format broja");
            }
            if ((godina % 400 == 0))
            {
                Console.WriteLine("Godina JE prijestupna");
            }
            else if ((godina % 100 == 0))
            {
                Console.WriteLine("Godina NIJE prijestupna");
            }
            else if (godina % 4 == 0)
            {
                Console.WriteLine("Godina JE prijestupna");
            }
            else
            {
                Console.WriteLine("Godina NIJE prijestupna");
            }
        }
    }
}

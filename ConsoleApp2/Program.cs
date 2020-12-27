using System;

namespace ConsoleApp2
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Zbroj");

            Zbroj(1, 2);
            Zbroj(10, 20);
        }

        static void Zbroj(int a, int b)
        {
            Console.WriteLine("Zbroj dva broja je {0}", a + b);
        }
    }
}

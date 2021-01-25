using System;

namespace Zadatak_3
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("ZADATAK 3 - Klasa Automobil");

            Automobil auto = new Automobil();

            auto.NaPromjenuGodineProizvodnje += (sender, e) =>
            {
                Console.WriteLine("Starost automobila sada iznosi: {0}", ((Automobil)sender).GodinaProizvodnje);
            };

            Console.WriteLine("Unesite naziv automobila:");
            auto.Naziv = Console.ReadLine();

            Console.WriteLine("Unesite godinu proizvodnje automobila:");
            auto.GodinaProizvodnje = int.Parse(Console.ReadLine());

            Console.WriteLine("Unesite osnovnu cijenu automobila:");
            auto.OsnovnaCijena = int.Parse(Console.ReadLine());

            Console.WriteLine(
                "Naziv Automobila je: {0},\n" +
                "godina proizvodnje je: {1},\n" +
                "osnovna cijena iznosi: {2}HRK,\n" +
                "starost iznosi: {3} godina,\n" +
                "a ukupna cijena je: {4}HRK",
                auto.Naziv,
                auto.GodinaProizvodnje,
                auto.OsnovnaCijena,
                auto.Starost(),
                auto.UkupnaCijena());
        }

    }
}

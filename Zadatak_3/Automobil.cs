using System;

namespace Zadatak_3
{
    internal class Automobil
    {
        private int godinaProizvodnje;

        public int GodinaProizvodnje
        {
            get => godinaProizvodnje;
            set
            {
                godinaProizvodnje = value;
                if (NaPromjenuGodineProizvodnje != null)
                {
                    NaPromjenuGodineProizvodnje(this, new System.EventArgs());
                }

            }
        }
        public string Naziv { get; internal set; }
        public double OsnovnaCijena { get; internal set; }
        public int TekucaGodina { get; private set; }
        public int ZavrsnaCijena { get; private set; }

        public Automobil(string Naziv = "Mercedes", int GodinaProizvodnje = 2003, double OsnovnaCijena = 10000)
        {
            this.Naziv = Naziv;
            this.GodinaProizvodnje = GodinaProizvodnje;
            this.OsnovnaCijena = OsnovnaCijena;
        }

        public int Starost()
        {
            int TekucaGodina = 2021;
            TekucaGodina -= this.GodinaProizvodnje;

            return TekucaGodina;
        }

        public int UkupnaCijena()
        {
            if (OsnovnaCijena <= 70000)
            {
                ZavrsnaCijena = (int)(OsnovnaCijena * 1.3);
            }
            else if (this.OsnovnaCijena > 70000 && this.OsnovnaCijena < 100000)
            {
                ZavrsnaCijena = (int)(OsnovnaCijena * 1.4);
            }
            else if (this.OsnovnaCijena >= 100000)
            {
                ZavrsnaCijena = (int)(OsnovnaCijena * 1.5);
            }
            return ZavrsnaCijena;
        }

        public delegate void NaPromjenuGodineProizvodnjeDelegat(object sender, System.EventArgs e);
        public event NaPromjenuGodineProizvodnjeDelegat NaPromjenuGodineProizvodnje;
    }
}
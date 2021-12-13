using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using NodarbibuSarakstsPR4;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

namespace NodarbibuSarakstsApp
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            NodarbibuSarakstsContainer database = new NodarbibuSarakstsContainer();

            //DbSet<Students> studenti = database.StudentsSet;
            //Students students = studenti.First();
            
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new SarakstsGalvenais(database));
        }
    }
}

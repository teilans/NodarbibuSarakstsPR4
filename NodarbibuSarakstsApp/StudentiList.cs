using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using NodarbibuSarakstsPR4;

namespace NodarbibuSarakstsApp
{
    public partial class StudentiList : Form
    {
        private NodarbibuSarakstsContainer database;

        public StudentiList()
        {
            InitializeComponent();
        }

        public StudentiList(NodarbibuSarakstsContainer database)
        { 
            InitializeComponent();
            this.database = database;
            fillList();
        }

        private void fillList()
        {

            foreach( Students student in database.StudentsSet)
            {
                listViewStudenti.Items.Add(student.Vards + ' ' + student.Uzvards);

            }
    
        }


        private void button1_Click(object sender, EventArgs e)
        {

        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

namespace MasterContent
{
    public partial class lab02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double a;
            if (TextBox1.Text == "") a = 0;
            else a = Convert.ToDouble(TextBox1.Text);
            a += 10;
            TextBox1.Text = a.ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            double a;
            if (TextBox1.Text == "") a = 0;
            else a = Convert.ToDouble(TextBox1.Text);
            a -= 10;
            TextBox1.Text = a.ToString();
        }

        protected ArrayList HistoryList
        {
            get
            {
                if (Session["HistoryList"] == null)
                {
                    Session["HistoryList"] = new ArrayList();

                }
                return (ArrayList)Session["HistoryList"];
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            double a = Convert.ToDouble(TextBox1.Text);
            if (Convert.ToDouble(ListBox1.Text) == 1)
            {
                a = a * 2.54;
            }
            else if (Convert.ToDouble(ListBox1.Text) == 2)
            {
                a = a * 4.566;
            }
            else if (Convert.ToDouble(ListBox1.Text) == 3)
            {
                a = a * 745.699872;
            }
            else if (Convert.ToDouble(ListBox1.Text) == 4)
            {
                a = a / 0.0022046;
            }
            else if (Convert.ToDouble(ListBox1.Text) == 5)
            {
                a = a / 0.0086485;
            }
            divresult.InnerText = a.ToString();
            HistoryList.Add(new Conversation(Convert.ToDouble(TextBox1.Text), a, ListBox1.SelectedItem.Text));
            showHistory();
            Request.SaveAs("d:\\http.txt", true);
        }
        protected void showHistory()
        {
            for (int i = 0; i < HistoryList.Count; i++)
            {
                Conversation temp = (Conversation)HistoryList[i];
                TableRow tr = new TableRow();
                TableCell cell = new TableCell();
                cell.Text = temp.Input.ToString();
                tr.Cells.Add(cell);

                cell = new TableCell();
                cell.Text = temp.Output.ToString();
                tr.Cells.Add(cell);

                cell = new TableCell();
                cell.Text = temp.Description.ToString();
                tr.Cells.Add(cell);

                Table1.Rows.Add(tr);
            }
        }
        public class Conversation
        {
            double i;
            double o;
            String d;
            public Conversation(double i, double o, String d)
            {
                this.i = i;
                this.o = o;
                this.d = d;
            }
            public double Input
            {
                get
                {
                    return i;
                }
            }

            public double Output
            {
                get
                {
                    return o;
                }
            }
            public String Description
            {
                get
                {
                    return d;
                }
            }
        }
    }
}
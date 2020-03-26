using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Label Text";
            Literal1.Text = "<b><Font color=\"Red\">Literal Text</b>";
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
            }
        }


        protected void ImageButton1_Click(object sender, EventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Write(TextBox1.Text);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Write("Text=" + ListBox1.SelectedItem.Text + "<br/>");
                Response.Write("Value=" + ListBox1.SelectedItem.Value + "<br/>");
                Response.Write("Index=" + ListBox1.SelectedIndex.ToString());
            }
            catch { }
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListBox2.Items.Clear();
            foreach (ListItem li in CheckBoxList1.Items)
            {
                if (li.Selected)
                {
                    ListBox2.Items.Add(li.Text);
                }
                if (CheckBoxList1.SelectedIndex == -1)
                {
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    Label1.ForeColor = System.Drawing.Color.Black;
                }
                Label1.Text = ListBox2.Items.Count.ToString() + "Item(s) Selected";
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            RadioButtonList1.SelectedIndex = -1;
        }

        protected void Button6_Click1(object sender, EventArgs e)
        {
            Response.Write("Text=" + RadioButtonList1.SelectedItem.Text + "<br/>");
            Response.Write("Value=" + RadioButtonList1.SelectedItem.Value + "<br/>");
            Response.Write("Index=" + RadioButtonList1.SelectedIndex.ToString());

        }
    }
}
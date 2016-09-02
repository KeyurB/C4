using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Text;
using System.ComponentModel;

namespace Greeting_card_application
{
    public partial class Greeting_card_improve_ver2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string[] colorArray = Enum.GetNames(typeof(KnownColor));
                lstBackColor.DataSource = colorArray;
                lstBackColor.DataBind();


                InstalledFontCollection fonts = new InstalledFontCollection();
                foreach (FontFamily family in fonts.Families)
                {
                    lstFontName.Items.Add(family.Name);
                }


                ListItem item = new ListItem();

                string[] borderStyleArray = Enum.GetNames(typeof(BorderStyle));
                lstBorder.DataSource = borderStyleArray;
                lstBorder.DataBind();

                lstBorder.SelectedIndex = 0;
                imgDefault.ImageUrl = "http://www.fnstatic.co.uk/images/source/article/omg-chocolate-cake-1_2.jpg";
            }
        }
        protected void cmdUpdate_Click(object sender, EventArgs e)
        {

            pnlCard.BackColor = Color.FromName(lstBackColor.SelectedItem.Text);

            lblGreeting.Font.Name = lstFontName.SelectedItem.Text;
            if (Int32.Parse(txtFontSize.Text) > 0)
            {
                lblGreeting.Font.Size =
                FontUnit.Point(Int32.Parse(txtFontSize.Text));
            }
            TypeConverter converter = TypeDescriptor.GetConverter(typeof(BorderStyle));
            
            pnlCard.BorderStyle = (BorderStyle)converter.ConvertFromString(lstBorder.SelectedItem.Text);
            

            if (chkPicture.Checked)
            {
                imgDefault.Visible = true;
            }
            else
            {
                imgDefault.Visible = false;
            }

            lblGreeting.Text = txtGreeting.Text;
        }
    }
}
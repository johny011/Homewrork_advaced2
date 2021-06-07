using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace برمجة_متقدمة_2
{
    public partial class databasefile : System.Web.UI.Page
    {
        EF eF = new EF();
        protected void Page_Load(object sender, EventArgs e)
        {

            var query = (from s in eF.Students select s).ToList();
            gr.DataSource = query;
            gr.DataBind();
            if (!IsPostBack)
            {
                var qu = (from s in eF.Students select s.Id).ToList();
                foreach (var x in qu)
                {
                    DropDownList1.Items.Add(x.ToString());
                }
            }
        }

        protected void xmlpage_Click(object sender, EventArgs e)
        {
            Response.Redirect("xmlfile.aspx");
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            
            if (txt_Age.Text != "" && txt_Id.Text != "" && txt_Name.Text != "" && txt_Year.Text != "")
            {
                try
                {
                    Student st = new Student();
                    st.Id = int.Parse(txt_Id.Text);
                    st.Name = txt_Name.Text;
                    st.Year = txt_Year.Text;
                    st.Age = txt_Age.Text;

                    eF.Students.Add(st);
                    eF.SaveChanges();
                    txt_Age.Text = "";
                    txt_Id.Text = "";
                    txt_Name.Text = "";
                    txt_Year.Text = "";
                }
                catch(Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
                    Response.Write("<script>alert('hello world')</script>");
                }
            
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void gr_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        

        protected void btn_Edit_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txt_edit_Id.Text);
            var query = eF.Students.First(s => s.Id ==id);
            query.Age = txt_edit_Age.Text;
            /*  query.Age = txt_edit_Age.Text;
              query.Year = txt_edit_Year.Text;*/

            eF.SaveChanges();
        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int I = int.Parse(DropDownList1.SelectedValue.ToString());
                var query = eF.Students.First(s => s.Id == I);
                eF.Students.Remove(query);
                eF.SaveChanges();
            }
        }

       
    }
}
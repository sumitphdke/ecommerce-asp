using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication1
{
    public partial class registration : System.Web.UI.Page

    {
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\WebApplication1\\WebApplication1\\App_Data\\userdata.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand com = new SqlCommand("INSERT INTO [dbo].[users] ([Id], [name], [emailid], [password]) VALUES (@Id,@name,@emailid,@password)", conn);
                if (password.Text == cpassword.Text)
                {
                    com.Parameters.AddWithValue("@id", id.Text);
                    com.Parameters.AddWithValue("@name", name.Text);
                    com.Parameters.AddWithValue("@emailid", emailid.Text);
                    com.Parameters.AddWithValue("@password", password.Text);
                    conn.Open();
                    com.ExecuteNonQuery();
                    conn.Close();
                }

            }
            catch (SqlException ex)
            {
               string error="an error"+ex.Message;
            }

            
            
        }
    }
}
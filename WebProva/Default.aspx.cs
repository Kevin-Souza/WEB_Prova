using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProva
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CarregarCliente();
        }
        private void CarregarCliente()
        {
            string query = @"Select id, nome, cidade, uf from usuario";
            DataTable dt = new DataTable();
            try
            {
                MySqlDataAdapter da = new MySqlDataAdapter(query, Conexao.Connection);
                da.Fill(dt);

                rptClientes.DataSource = dt;
                rptClientes.DataBind();
            }
            catch (Exception ex)
            {
                lblMsg.Text = $"Error: {ex.Message}";
            }
            finally
            {
                Conexao.Desconectar();
            }
        }
        protected void btnAdicionar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adicionar.aspx");
        }
    }
}
using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProva
{
    public partial class Adicionar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand();
            try
            {
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"insert into usuario
                                    (nome, Sexo, clt, TelefoneFixo, Celular, Email, logradouro, numero,
                                     complemento, bairro, cidade, uf )
                                     values
                                     (@nome,@sexo, @clt, @telefonefixo, @celular, @email, @logradouro, @numero,
                                        @complemento, @bairro, @cidade, @uf)";

                cmd.Parameters.AddWithValue("@nome", txtNome.Text);
                cmd.Parameters.AddWithValue("@sexo", ddlSexo.Text);
                cmd.Parameters.AddWithValue("@clt", txtClt.Text);
                cmd.Parameters.AddWithValue("@telefonefixo", txtFixo.Text);
                cmd.Parameters.AddWithValue("@celular", txtCelular.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Logradouro", txtLogradouro.Text);
                cmd.Parameters.AddWithValue("@numero", txtNumero.Text);
                cmd.Parameters.AddWithValue("@complemento", txtComplemento.Text);
                cmd.Parameters.AddWithValue("@bairro", txtBairro.Text);
                cmd.Parameters.AddWithValue("@cidade", txtCidade.Text);
                cmd.Parameters.AddWithValue("@uf", txtUF.Text);

                Conexao.Conectar();

                cmd.ExecuteNonQuery();
                lblResultado.Text = "Usuário Inserido";
                Response.Redirect("Default.aspx");

            }
            catch (Exception ex)
            {
                lblResultado.CssClass = "text text-danger";
                lblResultado.Text = $"Erro: {ex.Message}";

            }
            finally
            {
                Conexao.Desconectar();

            }
        }
        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

    }
}
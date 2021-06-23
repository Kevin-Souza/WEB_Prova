<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adicionar.aspx.cs" Inherits="WebProva.Adicionar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Cadastro</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">
            <img src="Img/smiley.png" class="img-fluid" width="50" />
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#conteudoNavbarSuportado" aria-controls="conteudoNavbarSuportado"
            aria-expanded="false">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse navbar-collapse" id="conteudoNavbarSuportado">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="Default.aspx"><b>Home</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Adicionar.aspx">Adicionar</a>
                </li>
            </ul>
        </div>
    </nav>
    <form id="form1" runat="server">
        <div class="text-center text-warning">
            <h2>Cadastro de Usuário</h2>
        </div>
        <div class="container">
            <div class="row" style="margin-top: 15px">
                <div class="col-md-8">
                    <label>Nome:</label>
                    <asp:RequiredFieldValidator ID="rfvNome" ControlToValidate="txtNome"
                        ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtNome" runat="server" MaxLength="80" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <label>Sexo:</label>
                    <asp:RequiredFieldValidator ID="rfvSexo" ControlToValidate="ddlSexo"
                        ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:DropDownList ID="ddlSexo" runat="server" CssClass="form-control">
                        <asp:ListItem Selected="True" Value=""></asp:ListItem>
                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                        <asp:ListItem Value="F">Feminino</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-2">
                    <label>Numero da CLT:</label>
                    <asp:RequiredFieldValidator ID="rfvClt" ControlToValidate="txtCLT"
                        ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtClt" runat="server" MaxLength="14" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="margin-top: 15px">
                <div class="col-md-2">
                    <label>Telefone Fixo:</label>
                    <asp:RequiredFieldValidator ID="rfvFixo" ControlToValidate="txtFixo"
                        ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtFixo" runat="server" MaxLength="11" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <label>Telefone Celular:</label>
                    <asp:RequiredFieldValidator ID="rfvCelular" ControlToValidate="txtCelular"
                        ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtCelular" runat="server" MaxLength="11" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-8">
                    <label>Email:</label>
                    <asp:RequiredFieldValidator ID="rfvEmail" ControlToValidate="txtEmail"
                        ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtEmail" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="margin-top: 15px">
                <div class="col-md-7">
                    <label>Logradouro:</label>
                    <asp:RequiredFieldValidator ID="rfvLogradouro" ControlToValidate="txtLogradouro"
                        ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtLogradouro" runat="server" MaxLength="100" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <label>Número:</label>
                    <asp:RequiredFieldValidator ID="rfvNumero" ControlToValidate="txtNumero" ErrorMessage="*"
                        ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtNumero" runat="server" MaxLength="5" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-3">
                    <label>Complemento</label>
                    <asp:TextBox ID="txtComplemento" runat="server" MaxLength="10" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row" style="margin-top: 15px">
                <div class="col-md-5">
                    <label>Bairro:</label>
                    <asp:RequiredFieldValidator ID="rfvBairro" ControlToValidate="txtBairro" ErrorMessage="*"
                        ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtBairro" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-5">
                    <label>Cidade:</label>
                    <asp:RequiredFieldValidator ID="rfvCidade" ControlToValidate="txtCidade" ErrorMessage="*"
                        ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtCidade" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-2">
                    <label>UF:</label>
                    <asp:RequiredFieldValidator ID="rfvUF" ControlToValidate="txtUF" ErrorMessage="*" ForeColor="Red"
                        runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtUF" runat="server" MaxLength="2" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="row" style="margin-top: 15px">
                <div class="text-right col-md-12">
                    <asp:Button ID="btnVoltar" CssClass="btn btn-dark" runat="server" Text="Voltar" OnClick="btnVoltar_Click" />
                    <asp:Button ID="btnSalvar" CssClass="btn btn-success" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
                </div>
            </div>
            <div class="row" style="margin-top: 15px">
                <div class="text-right col-md-12">
                    <asp:Label ID="lblResultado" CssClass="text-success" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </form>
    <script src="Scripts/jquery-3.0.0.slim.min.js"></script>
    <script src="Scripts/esm/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>

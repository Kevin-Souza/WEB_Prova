<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebProva.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Home</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
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
        <div class="container">
            <div class="col-md-12">
                <div class="text-center text-warning">
                    <h2>Home</h2>
                </div>
            </div>
            <div class="row" style="margin-top: 15px">
                <div class="col-md-12 text-right">
                    <asp:Button ID="btnAdicionar" CssClass="btn btn-primary" runat="server"
                        Text="Adicionar" OnClick="btnAdicionar_Click" />
                </div>
            </div>
            <div>
                <p>
                    <asp:Repeater ID="rptClientes" runat="server">
                        <HeaderTemplate>
                            <table class="table table-hover" id="sisDataTable">
                                <thead>
                                    <tr>
                                        <td><strong>ID</strong></td>
                                        <td><strong>Nome</strong></td>
                                        <td><strong>Cidade</strong></td>
                                        <td><strong>UF</strong></td>
                                    </tr>
                                </thead>
                        </HeaderTemplate>

                        <ItemTemplate>
                            <tr>
                                <td>
                                    <%# DataBinder.Eval(Container.DataItem, "id") %>
                                </td>
                                <td>
                                    <%# DataBinder.Eval(Container.DataItem, "nome") %>
                                </td>
                                <td>
                                    <%# DataBinder.Eval(Container.DataItem, "cidade") %>
                                </td>
                                <td>
                                    <%# DataBinder.Eval(Container.DataItem, "uf") %>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </p>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <asp:Label runat="server" Text="" ID="lblMsg"></asp:Label>
                </div>
            </div>

            <script>
                $('#sisDataTable').dataTable({
                    "language": {
                        "url": "https://cdn.datatables.net/plug-ins/1.10.24/i18n/Portuguese-Brasil.json"
                    }
                });
            </script>


        </div>
    </form>
    <script src="Scripts/jquery-3.0.0.slim.min.js"></script>
    <script src="Scripts/esm/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

</body>
</html>

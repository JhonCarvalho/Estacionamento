<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="CadastroCarro.aspx.cs" Inherits="Estacionamento.CadastroCarro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>
    <form id="form1" runat="server">
        <article class="kanban-entry grab" id="item1" draggable="true">
            <div class="kanban-entry-inner">
                <div class="kanban-label">
                    <h2><a href="#">Cadastro Carro</a> <span></span></h2>
                    <p></p>
                </div>
            </div>
        </article>
        <div class="form-group">
            <label for="marca">Marca:</label>
            <asp:TextBox class="form-control" name="txtMarca" ID="txtMarca" Width="30%"
                runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="Cor">Cor:</label>
            <asp:TextBox class="form-control" name="txtCor" ID="txtCor" Width="30%"
                runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="Modelo">Modelo:</label>
            <asp:TextBox class="form-control" name="txtModelo" ID="txtModelo" Width="30%"
                runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="AnoModelo">Ano Modelo:</label>
            <asp:TextBox class="form-control" name="txtAnoModelo" ID="txtAnoModelo" Width="30%"
                runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="AnoFabricacao">Ano Fabricação:</label>
            <asp:TextBox class="form-control" name="txtAnoFabricacao" ID="txtAnoFabricacao" Width="30%"
                runat="server"></asp:TextBox>
        </div>
        
        <asp:Button ID="Button1" runat="server" class="btn btn-success" OnClick="Button1_Click" Text="Salvar" />
        
    </form>
    <br />
    <% if (!String.IsNullOrEmpty(lblmsg.Text))
        {%>
    <div class="alert alert-success">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>
            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label></strong>
    </div>
    <%} %>
</asp:Content>

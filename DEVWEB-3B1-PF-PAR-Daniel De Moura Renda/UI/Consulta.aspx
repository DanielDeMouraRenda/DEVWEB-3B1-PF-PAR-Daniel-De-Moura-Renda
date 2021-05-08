<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="Workshop_Tecnologia.UI.consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
   <title></title>
</head>
<body>

     <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <asp:HyperLink NavigateUrl="~/UI/Index.aspx" Text="Home" runat="server"></asp:HyperLink>
                    </li>
                    <li class="nav-item">
                        <asp:HyperLink NavigateUrl="~/UI/Inscricao.aspx" Text="Inscrições" runat="server"></asp:HyperLink>
                    </li>
                </ul>
            </div>
        </nav>
        <section>
            <h1>Aulas</h1>
            <h1>CONSULTAR INSCRIÇÕES</h1>
      <asp:GridView ID="ConsultasGridViwe" runat="server" AutoGenerateColumns="False"
    DataKeyNames="id" 
    onrowcancelingedit="EmployeeGridView_RowCancelingEdit" 
    onrowediting="EmployeeGridView_RowEditing"
    onrowdeleting="EmployeeGridView_RowDeleting" 
    onrowupdating="EmployeeGridView_RowUpdating" Height="608px" Width="1361px" OnSelectedIndexChanged="ConsultasGridViwe_SelectedIndexChanged">

    <Columns>
    <asp:TemplateField HeaderText="Nome.">
    <ItemTemplate>    <%#Container.DataItemIndex+1 %>    </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Email">
    <ItemTemplate>    <%#Eval("nome") %>    </ItemTemplate>
    <EditItemTemplate>
    <asp:TextBox ID="txtnome" runat="server" Text='<%#Eval("nome") %>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Telefone">
    <ItemTemplate>    <%#Eval("endereco") %>    </ItemTemplate>
    <EditItemTemplate>
    <asp:TextBox ID="txtendereco" runat="server" Text='<%#Eval("endereco") %>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Foto">
    <ItemTemplate>    <%#Eval("endereco") %>    </ItemTemplate>
    <EditItemTemplate>
    <asp:TextBox ID="txtendereco" runat="server" Text='<%#Eval("endereco") %>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>
    <asp:CommandField ShowEditButton="true" ButtonType ="Image" 
        EditImageUrl="Imagem/editar.jpg" 
        UpdateImageUrl="Imagem/aceitar.jpg"
        CancelImageUrl="Imagem/erro.jpg" HeaderText="Editar" />
    <asp:CommandField ShowDeleteButton="true" ButtonType="Image" DeleteImageUrl="Imagem/erro.jpg" HeaderText="Deletar" />
    </Columns>
    </asp:GridView>
        
        </section>
    </header>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
     <footer>
        <div>
            &copy; Copyright 2021 
            <p>Desenvolvido por:Daniel De Moura Renda </p>
        </div>
    </footer>
</body>
</html>

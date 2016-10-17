<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="lab02.aspx.cs" Inherits="MasterContent.lab02" %>

<asp:Content ID="Content2" ContentPlaceHolderID="myContent" runat="server">
    <h1>  Лаб-1 Converter</h1>
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="+10" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="-10" OnClick="Button2_Click" />
        <br>
        <asp:ListBox ID="ListBox1" runat="server" Width="195px">
             <asp:ListItem Value="1" Selected="True">инч->см</asp:ListItem>
             <asp:ListItem Value="2">бээр->км</asp:ListItem>
             <asp:ListItem Value="3">морины хүч->ватт</asp:ListItem>
             <asp:ListItem Value="4">паунд->грамм</asp:ListItem>
             <asp:ListItem Value="5">баррел->литр</asp:ListItem>
        </asp:ListBox>
        <br>
        Үр дүн:<div runat="server" id="divresult"></div>
        <asp:Button ID="Button3" runat="server" Text="Хувиргах" Width="189px" OnClick="Button3_Click" />
        <br>
        
        Хөрвүүлсэн түүх:
        <asp:Table ID="Table1" runat="server" BorderColor="Black" BorderStyle="None">
            
        </asp:Table>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="LoginForm.WebForm1" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 1034px;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 100%;
            height: 113px;
            background-color: #FF9900;
        }
        .auto-style4 {
            width: 100%;
            background-color: #FFFFFF;
        }
        .auto-style5 {
            width: 230px;
        }
        .auto-style6 {
            width: 100%;
            background-color: #373B3E;
        }
        .auto-style7 {
            width: 100%;
            background-color: #FF9900;
        }
        .auto-style8 {
            width: 100%;
            background-color: #FF6600;
            height: 33px;
        }
        .auto-style9 {
        width: 911px;
    }
        .auto-style10 {
        width: 245px;
    }
        .auto-style12 {
            width: 100%;
            height: 61px;
        }
         .auto-style13 {
             height: 377px;
             width: 275px;
         }
         .auto-style14 {
             width: 275px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <form id="form1" runat="server">
    <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <table class="auto-style3">
                            <tr>
                                <td>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<table class="auto-style12">
                                        <tr>
                                            <td class="auto-style9">
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" CssClass="btn btn-outline-light" OnClick="Button2_Click1" Text="Home" />
                                                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="Button3" runat="server" CssClass="btn btn-outline-light" OnClick="Button1_Click" Text="Features" />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button5" runat="server" CssClass="btn btn-outline-light" OnClick="Button5_Click" Text="Administrative Control" />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <br />
                                            </td>
                                            <td class="auto-style10">
                                                <br />
                                                <br />
                                                <asp:Label ID="userNameLabel" runat="server"></asp:Label>
                                                <br />
                                            </td>
                                            <td>
                                                <br />
                                                <asp:Button ID="loginBtn" runat="server" CssClass="btn btn-outline-light" Text="Logout" OnClick="loginBtn_Click" />
                                             </td>
                                        </tr>
                                    </table>
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <table class="auto-style4">
                            <tr>
                                <td class="auto-style5" rowspan="2">
                                    <table class="auto-style6">
                                        <tr>
                                            <td>
                                                <br />
                                                <br />
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="adminBtns" runat="server" CssClass="btn btn-outline-danger" OnClick="adminBtns_Click" Text="Admins" />
                                                <br />
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
                                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-outline-danger" OnClick="Button1_Click" Text="Monthly Report" />
                                                <br />
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:Button ID="Button6" runat="server" CssClass="btn btn-outline-danger" OnClick="Button6_Click" Text="Users Revenue" />
                                                <br />
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button7" runat="server" CssClass="btn btn-outline-danger" OnClick="Button7_Click" Text="Yearly Revenue" />
                                                <br />
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button8" runat="server" CssClass="btn btn-outline-danger" OnClick="Button8_Click" Text="Business Revenue" />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td rowspan="2">&nbsp; &nbsp;</td>
                                <td class="auto-style13">
                                    <br />
                                    <asp:Chart ID="Chart1" runat="server" EnableTheming="True">
                                        <Series>
                                            <asp:Series Name="Series1">
                                            </asp:Series>
                                        </Series>
                                        <ChartAreas>
                                            <asp:ChartArea Name="ChartArea1">
                                            </asp:ChartArea>
                                        </ChartAreas>
                                    </asp:Chart>
                                    <br />
                                    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="296px">
                                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                                    </asp:GridView>
                                </td>
                                <td rowspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style14">&nbsp;<br />
                                    <br />
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style7">
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        <table class="auto-style8">
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
    </form>
    </form>
</asp:Content>

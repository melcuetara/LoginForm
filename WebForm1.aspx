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
             height: 747px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
<button type="button" class="btn btn-outline-light">Home</button>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                                                <button type="button" class="btn btn-outline-light">Features</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                                <button type="button" class="btn btn-outline-light">Pricing</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                                <button type="button" class="btn btn-outline-light">About</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <br />
                                            </td>
                                            <td class="auto-style10">
                                                <br />
                                                <br />
                                                <input class="form-control me-sm-2" type="text" placeholder="Username"><br />
                                            </td>
                                            <td>
                                                <br />
                                               <button class="btn btn-secondary my-2 my-sm-0" type="submit">____</button>
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
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-outline-danger">User Revenue</button> <br />
                                                <br />
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="Label5" runat="server"></asp:Label>
                                                <br />
                                                <br />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                                    <asp:Chart ID="Chart1" runat="server">
                                        <series>
                                            <asp:Series Name="Series1">
                                            </asp:Series>
                                        </series>
                                        <chartareas>
                                            <asp:ChartArea Name="ChartArea1">
                                            </asp:ChartArea>
                                        </chartareas>
                                    </asp:Chart>
                                </td>
                                <td rowspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;<br />
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

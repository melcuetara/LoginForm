<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="LoginForm.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .centerImg {
            float:right;
        }
        .centerImg1 {
            float:unset;
        }
        .centerImg3 {
            float:left;
        }
      
    </style>
       
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
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button4" runat="server" Text="Home" CssClass="btn btn-outline-light" OnClick="Button4_Click" />
                                                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; 
                                                <asp:Button ID="Button5" runat="server" Text="Feature" CssClass="btn btn-outline-light"/>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button6" runat="server" Text="Administrative Control" CssClass="btn btn-outline-light" OnClick="Button6_Click" />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <br />
                                            </td>
                                            <td class="auto-style10">
                                                <br />
                                                <br />
                                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                                <br />
                                            </td>
                                            <td>
                                                <br />
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
                                <td class="auto-style5">
                                    <table class="auto-style6">
                                        
                                    </table>
                                </td>
                                <td>&nbsp;</td>
                               
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td> 
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/css/1_Front_Display.png" Width="292px" CssClass="centerImg"/>
                         <div class="centerImg1">
                            <h2>Example body text</h2>
<p>Nullam quis risus eget <a href="#">urna mollis ornare</a> vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>
<p><small>This line of text is meant to be treated as fine print.</small></p>
<p>The following is <strong>rendered as bold text</strong>.</p>
<p>The following is <em>rendered as italicized text</em>.</p>
<p>An abbreviation of the word attribute is <abbr title="attribute">attr</abbr>.</p>
                       </div>
                    </td>
         
                </tr>
                <tr>
                    <td> 
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/css/23_Home_Business.png" Width="292px" CssClass="centerImg3"/>
                        <h2>Example body text</h2>
<p>Nullam quis risus eget <a href="#">urna mollis ornare</a> vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>
<p><small>This line of text is meant to be treated as fine print.</small></p>
<p>The following is <strong>rendered as bold text</strong>.</p>
<p>The following is <em>rendered as italicized text</em>.</p>
<p>An abbreviation of the word attribute is <abbr title="attribute">attr</abbr>.</p>
                       </div>
                    </td>
                </tr>
                <tr>
                    <td> 
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/css/24_Home_Service.png" Width="292px" CssClass="centerImg"/>
                         <div class="centerImg1">
                            <h2>Example body text</h2>
<p>Nullam quis risus eget <a href="#">urna mollis ornare</a> vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>
<p><small>This line of text is meant to be treated as fine print.</small></p>
<p>The following is <strong>rendered as bold text</strong>.</p>
<p>The following is <em>rendered as italicized text</em>.</p>
<p>An abbreviation of the word attribute is <abbr title="attribute">attr</abbr>.</p>
                       </div>
                    </td>
         
                </tr>

            </table>
    </form>

</asp:Content>

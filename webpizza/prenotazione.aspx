<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prenotazione.aspx.cs" Inherits="webpizza.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">  
    <title></title>  
    <style type="text/css">  
        .auto-style1 {  
            width: 100%;  
        }  
    </style>  
</head>  
<body>
    <form id="form1" runat="server">  
    <div>  
      
        <table class="auto-style1">  
            <tr>  
                <td colspan="6" style="text-align: center; vertical-align: top">  
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Prenotazione Tavolo"></asp:Label>  
                </td>  
            </tr>  
                        <tr>  
                <td> </td>  
                <td style="text-align: center">  
                    <asp:Label ID="Label5" runat="server" Font-Size="X-Large" Text="Utente"></asp:Label>  
                </td>  
                <td style="text-align: center">  
                    <asp:Label ID="Label6" runat="server" Font-Size="X-Large" Text="Label"></asp:Label>
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td style="text-align: center">  
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Numero di Persone:"></asp:Label>  
                </td>  
                <td style="text-align: center">  
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td style="text-align: center">  
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Data Prenotazione"></asp:Label>  
                </td>  
                <td style="text-align: center">  
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>
                <td style="text-align: center">  
                    <asp:Label ID="Label8" runat="server" Font-Size="X-Large" Text="Prenotazioni Attive" Visible="False"></asp:Label>
                <td> 
                    <asp:GridView ID="GridView1" runat="server" Visible="False">
                    </asp:GridView>
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td> </td>  
                <td style="text-align: center">  
                    <asp:Button ID="Button1" runat="server" Font-Size="X-Large" OnClick="Button1_Click" Text="Prenota" />
                    <asp:Button ID="Button2" runat="server"  Font-Size="X-Large" Text="Home" OnClick="Button2_Click" />
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td> </td>  
                <td>  
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large"></asp:Label>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>
            </tr>
            <tr>
                <td> </td>
                <td> </td>
                    <td style="text-align: center">
                        &nbsp;</tr>
        </table>  
      
    </div>  
    </form>  
</body>
</html>

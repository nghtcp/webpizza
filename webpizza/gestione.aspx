<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gestione.aspx.cs" Inherits="webpizza.WebForm5" %>

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
    <form id="form2" runat="server">  
    <div>  
      
        <table class="auto-style1">  
            <tr>  
                <td colspan="6" style="text-align: center; vertical-align: top">  
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Gestione Prenotazioni"></asp:Label>
                </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td style="text-align: center">  
                    &nbsp;</td>  
                <td style="text-align: center">  
                    &nbsp;</td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>
                <td style="text-align: center">  
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Prenotazioni Attive"></asp:Label>
                </td> 
                    <td>
                    <asp:GridView ID="GridView2" runat="server">
                    </asp:GridView>
                </td>   
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td> </td>  
                <td style="text-align: center">  
                    &nbsp;</td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td> </td>  
                <td>  
                    &nbsp;</td>  
                <td> </td>  
                <td> </td>  
                <td> </td>
            </tr>
            <tr>
                <td> </td>
                <td> </td>
                    <td style="text-align: center">
                        </td>
             </tr>
        </table>  
      
    </div>  
    </form>  
</body>
</html>

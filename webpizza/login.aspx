﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="webpizza.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">  
    <title></title>  
    <style type="text/css">  
        .auto-style1 {  
            width: 100%;  
        }  
        .auto-style2 {
            height: 23px;
        }
    </style>  
</head>  
<body>
    <form id="form1" runat="server">  
    <div>  
      
        <table class="auto-style1">  
            <tr>  
                <td colspan="6" style="text-align: center; vertical-align: top">  
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Log In "></asp:Label>  
                </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td style="text-align: center">  
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="UserId :"></asp:Label>  
                </td>  
                <td style="text-align: center">  
                    <asp:TextBox ID="TextBox1" Font-Size="X-Large" runat="server"></asp:TextBox>
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td style="text-align: center">  
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Password :"></asp:Label>  
                </td>  
                <td style="text-align: center">  
                    <asp:TextBox ID="TextBox2" Font-Size="X-Large" runat="server"></asp:TextBox>
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td class="auto-style2"> </td>  
                <td class="auto-style2"> </td>  
                <td class="auto-style2"> </td>  
                <td class="auto-style2"> </td>  
                <td class="auto-style2"> </td>  
                <td class="auto-style2"> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td> </td>  
                <td style="text-align: center">  
                    <asp:Button ID="Button1" runat="server" Font-Size="X-Large" OnClick="Button1_Click" Text="Log In" />  
                    <asp:Button ID="Button4" runat="server" Font-Size="X-Large" Text="Home" OnClick="Button4_Click" />
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
                        <asp:Button ID="Button3" runat="server" Font-Size="X-Large" Text="Gestisci" OnClick="Button3_Click" Visible="False" />
                    <asp:Button ID="Button2" runat="server" Font-Size="X-Large" OnClick="Button2_Click" Text="Prenota" Visible="False" />
                    </td>
             </tr>

        </table>  
      
    </div>  
    </form>  
</body>
</html>

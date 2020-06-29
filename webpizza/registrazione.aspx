<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrazione.aspx.cs" Inherits="webpizza.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>RegistrazionePage</title>  
    <link href="css/bootstrap-4.3.1.css" rel="stylesheet"/>
    <style type="text/css">  
        .auto-style1 {  
            width: 100%;  
        }  
    </style>  
</head>  
<body>
        <form id="form1" runat="server">  
            <header>
          <div style="background-image: url(../images/bg_1.jpg")>
            <div class="container">
              <div class="row">
                <div class="col-12">
                  <h1 class="text-center" style="color: white">PIZZA CAMERANA</h1>
                  <p class="text-center" style="color: white">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est, dicta, cupiditate consequatur necessitatibus quos libero eius ipsum qui sit molestiae.</p>
                  <p>&nbsp;</p>
                 </div>
              </div>
            </div>
          </div>
        </header>
    <div>  
      
        <table class="auto-style1">  
            <tr>  
                <td colspan="6" style="text-align: center; vertical-align: top">  
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Registrazione"></asp:Label>  
                </td>  
            </tr>  
        
            <tr>  
                <td> </td>  
                <td style="text-align: center">  
                    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="UserId :"></asp:Label>  
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
                <td> </td>  
                <td style="text-align: center">  
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Email :"></asp:Label>  
                </td>  
                <td style="text-align: center">  
                    <asp:TextBox ID="TextBox3" Font-Size="X-Large" runat="server"></asp:TextBox>
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
                    <asp:Button ID="Button4" runat="server" Font-Size="X-Large" Text="Registra" OnClick="Button4_Click" />
                    <asp:Button ID="Button2" runat="server" Font-Size="X-Large" OnClick="Button2_Click" Text="Prenota" Visible="False" />  
                    <asp:Button ID="Button3" runat="server" Font-Size="X-Large" OnClick="Button3_Click" Text="Home" Visible="False" />  
                </td>
                    <td></td>
                                        <td></td>
                                        <td></td>
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
                                <asp:Label ID="lblSuccessMessage" runat="server" ForeColor="Green" Visible="False" /> </td>
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td> </td>  
                                <td style="text-align: center">  

                                <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Visible="False" /> 
</td>  
                <td> </td>  
                <td> </td>  
                <td> </td>
            </tr>
            <tr>
                <td> </td>
                <td> </td>
                    <td style="text-align: center">
                        &nbsp;</td>
             </tr>
                </table>


    </div>
        </form>
</body>
</html>

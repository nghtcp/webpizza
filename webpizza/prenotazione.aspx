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
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" OnRowCancelingEdit="GridView2_RowCancelingEdit" OnRowCommand="GridView2_RowCommand" OnRowDeleting="GridView2_RowDeleting" OnRowEditing="GridView2_RowEditing" OnRowUpdating="GridView2_RowUpdating" ShowFooter="True" ShowHeaderWhenEmpty="True">
                <%-- Theme Properties --%>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                        <Columns>
                            <asp:TemplateField HeaderText="id" Visible="False">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("id") %>' />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtid" runat="server" Text='<%# Eval("id") %>' />
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtid0" runat="server" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Uid">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("uid") %>' />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtuid" runat="server" Text='<%# Eval("uid") %>' />
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtuidFooter" runat="server" visible="false"/>
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Numero Posti">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("numpers") %>' />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtnumpers" runat="server" Text='<%# Eval("numpers") %>' />
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtnumpersFooter" visible="false" runat="server" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="datap">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("datap") %>' />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtdatap" runat="server" Text='<%# Eval("datap") %>' />
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <asp:TextBox ID="txtdatapFooter" visible="false" runat="server" />
                                </FooterTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <%-- %<asp:ImageButton runat="server" CommandName="Edit" Height="20px" ImageUrl="~/Images/edit.png" ToolTip="Edit" Width="20px" />--%>
                                    <asp:ImageButton runat="server" CommandName="Delete" Height="20px" ImageUrl="~/Images/delete.png" ToolTip="Delete" Width="20px" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:ImageButton runat="server" CommandName="Update" Height="20px" ImageUrl="~/Images/save.png" ToolTip="Update" Width="20px" />
                                    <asp:ImageButton runat="server" CommandName="Cancel" Height="20px" ImageUrl="~/Images/cancel.png" ToolTip="Cancel" Width="20px" />
                                </EditItemTemplate>
                                <FooterTemplate>
                                    <%-- <asp:ImageButton runat="server" CommandName="AddNew" Height="20px" ImageUrl="~/Images/addnew.png" ToolTip="Add New" Width="20px" />--%>
                                </FooterTemplate>
                            </asp:TemplateField>
                        </Columns>
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
                                <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" /> </td>
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td> </td>  
                                <td style="text-align: center">  

                                <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" /> 
</td>  
                <td> </td>  
                <td> </td>  
                <td> </td>
            </tr>
        </table>  
      
    </div>  
    </form>  
</body>
</html>

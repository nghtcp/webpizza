<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login2.aspx.cs" Inherits="webpizza.WebForm6" %>

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
    <form id="form2" runat="server">  
    <div>  
      
        <table class="auto-style1">  
            <tr>  
                <td colspan="6" style="text-align: center; vertical-align: top">  
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Gestione Prenotazioni"></asp:Label>
                </td>  
            </tr>  
            <tr>  
                <td class="auto-style2"> </td>  
                <td style="text-align: center" class="auto-style2">  
                    </td>  
                <td style="text-align: center" class="auto-style2">  
                    </td>  
                <td class="auto-style2"> </td>  
                <td class="auto-style2"> </td>  
                <td class="auto-style2"> </td>  
            </tr>  
            <tr>  
                <td> </td>
                <td style="text-align: center">  
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Prenotazioni Attive"></asp:Label>
                </td> 
                    <td>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" ShowFooter="True" DataKeyNames="id"
                ShowHeaderWhenEmpty="True"

                OnRowCommand="GridView2_RowCommand" OnRowEditing="GridView2_RowEditing" OnRowCancelingEdit="GridView2_RowCancelingEdit"
                OnRowUpdating="GridView2_RowUpdating" OnRowDeleting="GridView2_RowDeleting"

                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
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
                            <asp:Label Text='<%# Eval("id") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtid" Text='<%# Eval("id") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtid" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>



                    <asp:TemplateField HeaderText="Uid">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("uid") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtuid" Text='<%# Eval("uid") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtuidFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Numero Posti">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("numpers") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtnumpers" Text='<%# Eval("numpers") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtnumpersFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="datap">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("datap") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtdatap" Text='<%# Eval("datap") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtdatapFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="~/Images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/Images/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="~/Images/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/Images/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ImageUrl="~/Images/addnew.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px"/>
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
                <td> </td>  
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
            <tr>
                <td> </td>
                <td> </td>
                    <td style="text-align: center">
                        </td>
             </tr>
                        <tr>
                <td> </td>
                <td> </td>
                    <td style="text-align: center">
                        <asp:Button ID="Button1" runat="server" Font-Size="X-Large" Text="Home" OnClick="Button1_Click" />
                        </td>
             </tr>
        </table>  
      
    </div>  
    </form>  
</body>
</html>

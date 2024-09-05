<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="project1.view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Page</title>
    <link rel="stylesheet" href="StyleSheet4.css" />
    
    <style type="text/css">
        .auto-style7 {
            width: 100%;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" Height="494px" RepeatDirection="Horizontal" Width="880px">
                            <ItemTemplate>
                                <div class="auto-style3">
                                    <br />
                                    <table border="2" class="auto-style7" style="color: #FFFFFF; background-color: #000000">
                                        <tr>
                                            <td>id:
                                                <asp:Label ID="idLabel0" runat="server" Text='<%# Eval("id") %>' />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>place:
                                                <asp:Label ID="placeLabel0" runat="server" Text='<%# Eval("place") %>' />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>trips:
                                                <asp:Label ID="tripsLabel0" runat="server" Text='<%# Eval("trips") %>' />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>packages:
                                                <asp:Label ID="packagesLabel0" runat="server" Text='<%# Eval("packages") %>' />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>despiration:
                                                <asp:Label ID="desLabel0" runat="server" Text='<%# Eval("des") %>' />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>image:
                                                <br />
                                                <asp:Image ID="Image2" runat="server" Height="415px" ImageUrl='<%# Eval("image") %>' Width="715px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>price:
                                                <asp:Label ID="priceLabel0" runat="server" Text='<%# Eval("price") %>' />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                    <br />
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT * FROM [home] WHERE ([id] = @id)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

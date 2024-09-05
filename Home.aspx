<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="project1.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home page</title>
    <link rel="stylesheet"  href="StyleSheet3.css" />
    <style type="text/css">
        .auto-style4 {
            height: 1405px;
        }
        .auto-style5 {
            height: 26px;
            width: 10px;
        }
        .auto-style6 {
            height: 26px;
            text-align: center;
        }
        .auto-style7 {
            text-align: left;
            height: 91px;
        }
        .auto-style8 {
            height: 26px;
            text-align: right;
        }
        .auto-style9 {
            height: 26px;
            text-align: center;
            width: 10px;
        }
        .auto-style10 {
            text-align: left;
            width: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>
            <table align="center" class="auto-style1">
                <tr>
                    <td class="auto-style8">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout" BackColor="Red" ForeColor="White" />
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style7">
                        <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="25px" ForeColor="#284E98" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal" StaticSubMenuIndent="10px">
                            <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                            <DynamicMenuStyle BackColor="#B5C7DE" />
                            <DynamicSelectedStyle BackColor="#507CD1" />
                            <Items>
                                <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
                                <asp:MenuItem Text="Trips" Value="Trips">
                                    <asp:MenuItem Text="domestic " Value="domestic " NavigateUrl="~/Home.aspx?tr=domestic" ></asp:MenuItem>
                                    <asp:MenuItem Text=" International " Value="International " NavigateUrl="~/Home.aspx?tr= International "></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem Text="Packages" Value="Packages">
                                    <asp:MenuItem Text="honeymoon" Value="Honeymoon" NavigateUrl="~/Home.aspx?pr=honeymoon"></asp:MenuItem>
                                    <asp:MenuItem Text="pilgrimage" Value="pilgrimage" NavigateUrl="~/Home.aspx?pr=pilgrimage"></asp:MenuItem>
                                </asp:MenuItem>
                                <asp:MenuItem Text="Contact us" Value="Contact us" NavigateUrl="href=&quot;Contact.aspx&quot;"></asp:MenuItem>
                            </Items>
                            <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                            <StaticMenuItemStyle HorizontalPadding="70px" ItemSpacing="80px" VerticalPadding="2px" />
                            <StaticMenuStyle HorizontalPadding="10px" VerticalPadding="15px" />
                            <StaticSelectedStyle BackColor="#507CD1" HorizontalPadding="15px" ItemSpacing="25px" />
                        </asp:Menu>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">ALL</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>

                                <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/XMLFile1.xml" Height="500px" Width="1000px" />
                                
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick">
                                </asp:AsyncPostBackTrigger>
                            </Triggers>
                        </asp:UpdatePanel>
                        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick1">
                        </asp:Timer>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT * FROM [home]"></asp:SqlDataSource>
                        <asp:DataList ID="DataList1" runat="server" BorderStyle="Groove" DataKeyField="id" RepeatColumns="3" RepeatDirection="Horizontal" BackColor="Black" BorderColor="White" CellPadding="8" CellSpacing="9" ForeColor="Black" GridLines="Vertical" OnItemCommand="DataList1_ItemCommand">
                            <ItemTemplate>
                                <table class="auto-style2" style="font-family: Arial, Helvetica, sans-serif; color: #FFFFFF; background-color: #000000" border="3" dir="ltr">
                                    <tr>
                                        <td class="auto-style3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">place:
                                            <asp:Label ID="placeLabel0" runat="server" Text='<%# Eval("place") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">trips:
                                            <asp:Label ID="tripsLabel0" runat="server" Text='<%# Eval("trips") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">packages:
                                            <asp:Label ID="packagesLabel0" runat="server" Text='<%# Eval("packages") %>' />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">days:
                                            <asp:Label ID="daysLabel0" runat="server" Text='<%# Eval("days") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">image</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">
                                            <asp:Image ID="Image1" runat="server" Height="151px" ImageUrl='<%# Eval("image") %>' Width="296px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">price:
                                            <asp:Label ID="priceLabel0" runat="server" Text='<%# Eval("price") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">
                                            <asp:Button ID="Button1" runat="server" Text="view" CommandName="view" CommandArgument='<%# Eval("id") %>' OnClick="Button1_Click" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="61px" ImageUrl="~/image1/buy.png" Width="188px" />
                                        </td>
                                    </tr>
                                </table>
                                <br />
<br />
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT * FROM [home] WHERE ([trips] = @trips)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="trips" QueryStringField="tr" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT * FROM [home] WHERE ([packages] = @packages)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="packages" QueryStringField="pr" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT * FROM [home]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                </table>
            <footer class="footer">
            <div class="footer-content">
                <div class="footer-section about">
                    <h2>About Us</h2>
                    <p>We offer a wide range of Titan watch&#39;s. Our mission is to provide quality products with excellent customer service</p>
                </div>
                <div class="footer-section links">
                    <h2>Quick Links</h2>
                    <ul>
                        <li><a href="Home.aspx">Home</a></li>
                        <li><a href="About.aspx">About</a></li>
                        <li><a href="Contact.aspx">Contact</a></li>
                        <li><a href="Privacy.aspx">Privacy Policy</a></li>

                    </ul>
                </div>
                <div class="footer-section contact">
                    <h2>Contact Us</h2>
                    <p>Email: info@titanwatch.com</p>
                    <p>Phone: +123-456-7890</p>
                    <p>Address: 123 Shoe Street, Titan City, TS 12345</p>
                </div>
            </div>
            <div class="footer-bottom">
                &copy; 2024 TitanWatch | Designed by Titan Watch Team
            </div>
        </footer>
        </div>
    </form>
</body>
</html>

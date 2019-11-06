<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="phonebook.aspx.cs" Inherits="gridview2.phonebook" %>

<%@ Register assembly="DevExpress.Web.v18.2, Version=18.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 118px;
        }
        .auto-style3 {
            width: 820px;
        }
        .auto-style4 {
            width: 118px;
            height: 21px;
        }
        .auto-style5 {
            width: 820px;
            height: 21px;
            margin-left: 120px;
        }
        .auto-style6 {
            height: 21px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="Your Phone Book">
                    </dx:ASPxLabel>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:davidConnectionString %>" SelectCommand="SELECT * FROM [phonebk]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:GridView ID="GVw" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TEL" DataSourceID="SqlDataSource1" Width="559px">
                        <Columns>
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="TEL" HeaderText="TEL" ReadOnly="True" SortExpression="TEL" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

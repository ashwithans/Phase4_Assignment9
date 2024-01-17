<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Player.aspx.cs" Inherits="WebFormPlayers.Player" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
             <td><h2 class ="text-center"> Players </h2></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="gvPlayers" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="PlayerId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="PlayerId" HeaderText="PlayerId" ReadOnly="True" SortExpression="PlayerId" />
                        <asp:BoundField DataField="PlayerName" HeaderText="PlayerName" SortExpression="PlayerName" />
                        <asp:BoundField DataField="PlayerPosition" HeaderText="PlayerPosition" SortExpression="PlayerPosition" />
                        <asp:BoundField DataField="PlayerAge" HeaderText="PlayerAge" SortExpression="PlayerAge" />
                        <asp:BoundField DataField="PlayerTeam" HeaderText="PlayerTeam" SortExpression="PlayerTeam" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:playersdbasgnmntday09ConnectionString %>" DeleteCommand="DELETE FROM [Player] WHERE [PlayerId] = @original_PlayerId AND [PlayerName] = @original_PlayerName AND [PlayerPosition] = @original_PlayerPosition AND [PlayerAge] = @original_PlayerAge AND [PlayerTeam] = @original_PlayerTeam" InsertCommand="INSERT INTO [Player] ([PlayerId], [PlayerName], [PlayerPosition], [PlayerAge], [PlayerTeam]) VALUES (@PlayerId, @PlayerName, @PlayerPosition, @PlayerAge, @PlayerTeam)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:playersdbasgnmntday09ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Player]" UpdateCommand="UPDATE [Player] SET [PlayerName] = @PlayerName, [PlayerPosition] = @PlayerPosition, [PlayerAge] = @PlayerAge, [PlayerTeam] = @PlayerTeam WHERE [PlayerId] = @original_PlayerId AND [PlayerName] = @original_PlayerName AND [PlayerPosition] = @original_PlayerPosition AND [PlayerAge] = @original_PlayerAge AND [PlayerTeam] = @original_PlayerTeam">
                    <DeleteParameters>
                        <asp:Parameter Name="original_PlayerId" Type="Int32" />
                        <asp:Parameter Name="original_PlayerName" Type="String" />
                        <asp:Parameter Name="original_PlayerPosition" Type="String" />
                        <asp:Parameter Name="original_PlayerAge" Type="Int32" />
                        <asp:Parameter Name="original_PlayerTeam" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="PlayerId" Type="Int32" />
                        <asp:Parameter Name="PlayerName" Type="String" />
                        <asp:Parameter Name="PlayerPosition" Type="String" />
                        <asp:Parameter Name="PlayerAge" Type="Int32" />
                        <asp:Parameter Name="PlayerTeam" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PlayerName" Type="String" />
                        <asp:Parameter Name="PlayerPosition" Type="String" />
                        <asp:Parameter Name="PlayerAge" Type="Int32" />
                        <asp:Parameter Name="PlayerTeam" Type="String" />
                        <asp:Parameter Name="original_PlayerId" Type="Int32" />
                        <asp:Parameter Name="original_PlayerName" Type="String" />
                        <asp:Parameter Name="original_PlayerPosition" Type="String" />
                        <asp:Parameter Name="original_PlayerAge" Type="Int32" />
                        <asp:Parameter Name="original_PlayerTeam" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

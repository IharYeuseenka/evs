<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="BD, App_Web_spqymmd4" theme="Kursovoi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:GubaConnectionString %>" 
        DeleteCommand="DELETE FROM [Persone] WHERE [PersonID] = @PersonID" 
        InsertCommand="INSERT INTO [Persone] ([LastName], [FirstName], [FatherName]) VALUES (@LastName, @FirstName, @FatherName)" 
        SelectCommand="SELECT * FROM [Persone]" 
        UpdateCommand="UPDATE [Persone] SET [LastName] = @LastName, [FirstName] = @FirstName, [FatherName] = @FatherName WHERE [PersonID] = @PersonID">
        <DeleteParameters>
            <asp:Parameter Name="PersonID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="FatherName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="FatherName" Type="String" />
            <asp:Parameter Name="PersonID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PersonID" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="PersonID" HeaderText="PersonID" 
                InsertVisible="False" ReadOnly="True" SortExpression="PersonID" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                SortExpression="LastName" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="FatherName" HeaderText="FatherName" 
                SortExpression="FatherName" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
</asp:Content>


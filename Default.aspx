<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <h1>Membership introduced in asp.net 2.0</h1>
        <div class="users">
            <h2>users</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId"
            DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="ApplicationId" HeaderText="ApplicationId" SortExpression="ApplicationId" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="LoweredUserName" HeaderText="LoweredUserName" SortExpression="LoweredUserName" />
                <asp:BoundField DataField="MobileAlias" HeaderText="MobileAlias" SortExpression="MobileAlias" />
                <asp:CheckBoxField DataField="IsAnonymous" HeaderText="IsAnonymous" SortExpression="IsAnonymous" />
                <asp:BoundField DataField="LastActivityDate" HeaderText="LastActivityDate" SortExpression="LastActivityDate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LocalSqlServer %>"
            DeleteCommand="DELETE FROM [aspnet_Users] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [aspnet_Users] ([ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate]) VALUES (@ApplicationId, @UserId, @UserName, @LoweredUserName, @MobileAlias, @IsAnonymous, @LastActivityDate)"
            ProviderName="<%$ ConnectionStrings:LocalSqlServer.ProviderName %>"
            SelectCommand="SELECT [ApplicationId], [UserId], [UserName], [LoweredUserName], [MobileAlias], [IsAnonymous], [LastActivityDate] FROM [aspnet_Users]"
            UpdateCommand="UPDATE [aspnet_Users] SET [ApplicationId] = @ApplicationId, [UserName] = @UserName, [LoweredUserName] = @LoweredUserName, [MobileAlias] = @MobileAlias, [IsAnonymous] = @IsAnonymous, [LastActivityDate] = @LastActivityDate WHERE [UserId] = @UserId">
            <DeleteParameters>
                <asp:Parameter Name="UserId" Type="Object" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ApplicationId" Type="Object" />
                <asp:Parameter Name="UserId" Type="Object" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="LoweredUserName" Type="String" />
                <asp:Parameter Name="MobileAlias" Type="String" />
                <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                <asp:Parameter Name="LastActivityDate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ApplicationId" Type="Object" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="LoweredUserName" Type="String" />
                <asp:Parameter Name="MobileAlias" Type="String" />
                <asp:Parameter Name="IsAnonymous" Type="Boolean" />
                <asp:Parameter Name="LastActivityDate" Type="DateTime" />
                <asp:Parameter Name="UserId" Type="Object" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
        <div class="roles">
            <h2>Roles</h2>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="RoleId"
                DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="ApplicationId" HeaderText="ApplicationId" SortExpression="ApplicationId" />
                    <asp:BoundField DataField="RoleId" HeaderText="RoleId" ReadOnly="True" SortExpression="RoleId" />
                    <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName" />
                    <asp:BoundField DataField="LoweredRoleName" HeaderText="LoweredRoleName" SortExpression="LoweredRoleName" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LocalSqlServer %>"
                DeleteCommand="DELETE FROM [aspnet_Roles] WHERE [RoleId] = @RoleId" InsertCommand="INSERT INTO [aspnet_Roles] ([ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description]) VALUES (@ApplicationId, @RoleId, @RoleName, @LoweredRoleName, @Description)"
                ProviderName="<%$ ConnectionStrings:LocalSqlServer.ProviderName %>"
                SelectCommand="SELECT [ApplicationId], [RoleId], [RoleName], [LoweredRoleName], [Description] FROM [aspnet_Roles]"
                UpdateCommand="UPDATE [aspnet_Roles] SET [ApplicationId] = @ApplicationId, [RoleName] = @RoleName, [LoweredRoleName] = @LoweredRoleName, [Description] = @Description WHERE [RoleId] = @RoleId">
                <DeleteParameters>
                    <asp:Parameter Name="RoleId" Type="Object" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ApplicationId" Type="Object" />
                    <asp:Parameter Name="RoleId" Type="Object" />
                    <asp:Parameter Name="RoleName" Type="String" />
                    <asp:Parameter Name="LoweredRoleName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ApplicationId" Type="Object" />
                    <asp:Parameter Name="RoleName" Type="String" />
                    <asp:Parameter Name="LoweredRoleName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="RoleId" Type="Object" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <p>
         Will genrate following tables:
     </p>
     <img src="images/erd.png"/>
    </div>
    </form>
</body>
</html>

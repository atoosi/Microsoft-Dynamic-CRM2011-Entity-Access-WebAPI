<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="EntityList.List" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Power Search</title>

   
</head>

    
<body>
    <form id="form1" runat="server">
     <div>
         <fieldset>
     <h2 >                 POWER SEARCH</h2>
        <asp:Label ID="Label1" runat="server" Text="Input Your Keyword: "></asp:Label>
    
        <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>
         

                  <p>
    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
          
  </fieldset>
  

             <p>
        <asp:DataGrid id="DataG2" runat="server"  AutoGenerateColumns="false">
            <Columns>

                
                <asp:TemplateColumn>
													<HeaderStyle HorizontalAlign="Center" Width="50px"></HeaderStyle>
													<ItemStyle HorizontalAlign="Center"></ItemStyle>
													<HeaderTemplate>
														<asp:Label  Visible="True" Runat="server" Text="Entity Name"></asp:Label>
													</HeaderTemplate>
													<ItemTemplate>
                                                        <asp:Label  Visible="True" Runat="server" Text="Account"></asp:Label>
                                                        </ItemTemplate>
												</asp:TemplateColumn>

                
                 <asp:TemplateColumn  HeaderText="Name">
													<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
													<ItemStyle HorizontalAlign="Left"></ItemStyle>
													<HeaderTemplate>
														<asp:Label  Visible="True" Runat="server" Text="Full Name"></asp:Label>
													</HeaderTemplate>
													<ItemTemplate>
														<asp:Label  runat="server" CssClass="normal-text-small" Text='<%# DataBinder.Eval(Container, "DataItem.[name]")%>' />
													</ItemTemplate>
												</asp:TemplateColumn>


                  <asp:TemplateColumn  HeaderText="Phone">
													<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
													<ItemStyle HorizontalAlign="Left"></ItemStyle>
													<HeaderTemplate>
														<asp:Label  Visible="True" Runat="server" Text="Phone"></asp:Label>
													</HeaderTemplate>
													<ItemTemplate>
														<asp:Label  runat="server" CssClass="normal-text-small" Text='<%# DataBinder.Eval(Container, "DataItem.[telephone1]")%>' />
													</ItemTemplate>
												</asp:TemplateColumn>

                
                   <asp:TemplateColumn  HeaderText="Email">
													<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
													<ItemStyle HorizontalAlign="Left"></ItemStyle>
													<HeaderTemplate>
														<asp:Label  Visible="True" Runat="server" Text="Email"></asp:Label>
													</HeaderTemplate>
													<ItemTemplate>
														<asp:Label  runat="server" CssClass="normal-text-small" Text='<%#  DataBinder.Eval(Container, "DataItem.[emailaddress1]").ToString() == string.Empty ? string.Empty :DataBinder.Eval(Container, "DataItem.[emailaddress1]")%>' />
													</ItemTemplate>
												</asp:TemplateColumn>

            	<asp:TemplateColumn>
													<HeaderStyle HorizontalAlign="Center" Width="50px"></HeaderStyle>
													<ItemStyle HorizontalAlign="Center"></ItemStyle>
													<HeaderTemplate>
		<asp:Label  Visible="True" Runat="server" Text="Link"></asp:Label>
													</HeaderTemplate>
													<ItemTemplate>
														<asp:HyperLink id="link" runat="server" CssClass="normal-text-small"  Text="Link" Target="_blank" NavigateUrl='<%# DataBinder.Eval(Container, "DataItem.[accountid]").ToString() == string.Empty ? string.Empty : String.Format("{0}/{1}/userdefined/edit.aspx?etc=1&amp;id={2}", "https://internalcrm.questinc.com/qcrm", "", DataBinder.Eval(Container, "DataItem.[accountid]")) %>'></asp:HyperLink>
													</ItemTemplate>
												</asp:TemplateColumn>
               
												
                </Columns>
        </asp:DataGrid>
   
                     <br />

            
        <asp:DataGrid id="DataG3" runat="server"  AutoGenerateColumns="false">
            <Columns>
            	

                   <asp:TemplateColumn>
													<HeaderStyle HorizontalAlign="Center" Width="50px"></HeaderStyle>
													<ItemStyle HorizontalAlign="Center"></ItemStyle>
													<HeaderTemplate>
															<asp:Label  Visible="True" Runat="server" Text="Entity Name"></asp:Label>
													</HeaderTemplate>
													<ItemTemplate>
                                                        <asp:Label  Visible="True" Runat="server" Text="Contact"></asp:Label>

													</ItemTemplate>
												</asp:TemplateColumn>

                 <asp:TemplateColumn  HeaderText="Full Name">
													<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
													<ItemStyle HorizontalAlign="Left"></ItemStyle>
													<HeaderTemplate>
														<asp:Label  Visible="True" Runat="server" Text="Full Name"></asp:Label>
													</HeaderTemplate>
													<ItemTemplate>
														<asp:Label  runat="server" CssClass="normal-text-small" Text='<%# DataBinder.Eval(Container, "DataItem.[fullname]")%>' />
													</ItemTemplate>
												</asp:TemplateColumn>
                <asp:TemplateColumn  HeaderText="Phone">
													<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
													<ItemStyle HorizontalAlign="Left"></ItemStyle>
													<HeaderTemplate>
														<asp:Label  Visible="True" Runat="server" Text="Phone"></asp:Label>
													</HeaderTemplate>
													<ItemTemplate>
														<asp:Label runat="server" CssClass="normal-text-small" Text='<%# string.IsNullOrEmpty(DataBinder.Eval(Container, "DataItem.[telephone1]").ToString()) ? " " :DataBinder.Eval(Container, "DataItem.[telephone1]").ToString()%>' />
													</ItemTemplate>
												</asp:TemplateColumn>

                   <asp:TemplateColumn  HeaderText="Email">
													<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
													<ItemStyle HorizontalAlign="Left"></ItemStyle>
													<HeaderTemplate>
														<asp:Label  Visible="True" Runat="server" Text="Email"></asp:Label>
													</HeaderTemplate>
													<ItemTemplate>
														<asp:Label  runat="server" CssClass="normal-text-small" Text='<%#  DataBinder.Eval(Container, "DataItem.[emailaddress1]").ToString() == string.Empty ? string.Empty :DataBinder.Eval(Container, "DataItem.[emailaddress1]")%>' />
													</ItemTemplate>
												</asp:TemplateColumn>
              

            <asp:TemplateColumn>
													<HeaderStyle HorizontalAlign="Center" Width="50px"></HeaderStyle>
													<ItemStyle HorizontalAlign="Center"></ItemStyle>
													<HeaderTemplate>
															<asp:Label  Visible="True" Runat="server" Text="Link"></asp:Label>	

													</HeaderTemplate>
													<ItemTemplate>
														<asp:HyperLink id="link" runat="server" CssClass="normal-text-small" Target="_blank" Text="Link" NavigateUrl='<%# DataBinder.Eval(Container, "DataItem.[contactid]").ToString() == string.Empty ? string.Empty : String.Format("{0}/{1}/userdefined/edit.aspx?etc=2&amp;id={2}", "https://internalcrm.questinc.com/qcrm", "", DataBinder.Eval(Container, "DataItem.[contactid]")) %>'></asp:HyperLink>
													</ItemTemplate>
												</asp:TemplateColumn>
                  </Columns>
        </asp:DataGrid>
   
                 <br />


               <asp:DataGrid id="DataG1" runat="server"  AutoGenerateColumns="false">
            <Columns>
            

                <asp:TemplateColumn>
													<HeaderStyle HorizontalAlign="Center" Width="50px"></HeaderStyle>
													<ItemStyle HorizontalAlign="Center"></ItemStyle>
													<HeaderTemplate>
														<asp:Label  Visible="True" Runat="server" Text="Entity Name"></asp:Label>
													</HeaderTemplate>
													<ItemTemplate>
                                                        <asp:Label  Visible="True" Runat="server" Text="Lead"></asp:Label>
                                                        </ItemTemplate>
												</asp:TemplateColumn>


                 <asp:TemplateColumn  HeaderText="Full Name">
													<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
													<ItemStyle HorizontalAlign="Left"></ItemStyle>
													<HeaderTemplate>
														<asp:Label  Visible="True" Runat="server" Text="Full Name"></asp:Label>
													</HeaderTemplate>
													<ItemTemplate>
														<asp:Label  runat="server" CssClass="normal-text-small" Text='<%# DataBinder.Eval(Container, "DataItem.[fullname]")%>' />
													</ItemTemplate>
												</asp:TemplateColumn>

                 <asp:TemplateColumn  HeaderText="Company Name">
													<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
													<ItemStyle HorizontalAlign="Left"></ItemStyle>
													<HeaderTemplate>
														<asp:Label  Visible="True" Runat="server" Text="Company Name"></asp:Label>
													</HeaderTemplate>
													<ItemTemplate>
														<asp:Label  runat="server" CssClass="normal-text-small" Text='<%# DataBinder.Eval(Container, "DataItem.[companyname]")%>' />
													</ItemTemplate>
												</asp:TemplateColumn>

                       <asp:TemplateColumn  HeaderText="Phone">
													<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
													<ItemStyle HorizontalAlign="Left"></ItemStyle>
													<HeaderTemplate>
														<asp:Label  Visible="True" Runat="server" Text="Phone"></asp:Label>
													</HeaderTemplate>
													<ItemTemplate>
														<asp:Label  runat="server" CssClass="normal-text-small" Text='<%# DataBinder.Eval(Container, "DataItem.[telephone1]")%>' />
													</ItemTemplate>
												</asp:TemplateColumn>

                
                   <asp:TemplateColumn  HeaderText="Email">
													<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
													<ItemStyle HorizontalAlign="Left"></ItemStyle>
													<HeaderTemplate>
														<asp:Label  Visible="True" Runat="server" Text="Email"></asp:Label>
													</HeaderTemplate>
													<ItemTemplate>
														<asp:Label  runat="server" CssClass="normal-text-small" Text='<%#  DataBinder.Eval(Container, "DataItem.[emailaddress1]").ToString() == string.Empty ? string.Empty :DataBinder.Eval(Container, "DataItem.[emailaddress1]")%>' />
													</ItemTemplate>
												</asp:TemplateColumn>



                                                        	<asp:TemplateColumn>
													<HeaderStyle HorizontalAlign="Center" Width="50px"></HeaderStyle>
													<ItemStyle HorizontalAlign="Center"></ItemStyle>
													<HeaderTemplate>
													   <asp:Label  Visible="True" Runat="server" Text="Link"></asp:Label>
													</HeaderTemplate>
													<ItemTemplate>
														<asp:HyperLink id="link" runat="server" CssClass="normal-text-small"  Text="Link" Target="_blank" NavigateUrl='<%# DataBinder.Eval(Container, "DataItem.[leadid]").ToString() == string.Empty ? string.Empty : String.Format("{0}/{1}/userdefined/edit.aspx?etc=4&amp;id={2}", "https://internalcrm.questinc.com/qcrm", "", DataBinder.Eval(Container, "DataItem.[leadid]")) %>'></asp:HyperLink>
													</ItemTemplate>
												</asp:TemplateColumn>
                </Columns>
        </asp:DataGrid>
   
    </div>
    </form>
</body>
</html>

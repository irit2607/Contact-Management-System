<%@ Page Language="C#" Debug = "true" AutoEventWireup= "true" Codefile="allDatabase.aspx.cs" Inherits="datafetch._Default"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Database</title>
    <style type="text/css">
        .style1
        {
            width: 141px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;
    
  
   
        
    <asp:GridView ID = "GridView1" runat="server" AutoGenerateColumns ="false" 
     Height="443px" Width="907px" style="margin-left: 27px; margin-top: 11px" 
    >
    <Columns>
    


<asp:TemplateField HeaderText="Sr.No.">
      <ItemTemplate>
      <asp:LinkButton ID="Link1" runat="server" Text='<%#Eval("Sr_no")%>' PostBackUrl='<%# "http://localhost/telephone/update.aspx?Sr.No.= " + Eval("Sr_no") %>'></asp:LinkButton>
      </ItemTemplate>
     <ItemStyle Width="150px"></ItemStyle>
</asp:TemplateField>
    
    
    <asp:BoundField 
         ItemStyle-Width=" 150px" DataField="officer_name" HeaderText="Name" >
         <ItemStyle Width="150px"></ItemStyle>
    </asp:BoundField>
    
    <asp:BoundField 
         ItemStyle-Width=" 150px" DataField="designation" HeaderText="Designation" >
         <ItemStyle Width="150px"></ItemStyle>
    </asp:BoundField>
    
     <asp:BoundField 
         ItemStyle-Width=" 150px" DataField="dept" HeaderText="Department" >
         <ItemStyle Width="150px"></ItemStyle>
    </asp:BoundField>
    
    
    <asp:BoundField 
         ItemStyle-Width=" 150px" DataField="ext_no" HeaderText="Ext-no." >
         <ItemStyle Width="150px"></ItemStyle>
    </asp:BoundField>
    
    <asp:BoundField 
         ItemStyle-Width=" 150px" DataField="std_no" HeaderText="Std-no." >
         <ItemStyle Width="150px"></ItemStyle>
    </asp:BoundField>
    
    <asp:BoundField 
         ItemStyle-Width=" 150px" DataField="mobile_no" HeaderText="Mobile no." >
         <ItemStyle Width="150px"></ItemStyle>
    </asp:BoundField>
    
    <asp:BoundField 
         ItemStyle-Width=" 150px" DataField="room_no" HeaderText="Room no." >
         <ItemStyle Width="150px"></ItemStyle>
    </asp:BoundField>
    
    <asp:BoundField 
         ItemStyle-Width=" 150px" DataField="address" HeaderText="Address" >
         <ItemStyle Width="150px"></ItemStyle>
    </asp:BoundField>
    
    <asp:BoundField 
         ItemStyle-Width=" 150px" DataField="senior_no" HeaderText="Senior No." >
         <ItemStyle Width="150px"></ItemStyle>
    </asp:BoundField>
    
    
    </Columns>
    </asp:GridView>
    
    </div>
    
   
        
   
    
    </form>
</body>
</html>

<%@ Page Language="C#"  Debug = "true" AutoEventWireup= "true" Codefile="UpdateAll.aspx.cs" Inherits="update._Default"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
        
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Update</title>
</head>
<body>
     <form id="form1" runat="server">
     
        <p>
           &nbsp;<asp:label id="label8" runat="server" text="Sr.No."></asp:label>
           <asp:textbox id="TextBox7" runat="server" height="38px" 
        style="margin-left: 131px" width="241px"></asp:textbox>
         </p>
         
       <p>
           &nbsp;<asp:Label ID="Label1" runat="server" Text="NAME"></asp:Label>
           <asp:TextBox ID="TextBox1" runat="server" Height="38px" 
        style="margin-left: 127px" Width="246px"></asp:TextBox>
       </p>
        
        <p> 
           &nbsp;<asp:Label ID="Label2" runat="server" Text="DESIGNATION"></asp:Label>
           <asp:DropDownList ID="DropDownList1" runat="server" DataValueField="designation"
           Height="38px" Width="246px" style="margin-left: 68px">
            <asp:ListItem>Sc-G</asp:ListItem>
            <asp:ListItem>Sc-F</asp:ListItem>
            <asp:ListItem>Sc-E</asp:ListItem>
            <asp:ListItem>Sc-D</asp:ListItem>
            <asp:ListItem>Sc-C</asp:ListItem>
            <asp:ListItem>Sc-B</asp:ListItem>
            <asp:ListItem>SSO</asp:ListItem>
            <asp:ListItem>O-I-C MI Room</asp:ListItem>
            <asp:ListItem>Lt . Cdr</asp:ListItem>
            <asp:ListItem>TO-D</asp:ListItem>
            <asp:ListItem>TO-C</asp:ListItem>
            <asp:ListItem>TO-B</asp:ListItem>
            <asp:ListItem>TO-A</asp:ListItem>
            <asp:ListItem>TO</asp:ListItem>
            <asp:ListItem>STA-B</asp:ListItem>
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>TA-B</asp:ListItem>
            <asp:ListItem>Tech-C</asp:ListItem>
            <asp:ListItem>Tech-B</asp:ListItem>
            <asp:ListItem>Tech-A</asp:ListItem>
            <asp:ListItem>SAcO-I</asp:ListItem>
            <asp:ListItem>SAO-I</asp:ListItem>
            <asp:ListItem>Stores officer</asp:ListItem>
            <asp:ListItem>SAO-ll</asp:ListItem>
            <asp:ListItem>Adm. offr</asp:ListItem>
            <asp:ListItem>Steno Gde &#39;l&#39;</asp:ListItem>
            <asp:ListItem>Sr. Admin. Asstt</asp:ListItem>
            <asp:ListItem>Sr.Store Asstt.</asp:ListItem>
            <asp:ListItem>Adm. Asstt-B</asp:ListItem>
            <asp:ListItem>Vech. Opr. &#39;C&#39;</asp:ListItem>
            <asp:ListItem>ALS &#39;l&#39;</asp:ListItem>
            <asp:ListItem>ALS &#39;ll&quot;</asp:ListItem>
            <asp:ListItem>O.Attdt</asp:ListItem>
        
    </asp:DropDownList>
    
    </p>
    
    <p> 
       <br /> 
           &nbsp;<asp:Label ID="Label11" runat="server" Text="DEPARTMENT"></asp:Label>
           <asp:DropDownList ID="DropDownList2" runat="server" DataValueField="dept"
           Height="36px" Width="246px" style="margin-left: 71px">
            <asp:ListItem>Computer</asp:ListItem>
            <asp:ListItem>Polymer</asp:ListItem>
            <asp:ListItem>Electronics</asp:ListItem>
            <asp:ListItem>Biology</asp:ListItem>
            <asp:ListItem>Chemicla</asp:ListItem>        
        
    </asp:DropDownList>
    
    <p />
  
        
       <p> 
            &nbsp;<asp:Label ID="Label3" runat="server" Text="EXT NO."></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Height="38px" 
             style="margin-left: 112px" Width="246px"></asp:TextBox>
        </p>
        
  
        <p>
            &nbsp;<asp:Label ID="Label4" runat="server" Text="STD NO."></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Height="38px" 
            style="margin-left: 113px" Width="246px"></asp:TextBox>
        </p>
        
        
        <p>
            &nbsp;<asp:Label ID="Label5" runat="server" Text="MOBILE NO."></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Height="38px" 
            style="margin-left: 84px" Width="246px"></asp:TextBox>
        </p>
           
        <p>
            &nbsp;<asp:Label ID="Label7" runat="server" Text="ROOM NO."></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Height="38px" 
            style="margin-left: 96px" Width="246px"></asp:TextBox>
        </p>
   
        <p>
           &nbsp;<asp:Label ID="Label6" runat="server" Text="ADDRESS"></asp:Label>
           <asp:TextBox ID="TextBox6" runat="server" Height="36px" 
            style="margin-left: 106px" Width="246px"></asp:TextBox>
        </p>
          
          <p>
            &nbsp;<asp:Label ID="Label10" runat="server" Text="SENIOR NO."></asp:Label>
           &nbsp;&nbsp;&nbsp;
           <asp:TextBox ID="TextBox9" runat="server" Height="36px" 
            style="margin-left: 75px" Width="246px"></asp:TextBox>
        </p>
          
            <asp:Button
           ID="Button1" 
           runat="server" 
           Height="40px" 
           style="margin-left: 222px;
           margin-top: 17px" 
           Text="UPDATE"
           Width="151px" 
           OnClick="Button1_Click">
           </asp:Button>
           
           <asp:Label ID="message" runat="server" Text=" "></asp:Label>
           
          
           
</form>
</body>
</html>

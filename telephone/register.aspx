<%@ Page Language="C#" Debug = "true" AutoEventWireup= "true" Codefile="AllRegistration.aspx.cs" Inherits="register._Default"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>REGISTER </title>
</head>
<body>
    <form id="form1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="EMPLOYEE ID"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="empTextBox1" runat="server" style="margin-left: 59px" 
        Width="239px" Height="32px"></asp:TextBox>
    <br />
    <br />
&nbsp;&nbsp; NAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:TextBox 
        ID="txtname" runat="server" style="margin-left: 28px" 
        Width="239px" Height="32px"></asp:TextBox>
    <br />
    <br />

           &nbsp;<asp:Label ID="Label2" runat="server" Text="DESIGNATION"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="desigDropDownList1" 
        runat="server" DataValueField="designation"
           Height="32px" Width="239px" style="margin-left: 73px">
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
    
   
      
     
       <br />
    
   
      
     
       <br /> 
           &nbsp;<asp:Label ID="Label10" runat="server" Text="DEPARTMENT"></asp:Label>
           &nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="deptDropDownList2" 
        runat="server" DataValueField="dept"
           Height="32px" Width="239px" style="margin-left: 77px">
            <asp:ListItem>Computer</asp:ListItem>
            <asp:ListItem>Polymer</asp:ListItem>
            <asp:ListItem>Electronics</asp:ListItem>
            <asp:ListItem>Biology</asp:ListItem>
            <asp:ListItem>Chemicla</asp:ListItem>        
        
    </asp:DropDownList>
    
  
        
    &nbsp;&nbsp;<br />
    <br />
&nbsp;EXT_NO&nbsp;&nbsp;&nbsp;&nbsp;     <asp:TextBox ID="extTextBox3" 
        runat="server" style="margin-left: 121px" 
        Width="239px" Height="32px"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp; STD_NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
    <asp:TextBox ID="stdTextBox4" runat="server" Width="239px" Height="32px" style="margin-left: 15px"
       ></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp; MOBILE NO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:TextBox ID="mobTextBox5" runat="server" 
        Width="239px" style="margin-left: 23px" Height="32px"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp; ROOM NO.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;<asp:TextBox ID="roomTextBox6" runat="server" Width="239px" Height="32px" 
        style="margin-left: 24px"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp; ADDRESS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
    <asp:TextBox ID="addTextBox7" runat="server" Width="239px" Height="32px" 
        style="margin-left: 20px"></asp:TextBox>
    <br />
    <br />
    &nbsp;&nbsp; SENIOR NO.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;     
    <asp:TextBox ID="senTextBox8" runat="server" Width="239px" Height="32px" 
        style="margin-left: 23px"></asp:TextBox>
    <br />
    &nbsp;<br />
    &nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="PASSWORD"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:TextBox ID="txtpass" runat="server" Width="239px" Height="32px"
        style="margin-left: 25px" TextMode="Password"></asp:TextBox>
   
    <br />
    <br />
    <br />
  
    <asp:Button ID="Button1" runat="server" onclick="RegisterBtn" 
        Text="REGISTER" style="margin-left: 214px" Width="239px" Height="32px" />     
     <asp:Label ID="message" runat="server" Text=" "></asp:Label>
  
    <br />
  
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="DO YOU HAVE AN ACCOUNT? CLICK" Height="32px"></asp:Label>
  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" style="margin-left: 0px" Text="LOGIN" 
        Width="86px" onclick="LoginBtn" Height="32px"/>
        
    
  
    &nbsp;&nbsp;&nbsp;&nbsp;
  
    </form>
</body>
</html>

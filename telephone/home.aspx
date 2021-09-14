<%@ Page Language="C#" Debug = "true" AutoEventWireup= "true" Codefile="Allhome.aspx.cs" Inherits="home._Default"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

   
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HOME</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 157px; width: 182px">
        
       
        
        <img alt="nmrl" src="images.jfif" style="width: 166px; height: 154px" /></div>
    
    <div style="height: 148px; width: 843px; margin-left: 186px; margin-top:-150px">
        <asp:TextBox ID="TextBox1" runat="server" Height="141px" Width="814px" 
            BackColor="Aqua" Font-Bold="true" ForeColor="BlueViolet" Font-Size="25px" 
         >
        &nbsp;&nbsp;&nbsp;&nbsp;  NMRL EMPLOYEES CONTACT MANAGEMENT SYSTEM  
        </asp:TextBox>
    </div>
   

    <div style="height: 431px; width: 184px; background-color:Aqua; font-size:20px" > 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" 
            onclick="LinkButton1_Click" >Employee Login</asp:LinkButton>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" >Register</asp:LinkButton>
        <br />
        <br />
        &nbsp;<br />
        <br />
&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Telephone Directory</asp:LinkButton>
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">Administration</asp:LinkButton>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
      
        </div>
    
    <div style="height: 277px; width: 801px; margin-left: 203px; margin-top:-350px" >
   
     
        
        <img alt="img2" src="img2.jfif" 
            style="width: 263px; height: 276px; margin-top: 0px" />
            <img alt="img1" src="img.jpg" style="width: 259px; height: 277px" />
        <img alt="img3" src="img3.jpeg" style="width: 259px; height: 275px" /></div>
    
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student Registration.aspx.cs" Inherits="webapidemo.Student_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.4.1.min.js"></script>
   <script>
import { post } from "jquery";

       function addrecord() {
           var insert = {};
           insert.firstname = $("#TextBoxfn").val();
           insert.lastname = $("#TextBoxln").val();
           insert.email = $("#TextBoxe").val(); 
           insert.rollno = $("#TextBoxrn").val();
           insert.student_address = $("#TextBoxa").val();
           insert.student_state = $("#TextBoxfnst").val();
           insert.mobile = $("#TextBoxm").val();
           $.ajax({
               url: "https://localhost:44360/api/WebApi/detail",
               type: "post",
               contentType: "Application/json;charset-utf-8",
               data: JSON.stringify(insert),
               dataType: "json",
               success: function (response) {
                   alert(response)
               }
           });
       }
       $(document).ready(function () {
           $("#ButSave").click(
               function(e) {
                   addrecord();
                   e.preventDefault();
               });

           
       });


   </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
                <h1>Student Registration</h1>
                <table border="1">
                    <tr>
                        <td>First Name</td>
                     <td><asp:TextBox ID="TextBoxfn" runat="server"></asp:TextBox></td>   
                           </tr>
                    <tr>

                        <td>Last Name</td>
                         <td><asp:TextBox ID="TextBoxln" runat="server"></asp:TextBox></td>  
                           </tr>
                    <tr>
                        <td>Email</td>
                         <td><asp:TextBox ID="TextBoxe" runat="server"></asp:TextBox></td>  
                           </tr>
                    <tr>
                        <td>Roll No</td>
                         <td><asp:TextBox ID="TextBoxrn" runat="server"></asp:TextBox></td>  
                           </tr>
                    <tr>
                        <td>Address</td>
                         <td><asp:TextBox ID="TextBoxa" runat="server"></asp:TextBox></td>
                           </tr>
                    <tr>
                        <td>State</td>
                         <td><asp:TextBox ID="TextBoxst" runat="server"></asp:TextBox></td>  
                           </tr>
                    <tr>
                        <td>mobile</td>
                         <td><asp:TextBox ID="TextBoxm" runat="server"></asp:TextBox></td>  
                    </tr>
                </table>
                <asp:Button ID="ButSave" runat="server" Text="Add"></asp:Button>
         
        </div>
    </form>
</body>
</html>

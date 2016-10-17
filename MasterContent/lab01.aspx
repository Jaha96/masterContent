<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="lab01.aspx.cs" Inherits="MasterContent.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="myContent" runat="server">
    
    <h1>Лаб-2 Form validation</h1>

    <div>
        Account information:
       <asp:Table runat="server">
           <asp:TableRow>
               <asp:TableCell>First name:</asp:TableCell>
               
         <asp:TableCell><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
    
            ID="RequiredFieldValidator1"
            ControlToValidate="txtFirstName" 
            runat="server" 
            ForeColor="Red" 
            ErrorMessage="Firs Name must be filled in!" 
            EnableClientScript="false">

        </asp:RequiredFieldValidator>
                </asp:TableCell>
           </asp:TableRow>
           <asp:TableRow>
               <asp:TableCell>Last name: </asp:TableCell>
               <asp:TableCell>
        <asp:TextBox 
            ID="txtLastName" 
            runat="server">

        </asp:TextBox>
               <asp:RequiredFieldValidator 
                   ID="RequiredFieldValidator2"
                   ControlToValidate="txtLastName" 
                   runat="server" 
                   ForeColor="Red"  
                   ErrorMessage="Last Name must be filled in!" 
                   EnableClientScript="false">

               </asp:RequiredFieldValidator></asp:TableCell>
           </asp:TableRow>
           <asp:TableRow>
               <asp:TableCell>Gender:</asp:TableCell>
               <asp:TableCell>
                   <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                       <asp:ListItem Selected ="True">Male</asp:ListItem>
                       <asp:ListItem>Female</asp:ListItem>
                   </asp:RadioButtonList>

               </asp:TableCell>
           </asp:TableRow>
           <asp:TableRow>
               <asp:TableCell>E-mail Address:</asp:TableCell>
               <asp:TableCell> 
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator 
            ID="regExpVal" 
            EnableClientScript="false" 
            runat="server" 
            ControlToValidate="txtEmail" 
            ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" 
            ErrorMessage="Internet e-mail address" 
            Display="Dynamic">

        </asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator 
            Display="Dynamic" 
            ID="RequiredFieldValidator3" 
            ForeColor="Red"  
            EnableClientScript="false" 
            ControlToValidate="txtEmail" 
            runat="server" 
            ErrorMessage="E-mail must be filled in!">

         </asp:RequiredFieldValidator>
               <br>(E.g joe@mail.com)

               </asp:TableCell>
           </asp:TableRow>
           <asp:TableRow>
               <asp:TableCell>Password:</asp:TableCell>
               <asp:TableCell> 
                   <asp:TextBox ID="txtPass" TextMode="Password" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator 
                       ID="RequiredFieldValidator4" 
                       EnableClientScript="false" 
                       ForeColor="Red"  
                       ControlToValidate="txtPass" 
                       runat="server" 
                       ErrorMessage="Password must be filled in!">

                   </asp:RequiredFieldValidator>
               <br>(4 to 10 characters)

               </asp:TableCell>
           </asp:TableRow>
           <asp:TableRow>
               <asp:TableCell>RE-enter password:</asp:TableCell>
               <asp:TableCell> 
       <asp:TextBox ID="txtPassRe" TextMode="Password" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator 
                       ID="RequiredFieldValidator5"
                       EnableClientScript="false" 
                       ForeColor="Red"  
                       ControlToValidate="txtPassRe" 
                       runat="server" 
                       ErrorMessage="Second password must be filled in!">

                   </asp:RequiredFieldValidator>
                   <asp:CompareValidator 
                       ID="CompareValidator1"
                        runat="server" 
                       ErrorMessage="Two passwords must be equal!" 
                       EnableClientScript="false" 
                       ControlToValidate="txtPassRe" 
                       ControlToCompare="TxtPass" 
                       Operator="Equal">

                   </asp:CompareValidator>
               </asp:TableCell>
           </asp:TableRow>
           <asp:TableRow>
               <asp:TableCell>Company:</asp:TableCell>
               <asp:TableCell><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></asp:TableCell>
           </asp:TableRow>
           <asp:TableRow>
               <asp:TableCell>Address-line 1:</asp:TableCell>
               <asp:TableCell> 
        <asp:TextBox ID="txtAdd1" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator 
                       ID="RequiredFieldValidator6" 
                       ForeColor="Red" 
                       EnableClientScript="false" 
                       ControlToValidate="txtAdd1" 
                       runat="server" 
                       ErrorMessage="Address line 1 must be filled in!">

                   </asp:RequiredFieldValidator>
               </asp:TableCell>
           </asp:TableRow>
           <asp:TableRow>
               <asp:TableCell>Address-line 2:</asp:TableCell>
               <asp:TableCell>
        <asp:TextBox ID="txtAdd2" runat="server"></asp:TextBox>
        
               </asp:TableCell>
           </asp:TableRow>
           <asp:TableRow>
               <asp:TableCell>State/Province:</asp:TableCell>
               <asp:TableCell><asp:TextBox ID="txtState" runat="server"></asp:TextBox></asp:TableCell>
           </asp:TableRow>
           <asp:TableRow>
               <asp:TableCell>Zip/Postal Code:</asp:TableCell>
               <asp:TableCell><asp:TextBox ID="txtZip" runat="server"></asp:TextBox>
                   <asp:RegularExpressionValidator 
                       ID="regExpValZip" 
                       ControlToValidate="txtZip" 
                       EnableClientScript="false" 
                       runat="server" 
                       ValidationExpression="^\d{5}$" 
                       ErrorMessage="must be 5 digit">

                   </asp:RegularExpressionValidator>
               </asp:TableCell>
           </asp:TableRow>
           <asp:TableRow>
               <asp:TableCell>Country: </asp:TableCell>
               <asp:TableCell> <asp:DropDownList ID="lstCountry" runat="server">
            <asp:ListItem Selected="True">United States</asp:ListItem>
            <asp:ListItem>Mongolia</asp:ListItem>
        </asp:DropDownList></asp:TableCell>
               
           </asp:TableRow>
           <asp:TableRow>
               <asp:TableCell> Day phone:</asp:TableCell>
               <asp:TableCell>
        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                   <asp:RequiredFieldValidator 
                       ID="RequiredFieldValidator8"  
                       EnableClientScript="false" 
                       ForeColor="Red"  
                       ControlToValidate="txtPhone" 
                       runat="server" 
                       ErrorMessage="Day phone must be filled in!">

                   </asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator 
                       ID="RegularExpressionValidator1" 
                       runat="server" 
                       EnableClientScript="false"  
                       ControlToValidate="txtPhone" 
                       ValidationExpression="^\(?([0-9]{3})\)?[-.●]?([0-9]{3})[-.●]?([0-9]{4})$"  
                       ErrorMessage="Day phone format not correct">

                   </asp:RegularExpressionValidator>
               </asp:TableCell>
           </asp:TableRow>
           
       </asp:Table>

    
        
        <br>
        
        <asp:CheckBox 
            ID="CheckBox1" 
            Text="I understand that submitting this information will flood my inbox with junkmail" 
            runat="server" /> 
        
        <span runat="server" 
            id="understandValidator" 
            controltovalidate="CheckBox1" 
            errormessage="Please check the box indicating that you will receive floods of junkmail" 
            evaluationfunction="RequiredCheckBoxValidatorEvaluateIsValid" 
            initialvalue="" 
            style="color:Red;
            visibility:hidden;">
            <img  src="scripts/oops.gif" border="0" /></span>
        <br>
        <asp:Button ID="btnSignUp" runat="server" Text="Sign up!" OnClick="btnSignUp_Click" />

        <asp:ValidationSummary 
            ID="ValidationSummary1" 
            HeaderText="Дараах алдаатай утгууд оруулсан байна"
            DisplayMode="BulletList" 
            ShowMessageBox="true" 
            ShowSummary="true"
            runat="server" />
    </div>
 

    <script lang="javascript">
    function RequiredCheckBoxValidatorEvaluateIsValid(val)
            {
              var control;
              control = document.all[val.controltovalidate];
              if (control.checked)
                        return true;
                  else
                        return false;
            }
    // Add our span to the list of validators
    Page_Validators.push(document.all["understandValidator"]);
           
            // Change the attributes of the span to be the correct types
            // This mimics code from ValidatorOnLoad() found in WebUIValidation.js
            //
    val = document.all["understandValidator"];
    if (typeof(val.evaluationfunction) == "string") {
        eval("val.evaluationfunction = " + val.evaluationfunction + ";");
    }
    if (typeof(val.isvalid) == "string") {
        if (val.isvalid == "False") {
            val.isvalid = false;                               
            Page_IsValid = false;
        }
        else {
            val.isvalid = true;
        }
    } else {
        val.isvalid = true;
    }
    if (typeof(val.enabled) == "string") {
        val.enabled = (val.enabled != "False");
    }
    ValidatorHookupControlID(val.controltovalidate, val);
    ValidatorHookupControlID(val.controlhookup, val);
   
    </script>

</asp:Content>


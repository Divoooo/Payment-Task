<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Debug="true"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="22px" style="margin-top: 0px" Width="476px">
                <asp:Label ID="Label17" runat="server" Font-Size="Small" Text="Email: " ForeColor="#3399FF"></asp:Label>
                <asp:Label ID="email" runat="server" Font-Size="Small" Text=""></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Font-Size="Small" Text="Phone: " ForeColor="#3399FF"></asp:Label>
                <asp:Label ID="phone" runat="server" Font-Size="Small" Text=""></asp:Label>
                &nbsp;
            </asp:Panel>


            <br />
            Order Details<br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Size="Small" Text="Merchant Name: " ForeColor="#3399FF"></asp:Label>
&nbsp;<asp:Label ID="merchant_name" runat="server" Font-Size="Small" Text=""></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="set_random_order" runat="server" OnClick="Set_random_order_Click" style="height: 26px" Text="Set Random Order" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Size="Small" Text="Amount: " ForeColor="#3399FF"></asp:Label>
&nbsp;<asp:Label ID="amount" runat="server" Font-Size="Small" Text=""></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Font-Size="Small" Text="Order ID: " ForeColor="#3399FF"></asp:Label>
&nbsp;<asp:Label ID="order_id" runat="server" Font-Size="Small" Text=""></asp:Label>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Font-Size="Small" Text="Order Description: " ForeColor="#3399FF"></asp:Label>
&nbsp;<asp:Label ID="order_description" runat="server" Font-Size="Small"></asp:Label>
            <br />
            <br />
       
                        <br />
            Payment Details<br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="name_on_ard" runat="server" Font-Size="Small" Text="Name On Card: " ForeColor="#3399FF"></asp:Label>
&nbsp;
&nbsp;<asp:TextBox ID="name_on_card" runat="server" Height="16px" Width="223px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="name_on_card" ValidationGroup="valGroup1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="name_on_card" ValidationExpression="[a-zA-Z]*$" ForeColor="Red" ErrorMessage="invalid character"></asp:RegularExpressionValidator>
             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="TextBox2" runat="server" Font-Size="Small" Text="Card Number: " ForeColor="#3399FF"></asp:Label>
&nbsp;
&nbsp;&nbsp; <asp:TextBox ID="card_number" runat="server" Width="226px"></asp:TextBox>
             &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="card_number" ValidationGroup="valGroup1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="card_number" ValidationExpression="[a-zA-Z0-9]*$" ForeColor="Red" ErrorMessage="invalid character"></asp:RegularExpressionValidator>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Font-Size="Small" Text="Expire Date: " ForeColor="#3399FF"></asp:Label>
&nbsp;&nbsp;&nbsp;
&nbsp; &nbsp;<asp:DropDownList ID="m_list" runat="server">
             <asp:ListItem Text="" Value="" />
             <asp:ListItem Text="01" Value="01" />
             <asp:ListItem Text="02" Value="02" />
             <asp:ListItem Text="03" Value="03" />
             <asp:ListItem Text="04" Value="04" />
             <asp:ListItem Text="05" Value="05" />
             <asp:ListItem Text="06" Value="06" />
             <asp:ListItem Text="07" Value="07" />
             <asp:ListItem Text="08" Value="08" />
             <asp:ListItem Text="09" Value="09" />
             <asp:ListItem Text="10" Value="10" />
             <asp:ListItem Text="11" Value="11" />
             <asp:ListItem Text="12" Value="12" />
            </asp:DropDownList>
            <asp:DropDownList ID="y_list" runat="server" >
             <asp:ListItem Text="" Value="" />
             <asp:ListItem Text="18" Value="18" />
             <asp:ListItem Text="19" Value="19" />
             <asp:ListItem Text="20" Value="20" />
             <asp:ListItem Text="21" Value="21" />
             <asp:ListItem Text="22" Value="22" />
             <asp:ListItem Text="23" Value="23" />
             <asp:ListItem Text="24" Value="24" />
             <asp:ListItem Text="25" Value="25" />
    
            </asp:DropDownList>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="m_list" ValidationGroup="valGroup1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="y_list" ValidationGroup="valGroup1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" Font-Size="Small" Text="Issue Number: " ForeColor="#3399FF"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="issue_number" runat="server" Height="16px" Width="63px"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label11" runat="server" Font-Size="Small" Text="Security Code: " ForeColor="#3399FF"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="security_code" runat="server" Height="16px" Width="63px"></asp:TextBox>
            <br />
            <br />
            <br />
                      Billing Address<br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label12" runat="server" Font-Size="Small" Text="Billing Address: " ForeColor="#3399FF"></asp:Label>
&nbsp; <asp:TextBox ID="bill_address_1" runat="server" Width="214px"></asp:TextBox>
             &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="bill_address_1" ValidationGroup="valGroup1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="bill_address_1" ValidationExpression="[a-zA-Z0-9 ]*$" ForeColor="Red" ErrorMessage="invalid character"></asp:RegularExpressionValidator>
             <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp; <asp:TextBox ID="bill_address_2" runat="server" Width="214px"></asp:TextBox>
             <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="bill_address_3" runat="server" Width="213px"></asp:TextBox>
             <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="bill_address_4" runat="server" Width="213px"></asp:TextBox>
             <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label13" runat="server" Font-Size="Small" Text="Billing City: " ForeColor="#3399FF"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;<asp:TextBox ID="billing_city" runat="server" Width="210px"></asp:TextBox>
              &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="billing_city" ValidationGroup="valGroup1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="billing_city" ValidationExpression="[a-zA-Z0-9]*$" ForeColor="Red" ErrorMessage="invalid character"></asp:RegularExpressionValidator>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label14" runat="server" Font-Size="Small" Text="Billing State/County: " ForeColor="#3399FF"></asp:Label>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
&nbsp;<asp:TextBox ID="billing_state" runat="server" Width="210px"></asp:TextBox>
             &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="billing_state" ValidationGroup="valGroup1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="billing_state" ValidationExpression="[a-zA-Z0-9]*$" ForeColor="Red" ErrorMessage="invalid character"></asp:RegularExpressionValidator>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label15" runat="server" Font-Size="Small" Text="Billing Zip/Post code: " ForeColor="#3399FF"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:TextBox ID="billing_zip" runat="server"></asp:TextBox>
              &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="billing_zip" ValidationGroup="valGroup1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="billing_zip" ValidationExpression="[a-zA-Z0-9]*$" ForeColor="Red" ErrorMessage="invalid character"></asp:RegularExpressionValidator>
             <br /> 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="Label16" runat="server" Font-Size="Small" Text="Billing Country: " ForeColor="#3399FF"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="billing_country" runat="server" Width="208px"></asp:TextBox>
             &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="billing_country" ValidationGroup="valGroup1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="billing_country" ValidationExpression="[a-zA-Z0-9]*$" ForeColor="Red" ErrorMessage="invalid character"></asp:RegularExpressionValidator>
            <br />  
            <br />
          
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Post"  ValidationGroup="valGroup1" Text="Submiuit For Procesing" BackColor="#3399FF" Font-Bold="True" ForeColor="White" />
            <br />
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label62" runat="server" Font-Bold="True" Text="Debug"></asp:Label>
        <asp:Panel ID="Panel3" runat="server" BackColor="Silver" Height="91px" Width="782px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="error_icon" runat="server" Height="44px" ImageUrl="~/Images/error_icon.png" Visible="False" Width="52px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="status_text" runat="server" Text="message..."></asp:Label>
        </asp:Panel>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="post_details" runat="server" Text="Posted Details"></asp:Label>
        </p>
        <asp:Panel ID="Panel4" runat="server" Height="747px" Width="378px">
            <asp:Label ID="Label18" runat="server" Text="CustomerName: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="customer_name_view" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Address1: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="address_one_view" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Address2: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="address_two_view" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label20" runat="server" Text="Address3: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="address_three_view" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label22" runat="server" Text="Address4: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="address_four_view" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label24" runat="server" Text="City: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="city_view" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label26" runat="server" Text="State: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="state_view" runat="server" Text="Label"></asp:Label>
            <br />

             <asp:Label ID="Label6" runat="server" Text="PostCode: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="post_code_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label21" runat="server" Text="EmailAddress: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="email_address_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label25" runat="server" Text="PhoneNumber: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="phone_number_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label28" runat="server" Text="MerchantID: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="merchant_id_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label30" runat="server" Text="CurrencyCode: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="currency_code_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label32" runat="server" Text="Amount: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="amount_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label34" runat="server" Text="Currency: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="currency_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label36" runat="server" Text="OrderID: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="order_id_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label38" runat="server" Text="TransactionType: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="transaction_type_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label40" runat="server" Text="TransactionDateTime: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="transaction_datetime_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label19" runat="server" Text="OrderDescription: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="order_description_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label27" runat="server" Text="EchoAVSCheckResult: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="echoAVSCheckResult_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label31" runat="server" Text="EchoCV2CheckResult: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="echoCV2CheckResult_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label35" runat="server" Text="EchoThreeDSecureAuthenticationCheckResult: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="echoThreeDSecureAuthenticationCheckResult_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label39" runat="server" Text="EchoCardType: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="echoCardType_view" runat="server" Text="Label"></asp:Label>
            <br />

             <asp:Label ID="Label23" runat="server" Text="AVSOverridePolicy: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="aVSOverridePolicy_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label33" runat="server" Text="CV2Overridepolicy: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="cV2Overridepolicy_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label41" runat="server" Text="ThreeDSecureOverridePolicy: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="threeDSecureOverridePolicy_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label43" runat="server" Text="CallbackURL: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="callbackURL_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label45" runat="server" Text="EmailAddressEditable: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="emailAddressEditable_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label47" runat="server" Text="PhoneNumberEditable: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="phoneNumberEditable_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label49" runat="server" Text="CV2Mandatory: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="cV2Mandatory_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label51" runat="server" Text="Address1Mandatory: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="address1Mandatory_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label53" runat="server" Text="CityMandatory: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="cityMandatory_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label55" runat="server" Text="PostCodeMandatory: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="postCodeMandatory_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label57" runat="server" Text="StateMandatory: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="stateMandatory_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label59" runat="server" Text="CountryMandatory: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="countryMandatory_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label61" runat="server" Text="ResultDeliveryMethod: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="resultDeliveryMethod_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label29" runat="server" Text="ServerResultURL: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="serverResultURL_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label42" runat="server" Text="PaymentFormDisplaysResult: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="paymentFormDisplaysResult_view" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Label ID="Label37" runat="server" Text="Card Expiry Date: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="echoCardExpiryDate_view" runat="server" Text="Label"></asp:Label>
            <br />
             <asp:Label ID="Label46" runat="server" Text="HashDigest: " ForeColor="#990000"></asp:Label>
            <asp:Label ID="hashDigest_view" runat="server" Text="Label"></asp:Label>
            <br />


        </asp:Panel>
    </form>
</body>
</html>

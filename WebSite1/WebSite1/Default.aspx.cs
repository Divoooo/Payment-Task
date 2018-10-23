using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Text;
using System.IO;
using System.Collections.Specialized;
using System.Text.RegularExpressions;
using System.Security.Cryptography;

public partial class _Default : System.Web.UI.Page
{
  
    protected void Post(object sender, EventArgs e)
    {
        
        if(amount.Text != "" && order_id.Text != "")             // Check if random order are generated
        {
            if (CheckInputs())                                   // Check all the Inputs for Empyt and Special Character
            {
                var values = getTestValues();                    //Get all Data From Inputs
                values["HashDigest"] = GetHashString(values);    //Make Hash code from values
                SetPostedDetails(values);                        //set text for Debug under the Form

                string status = PostConnection(values);          //POST Collections to API
                if (status != "")
                {
                    status_text.Text = status;
                }
            }
        }
        else
        {
            status_text.Text = "Please Set Random Order !";
        }      
    }
    public string PostConnection(NameValueCollection values)
    {
        try
        {
            using (var client = new WebClient())
            {
                var response = client.UploadValues("https://mms.payvector.net/Pages/PublicPages/PaymentForm.aspx", "POST", values);

                var responseString = Encoding.Default.GetString(response);
                return responseString;
            }
        }
        catch(Exception e)
        {
            Console.WriteLine(e.Message);
        }       
        return "";
    }

    // Get Data  
    public NameValueCollection getTestValues()
    {
        var values = new NameValueCollection();

        //personal details

        values["CustomerName"] = name_on_card.Text;
        values["Address1"] = bill_address_1.Text;
        values["Address2"] = bill_address_2.Text ?? "";
        values["Address3"] = bill_address_3.Text ?? "";
        values["Address4"] = bill_address_4.Text ?? "";

        values["City"] = billing_city.Text;
        values["State"] = billing_state.Text;
        values["PostCode"] = billing_zip.Text;

        values["EmailAddress"] = email.Text;
        values["PhoneNumber"] = phone.Text;

        //order details

    
        values["MerchantID"] = "7702818";
        values["CurrencyCode"] = "826";
        values["Amount"] = amount.Text.Replace(@",", string.Empty);
        values["Currency"] = "4217";
        values["OrderID"] = order_id.Text;
        values["TransactionType"] = "SALE";
        values["TransactionDateTime"] = DateTime.Now.ToString("yyyy-MM-dd HH:MM:ss zzz");
        values["OrderDescription"] = order_description.Text;

        //security check
        values["EchoAVSCheckResult"] = "true";
        values["EchoCV2CheckResult"] = "true";
        values["EchoThreeDSecureAuthenticationCheckResult"] = "true";
        values["EchoCardType"] = "true";
        values["AVSOverridePolicy"] = "PPPP";
        values["CV2Overridepolicy"] = "PP";
        values["ThreeDSecureOverridePolicy"] = "true";
        values["CallbackURL"] = "http://www.somedomain.com/callback.php";

        //input check
        values["EmailAddressEditable"] = "true";
        values["PhoneNumberEditable"] = "true";

        values["CV2Mandatory"] = "true";
        values["Address1Mandatory"] = "true";
        values["CityMandatory"] = "true";
        values["PostCodeMandatory"] = "true";
        values["StateMandatory"] = "true";
        values["CountryMandatory"] = "true";

        values["ResultDeliveryMethod"] = "POST";
        values["ServerResultURL"] = "";
        values["PaymentFormDisplaysResult"] = "true";
        return values;
    }
    public string GetHashString(NameValueCollection collection)
    {
        string tempDetails = "";
        var items = collection.AllKeys.SelectMany(collection.GetValues, (k, v) => new { key = k, value = v });
        foreach (var item in items)
        {
            if (item.value != "")
            {
                tempDetails += item.key + "=" + item.value + "&";

            }

        }
        tempDetails += "Password=G6CH6Z90I2";

        //  post_details.Text = tempDetails;
        return Hash(tempDetails);
    }
    static string Hash(string input)
    {
        using (SHA1Managed sha1 = new SHA1Managed())
        {
            var hash = sha1.ComputeHash(Encoding.UTF8.GetBytes(input));
            var sb = new StringBuilder(hash.Length * 2);

            foreach (byte b in hash)
            {
                // x2" for lowercase
                sb.Append(b.ToString("X2"));
            }

            return sb.ToString();
        }
    }
  
    // Set Random Order
    protected void Set_random_order_Click(object sender, EventArgs e)
    {
        SetRandomOrderDetails();
    }
    public void SetRandomOrderDetails()
    {

        Random rnd = new Random();
        merchant_name.Text = "Programming Test";
        amount.Text = GetAmountString(rnd.Next(100, 200000));

        order_id.Text = "Order - " + rnd.Next(0, 9999);
        order_description.Text = GetRandomDescription(rnd.Next(0, 5));

        email.Text = "test_email@gmail.com";
        phone.Text = "086 524 2586";
    }
    public string GetAmountString(int amount)
    {
        string tempAmount = amount.ToString();
        StringBuilder sb = new StringBuilder();

        sb.Append(tempAmount);
        sb.Insert((tempAmount.Length - 2), ",", 1);

        return sb.ToString();
    }
    public string GetRandomDescription(int rand)
    {
        switch (rand)
        {
            case 1:
                return "Description 1";
                break;
            case 2:
                return "Description 2";
                break;
            case 3:
                return "Description 3";
                break;
            case 4:
                return "Description 4";
                break;
            case 5:
                return "Description 5";
                break;
            default:
                return "Default Description";
        }
    }

    // Check Strings Over Code
    public bool CheckInputs()
    {
        if (CheckCharacter(name_on_card.Text, "Name On Card"))
        {
            if (CheckCharacter(card_number.Text, "Card Number"))
            {
                if (CheckCharacter((m_list.Text + y_list.Text), "Expire Date"))
                {
                    if (CheckCharacter(bill_address_1.Text, "Billing Address"))
                    {
                        if (CheckCharacter(billing_city.Text, "Billing City"))
                        {
                            if (CheckCharacter(billing_state.Text, "Billing State"))
                            {
                                if (CheckCharacter(billing_zip.Text, "Billing PostCode"))
                                {
                                    if (CheckCharacter(billing_country.Text, "Billing Country"))
                                    {

                                        return true;

                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }
    public bool CheckCharacter(string inputString, string type)
    {
        var regexItem = new Regex("^[a-zA-Z0-9 ]*$");

        if (inputString != "")
        {
            if (regexItem.IsMatch(inputString))
            {
                if (error_icon.Visible == true)
                {
                    error_icon.Visible = false;
                }
                return true;
            }
            else
            {
                status_text.Text = "Invalid " + type + "! No special characters are allowed !";
            }
        }
        else
        {
            status_text.Text = "Please Enter " + type + "!";
        }
        error_icon.Visible = true;
        return false;
    }

    // Debug
    public void SetPostedDetails(NameValueCollection values)
    {
        customer_name_view.Text = values["CustomerName"];
        address_one_view.Text = values["Address1"];
        address_two_view.Text = values["Address2"];
        address_three_view.Text = values["Address3"];
        address_four_view.Text = values["Address4"];
        city_view.Text = values["City"];
        state_view.Text = values["State"];
        post_code_view.Text = values["PostCode"];
        email_address_view.Text = values["EmailAddress"];
        phone_number_view.Text = values["PhoneNumber"];
        hashDigest_view.Text = values["HashDigest"];
        merchant_id_view.Text = values["MerchantID"];
        currency_code_view.Text = values["CurrencyCode"];
        amount_view.Text = values["Amount"];
        currency_view.Text = values["Currency"];
        order_id_view.Text = values["OrderID"];
        transaction_type_view.Text = values["TransactionType"];
        transaction_datetime_view.Text = values["TransactionDateTime"];
        order_description_view.Text = values["OrderDescription"];
        echoAVSCheckResult_view.Text = values["EchoAVSCheckResult"];
        echoCV2CheckResult_view.Text = values["EchoCV2CheckResult"];
        echoThreeDSecureAuthenticationCheckResult_view.Text = values["EchoThreeDSecureAuthenticationCheckResult"];
        echoCardType_view.Text = values["EchoCardType"];
        aVSOverridePolicy_view.Text = values["AVSOverridePolicy"];
        cV2Overridepolicy_view.Text = values["CV2Overridepolicy"];
        threeDSecureOverridePolicy_view.Text = values["ThreeDSecureOverridePolicy"];
        callbackURL_view.Text = values["CallbackURL"];
        emailAddressEditable_view.Text = values["EmailAddressEditable"];
        phoneNumberEditable_view.Text = values["PhoneNumberEditable"];
        cV2Mandatory_view.Text = values["CV2Mandatory"];
        address1Mandatory_view.Text = values["Address1Mandatory"];
        cityMandatory_view.Text = values["CityMandatory"];
        postCodeMandatory_view.Text = values["PostCodeMandatory"];
        stateMandatory_view.Text = values["StateMandatory"];
        countryMandatory_view.Text = values["CountryMandatory"];
        resultDeliveryMethod_view.Text = values["ResultDeliveryMethod"];
        serverResultURL_view.Text = values["ServerResultURL"];
        echoCardExpiryDate_view.Text = m_list.Text + "," + y_list.Text;
        paymentFormDisplaysResult_view.Text = values["PaymentFormDisplaysResult"];

    }


    
}
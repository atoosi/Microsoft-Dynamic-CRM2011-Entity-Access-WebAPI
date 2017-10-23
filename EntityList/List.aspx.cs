using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityList
{
    public partial class List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //try
            //{
                string fetchxml1 = @"<fetch version='1.0' output-format='xml-platform' mapping='logical' distinct='false'>
                                           <entity name = 'lead'>
                                                   <attribute name='fullname'/>
                                                   <attribute name = 'companyname'/>
 
                                                   <attribute name = 'telephone1'/>
                                                   <attribute name = 'emailaddress1'/>
                                                   <attribute name = 'leadid'/>
   
                                                     <order descending = 'false' attribute = 'fullname'/>

                                                
                                                     <filter type = 'or'>

                                                        <condition attribute = 'fullname'  operator= 'like' value = '%{0}%'/>
                                                       <condition attribute='emailaddress1' value='%{1}%'   operator='like'/>
                                                        <condition attribute='telephone1' value='%{2}%'   operator='like'/>

                                                     </filter>

                                              </entity>
                                      </fetch> ";



                string fetchxml2 = @"<fetch version='1.0' output-format='xml - platform' mapping='logical' distinct='false'><entity name = 'account'><attribute name = 'name'/><attribute name = 'emailaddress1'/><attribute name = 'telephone1'/><attribute name = 'accountid'/><order attribute = 'name' descending = 'false'/><filter type = 'or'><condition attribute = 'name' operator= 'like' value = '%{0}%'/>   <condition attribute='emailaddress1' operator='like' value='%{1}%'/><condition attribute='telephone1' value='%{2}%'   operator='like'/></filter></entity></fetch>";




                string fetchxml3 = @"<fetch version='1.0' output-format='xml - platform' mapping='logical' distinct='false'>
    <entity name = 'contact'>
   
       <attribute name = 'fullname'/>
    
        <attribute name = 'telephone1'/>
     <attribute name = 'emailaddress1'/>
         <attribute name = 'contactid'/>
      
          <order attribute = 'fullname' descending = 'false'/>
         
             <filter type = 'or'>
          
                <condition attribute = 'fullname' operator= 'like' value = '%{0}%'/>
 <condition attribute='emailaddress1' operator='like' value='%{1}%' />
   <condition attribute='telephone1' value='%{2}%'   operator='like'/>
              
                  </filter>
              
                </entity>
              </fetch>";

                Qcrm.QCRMWebServiceSoapClient service = new Qcrm.QCRMWebServiceSoapClient();
                StringBuilder sb = new StringBuilder();
                var xml1 = sb.AppendFormat(fetchxml1, TextBox1.Text.Trim(), TextBox1.Text.Trim(), TextBox1.Text.Trim()).ToString();
                sb = new StringBuilder();
                var xml2 = sb.AppendFormat(fetchxml2, TextBox1.Text.Trim(), TextBox1.Text.Trim(), TextBox1.Text.Trim()).ToString();
                sb = new StringBuilder();
                var xml3 = sb.AppendFormat(fetchxml3, TextBox1.Text.Trim(), TextBox1.Text.Trim(), TextBox1.Text.Trim()).ToString();

                DataG1.DataSource = service.GetEntityList(xml1);
                DataG1.DataBind();

                DataG2.DataSource = service.GetEntityList(xml2);
                DataG2.DataBind();

                DataG3.DataSource = service.GetEntityList(xml3);
                DataG3.DataBind();


        }
        //    catch { }
        //}
    }
}
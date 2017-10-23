using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EntityList
{
    public partial class Query : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string fetchxml = @"<fetch version='1.0' output-format='xml-platform' mapping='logical' distinct='false'>
                                           <entity name = 'lead'>

                                              <attribute name = 'fullname'/>

                                               <attribute name = 'companyname'/>

                                                <attribute name = 'telephone1'/>

                                                 <attribute name = 'leadid'/>

                                                  <order descending = 'false' attribute = 'fullname'/>

                                                     <filter type = 'and'>

                                                        <condition attribute = 'subject'  operator= 'eq' value = '{0}'/>

                                                           </filter>

                                                         </entity>
                                                       </fetch> ";
                string soap = @"<?xml version=""1.0"" encoding=""utf-8""?><soap:Envelope xmlns:xsi=""http://www.w3.org/2001/XMLSchema-instance"" xmlns:xsd=""http://www.w3.org/2001/XMLSchema""   xmlns:soap=""http://www.w3.org/2003/05/soap-envelope"">   <soap:Body>     <GetEntityList xmlns=""http://tempuri.org/""> <fetchxml>" + fetchxml + "</fetchxml> </GetEntityList> </soap:Body> </soap:Envelope>";



                //HttpWebRequest req = (HttpWebRequest)WebRequest.Create("http://98.190.215.190:8082/QCRMWebService.Asmx");
                //req.ContentType = "application/soap+xml;";
                //req.Method = "POST";

                //using (Stream stm = req.GetRequestStream())
                //{
                //    using (StreamWriter stmw = new StreamWriter(stm))
                //    {
                //        stmw.Write(soap);
                //    }

                //}
                //    //Gets the response
                //    WebResponse response = req.GetResponse();
                //    //Writes the Response
                //    Stream responseStream = response.GetResponseStream();




                //DataSet dsWeather = new DataSet();
                //    dsWeather.ReadXml(responseStream);



                // display dataset information
                Qcrm.QCRMWebServiceSoapClient service = new Qcrm.QCRMWebServiceSoapClient(); 
                StringBuilder sb = new StringBuilder();
                var data = service.GetEntityList(sb.AppendFormat(fetchxml, TextBox1.Text).ToString());
                if (data != null)
                {
                    dg.DataSource = data;
                    dg.DataBind();
                }
            }
            catch { }

        }
    }
}
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Linq;
using System.Xml.Schema;
using System.Xml.Xsl;

namespace XmlToHtml
{
    class Helper
    {
        public static bool ValidarXml(XmlDocument doc)
        {
            var isEqual = true;
            var xDoc = new XDocument();
            xDoc = XDocument.Parse(doc.OuterXml);

            var schemas = new XmlSchemaSet();
            try
            {
                schemas.Add("shop.xsd", "shop.xsd");
            }
            catch (XmlSchemaException ex)
            {
                Console.WriteLine(ex.Message);
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            xDoc.Validate(schemas, (output, exeption) => { isEqual = false; });
            return isEqual;
        }

        public static bool TransformarXml(XmlDocument xmlDoc)
        {
            var myTrans = new XslCompiledTransform();

            var xsltUri = "Records.xslt";
            myTrans.Load(xsltUri);

            var writer = new StringWriter();

            try
            {
                myTrans.Transform(xmlDoc.CreateNavigator(), null, writer);
            }
            catch(ArgumentNullException ex)
            {
                Console.WriteLine(ex);
            }
            catch(XsltException ex)
            {
                Console.WriteLine(ex);
            }

            try
            {
                using(var file = new StreamWriter("Records.html", false))
                {
                    file.Write(writer);
                }
            }
            catch(ObjectDisposedException ex)
            {
                Console.WriteLine(ex);
            }
            catch(IOException ex)
            {
                Console.WriteLine(ex.Message);
            }

            return File.Exists("Records.html");
        }
    }
}
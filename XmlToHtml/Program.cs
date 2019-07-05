using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;

namespace XmlToHtml
{
    class Program
    {
        static void Main(string[] args)
        {
            var result = false;
            XmlDocument doc = new XmlDocument();
            doc.Load("Records.xml");
            //if(Helper.ValidarXml(doc))
            {
                //transformación
                result = Helper.TransformarXml(doc);
            }
        }
    }
}

using System;
using System.Data;
using System.Collections;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using DevExpress.Web.ASPxDataView;
using System.Text;
using DevExpress.Web.ASPxCallback;
using System.Xml;
using DevExpress.Web.ASPxTabControl;


public partial class ASPxperience_GlossarySample : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
    }
    protected void cpnText_Callback(object source, DevExpress.Web.ASPxClasses.CallbackEventArgsBase e) {
        string xpath = string.Format("//glossary/item[@id='{0}']", e.Parameter);
        XmlNode node = XmlDataSource1.GetXmlDocument().SelectSingleNode(xpath);
        if(node != null)
            ltText.Text = node.Attributes["text"].Value;
        else
            ltText.Text = "Text not found";
    }
}
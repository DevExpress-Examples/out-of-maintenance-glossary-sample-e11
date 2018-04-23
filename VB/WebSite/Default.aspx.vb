Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Collections
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.ComponentModel
Imports DevExpress.Web.ASPxDataView
Imports System.Text
Imports DevExpress.Web.ASPxCallback
Imports System.Xml
Imports DevExpress.Web.ASPxTabControl


Partial Public Class ASPxperience_GlossarySample
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
	End Sub
	Protected Sub cpnText_Callback(ByVal source As Object, ByVal e As DevExpress.Web.ASPxClasses.CallbackEventArgsBase)
		Dim xpath As String = String.Format("//glossary/item[@id='{0}']", e.Parameter)
		Dim node As XmlNode = XmlDataSource1.GetXmlDocument().SelectSingleNode(xpath)
		If Not node Is Nothing Then
			ltText.Text = node.Attributes("text").Value
		Else
			ltText.Text = "Text not found"
		End If
	End Sub
End Class
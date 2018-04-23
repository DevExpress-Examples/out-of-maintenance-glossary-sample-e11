<%-- BeginRegion Page setup --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="ASPxperience_GlossarySample" %>

<%@ Register Assembly="System.Web, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="System.Web.UI" TagPrefix="cc1" %>

<%@ Register Assembly="DevExpress.Web.v8.1" Namespace="DevExpress.Web.ASPxCallbackPanel"
    TagPrefix="dxcp" %>
<%@ Register Assembly="DevExpress.Web.v8.1" Namespace="DevExpress.Web.ASPxRoundPanel"
    TagPrefix="dxrp" %>

<%@ Register Assembly="DevExpress.Web.v8.1" Namespace="DevExpress.Web.ASPxPopupControl"
    TagPrefix="dxpc" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.1" Namespace="DevExpress.Web.ASPxEditors"
    TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.Web.v8.1" Namespace="DevExpress.Web.ASPxTabControl"
    TagPrefix="dxtc" %>


<%-- EndRegion --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Glossary Sample</title>
    
<style type="text/css">
    .gli { /* glossary item */
        border-bottom: dashed 1px navy;
        color: navy;
        cursor: pointer;
        cursor: hand;
    }
</style>
    
<script type="text/javascript">
    function ShowGlossaryText(evt){
    var element = evt.srcElement;
    if (typeof(element) == "undefined") // not IE
        element = evt.target;
    if (element.className.toLowerCase() == "gli") {
        var id = element.innerHTML;
        pcGlossary.SetHeaderText(id);
        cpnText.PerformCallback(id);
        pcGlossary.ShowAtElement(element);
        return false;
    }
}
</script>
</head>
<body>
    <form id="form1" runat="server">
    
    <div>
<div id="textArea" onclick="return ShowGlossaryText(event);">
<p>Use the ShowWindowAtElement method on the client side to display a popup window specified by the window parameter at a position which relates to an HTML element specified by the htmlElement parameter. For instance, this method can be used when it's necessary to display a popup window in response to a specific user action not listed by the <span class="gli">ASPxPopupControl.PopupAction</span> property or over a specific HTML element that differs from the element specified by the <span class="gli">ASPxPopupControl.PopupElementID</span> (or PopupWindow.PopupElementID) property.</p>
<p>&nbsp;</p>
</div>

<dxpc:ASPxPopupControl SkinId="None" EncodeHtml="False" id="pcGlossary" runat="server" EnableViewState="False" EnableClientSideAPI="True" EnableHotTrack="False" Width="350px" PopupHorizontalAlign="RightSides" PopupVerticalAlign="Below" PopupHorizontalOffset="1" PopupVerticalOffset="1" EnableHierarchyRecreation="True" ClientInstanceName="pcGlossary" EnableTheming="True" CloseAction="OuterMouseClick" AllowDragging="True">
    <FooterStyle BackColor="#FFFBBA">
        <Border BorderWidth="0px" />
    </FooterStyle>
    <Border BorderColor="#BAAE6D" BorderStyle="Solid" BorderWidth="1px" />
    <CloseButtonImage Height="15px" Url="Images/pcClose.gif" Width="15px" />
    <HeaderStyle BackColor="#FCFADD" Font-Bold="True" ForeColor="#9E8A4F" Font-Size="9pt">
        <Border BorderWidth="0px" />
        <BorderBottom BorderWidth="1px" BorderColor="#DCD9B0" BorderStyle="Solid" />
        <Paddings PaddingBottom="6px" PaddingLeft="13px" PaddingRight="8px" PaddingTop="6px" />
    </HeaderStyle>
    <ContentStyle BackColor="#FFFBBA" ForeColor="#9E8A4F">
        <Border BorderWidth="0px" />
        <Paddings PaddingBottom="10px" PaddingLeft="13px" PaddingRight="13px" PaddingTop="9px" />
    </ContentStyle>
    <CloseButtonStyle>
        <Paddings Padding="0px" PaddingLeft="3px" />
    </CloseButtonStyle>
    <ModalBackgroundStyle Opacity="1">
    </ModalBackgroundStyle>
    <Controls>
        <dxcp:aspxcallbackpanel id="cpnText" runat="server" enableviewstate="False" oncallback="cpnText_Callback"
            width="100%" ClientInstanceName="cpnText"><PanelCollection>
<dxrp:PanelContent runat="server"><asp:Literal runat="server" ID="ltText" EnableViewState="False"></asp:Literal>

 </dxrp:PanelContent>
</PanelCollection>
</dxcp:aspxcallbackpanel>
    </Controls>
</dxpc:ASPxPopupControl>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/GlossarySampleData.xml">
        </asp:XmlDataSource>

    </div>
    </form>
</body>
</html>

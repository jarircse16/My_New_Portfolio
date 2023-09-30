<%@ Page Language="VB" %>
<%@ Import Namespace="System.IO" %>
<Script Runat="server">
    Sub Page_Load(sender As Object, e As EventArgs)
        ' Define the directory where messages will be stored
        Dim messageDirectory As String = Server.MapPath("messages")

        ' Create the messages directory if it doesn't exist
        If Not Directory.Exists(messageDirectory) Then
            Directory.CreateDirectory(messageDirectory)
        End If

        ' Generate a unique filename with date-time stamp
        Dim messageFileName As String = "message_" & DateTime.Now.ToString("yyyyMMdd_HHmmss") & ".txt"

        ' Get form data
        Dim name As String = Request.Form("name")
        Dim email As String = Request.Form("email")
        Dim message As String = Request.Form("message")

        ' Define the full path to the message file
        Dim filePath As String = Path.Combine(messageDirectory, messageFileName)

        ' Write the form data to the text file
        Using writer As StreamWriter = File.CreateText(filePath)
            writer.WriteLine("Name: " & name)
            writer.WriteLine("Email: " & email)
            writer.WriteLine("Message:")
            writer.WriteLine(message)
        End Using

        ' Redirect back to the contact form with a success message
        Response.Redirect("contact.aspx?success=True")
    End Sub
</Script>

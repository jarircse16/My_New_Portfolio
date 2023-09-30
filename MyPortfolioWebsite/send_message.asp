<%@ Language=VBScript %>
<%
' Define the directory where messages will be stored
Dim messageDirectory
messageDirectory = Server.MapPath("messages")

' Create the messages directory if it doesn't exist
If Not FileSystemObject.FolderExists(messageDirectory) Then
    Set folder = FileSystemObject.CreateFolder(messageDirectory)
End If

' Generate a unique filename with date-time stamp
Dim messageFileName
messageFileName = "message_" & FormatDateTime(Now, 2) & ".txt"

' Get form data
Dim name, email, message
name = Request.Form("name")
email = Request.Form("email")
message = Request.Form("message")

' Create a file system object
Set objFSO = Server.CreateObject("Scripting.FileSystemObject")

' Create a text file for the message
Set objFile = objFSO.CreateTextFile(Server.MapPath("messages") & "\" & messageFileName, True)

' Write the form data to the text file
objFile.WriteLine("Name: " & name)
objFile.WriteLine("Email: " & email)
objFile.WriteLine("Message:")
objFile.WriteLine(message)

' Close the file
objFile.Close

' Redirect back to the contact form with a success message
Response.Redirect "contact.asp?success=True"
%>

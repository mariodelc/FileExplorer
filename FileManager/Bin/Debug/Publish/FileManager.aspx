<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FileManager.aspx.cs" Inherits="FileManager" %>

<%@ Register Assembly="DevExpress.Web.ASPxRichEdit.v19.2, Version=19.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxRichEdit" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>File Manager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
                
                <div class="container">
                    <div class="row">
                        <div class="col" >
                        
                        <button type="button" class="btn btn-outline-primary"  onclick="AddFile()" >
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-earmark-plus" viewBox="0 0 16 16">
                          <path d="M8 6.5a.5.5 0 0 1 .5.5v1.5H10a.5.5 0 0 1 0 1H8.5V11a.5.5 0 0 1-1 0V9.5H6a.5.5 0 0 1 0-1h1.5V7a.5.5 0 0 1 .5-.5z"/>
                          <path d="M14 4.5V14a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h5.5L14 4.5zm-3 0A1.5 1.5 0 0 1 9.5 3V1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4.5h-2z"/>
                        </svg>
                        </button>

                       

                        
                    </div>
                        <div id="dataNewFile" class="col-4" style="display:none">
                            <asp:Label ID="Label1" runat="server" Text="Label">File Name:</asp:Label>
                            <asp:TextBox ID="NameNewFile" runat="server"></asp:TextBox>
                            
                            <asp:LinkButton ID="LinkButton1" OnClick="AddFile" runat="server" class="btn btn-outline-success">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-check" viewBox="0 0 16 16">
                                  <path d="M10.97 4.97a.75.75 0 0 1 1.07 1.05l-3.99 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.267.267 0 0 1 .02-.022z"/>
                                </svg>
                            </asp:LinkButton>
                        </div>
                </div>
                    
                  <div class="row">
                    <div class="col">
                        <dx:ASPxFileManager OnSelectedFileOpened="OpenFile"  ID="ASPxFileManager1" runat="server" Theme="Office2003Silver" >
                            <Settings InitialFolder="~/Content/FileManager/Files" RootFolder="~/Content/FileManager/Files" ThumbnailFolder="~/Content/FileManager/Thumbnails" />
                            <SettingsEditing AllowCopy="True" AllowCreate="True" AllowDelete="True" AllowMove="True" AllowRename="True" />
                            <SettingsUpload Enabled="False">
                            </SettingsUpload>
            
                        </dx:ASPxFileManager>

                        
                    </div>
                      

                    
                    
                  </div>
                </div>
        <div class="container">
            <div class="row">
                          <asp:TextBox Visible="false" ID="fileData" runat="server" Height="483px" Width="621px"></asp:TextBox>
                <asp:LinkButton ID="saveData" Visible="false" OnClick="saveData_Click" runat="server">Save</asp:LinkButton>
                      </div>
        </div>
        
        
    </form>
   
</body>
</html>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
    
    function AddFile() {
        document.getElementById("dataNewFile").style.display = 'block';
    }

    
</script>

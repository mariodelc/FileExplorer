using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FileManager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void AddFile(object sender, EventArgs e)
    {
        try
        {
            string path = ASPxFileManager1.SelectedFolder.FullName;

            string newFileName = NameNewFile.Text;

            string FilePath = Server.MapPath(path + @"\" + newFileName + ".txt");
            //string FileContent = "Put File Content Here";
            File.Create(FilePath);
            ASPxFileManager1.Refresh();
        }
        catch
        {

        }
        

        
    }

    protected void OpenFile(object source, DevExpress.Web.FileManagerFileOpenedEventArgs e)
    {
        try
        {
            string path = Server.MapPath(ASPxFileManager1.SelectedFile.FullName);


            StreamReader rd = new StreamReader(path);

            fileData.Text = rd.ReadLine();
            rd.Close();
            rd.Dispose();
            fileData.Visible = true;
            saveData.Visible = true;
        }
        catch
        {

        }


        

    }

    protected void saveData_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath(ASPxFileManager1.SelectedFile.FullName);
        if (File.Exists(path))
        {
            File.Delete(path);
            using (StreamWriter writetext = new StreamWriter(path))
            {
                writetext.WriteLine(fileData.Text);
                writetext.Close();
            }
        }
            
        fileData.Visible = false;
        saveData.Visible = false;
    }
}
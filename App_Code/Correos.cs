using System;
using System.Configuration;
using System.Net;
using System.Net.Mail;


public class Correos
{
    public void enviarCorreoValidacion(string correoDestino, int codigo)
    {
        string linkAcceso ="Su codigo de verificacion es:"+ codigo.ToString();
        //informacion del correo que usará el aplicativo web
        string servidor = ConfigurationManager.AppSettings["ServidorCorreo"];
        int puerto = int.Parse(ConfigurationManager.AppSettings["PuertoCorreo"]);
        string correoOrigen = ConfigurationManager.AppSettings["CorreoOrigen"]; ;
        string contrasena = ConfigurationManager.AppSettings["ContrasenaCorreo"];
        //generación del correo y envío del mismo
        using (MailMessage mensaje = new MailMessage())
        {
            mensaje.To.Add(correoDestino);//destino del correo
            mensaje.From = new MailAddress(correoOrigen, "Inventario");//correo de origen y nombre que se visualizará
            mensaje.Subject = "Codigo de validacion";//asunto del correo
            mensaje.Body = linkAcceso;
            mensaje.IsBodyHtml = true;
            using (SmtpClient smtp = new SmtpClient(servidor, puerto))
            {
                smtp.Credentials = new NetworkCredential(correoOrigen, contrasena);//credenciales de la cuenta de origen
                smtp.EnableSsl = true;
                smtp.Send(mensaje);//enviar correo
            }
        }
    }

}
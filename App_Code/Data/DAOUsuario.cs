using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;



public class DAOUsuario
{
    public EUsuario inicioSesion(EUsuario eUsuario)
    {
        using (var db = new MapeoLogin())
        {
            return db.Usuarios.Where(x => x.Correo.Equals(eUsuario.Correo) && x.Clave.Equals(eUsuario.Clave)).FirstOrDefault();
        }
    }

    public bool cedulaRegistrada(EUsuario eUsuario)
    {
        EUsuario cedula = new EUsuario();
        using (var db = new MapeoLogin())
        {
            cedula = db.Usuarios.Where(x => x.Cedula.Equals(eUsuario.Cedula)).FirstOrDefault();

            if(cedula == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }

    public bool correoRegistrado( EUsuario eUsuario)
    {
        EUsuario correoNuevo = new EUsuario();

        using (var db = new MapeoLogin())
        {
            correoNuevo = db.Usuarios.Where(x => x.Correo.Equals(eUsuario.Correo)).FirstOrDefault();

            if (correoNuevo == null)
            {
                return false;
            }
            else
            {
                return true; 
            }
        }
    }

    public void nuevoUsuario (EUsuario eUsuario)
    {
        using (var db = new MapeoLogin())
        {
            db.Usuarios.Add(eUsuario);
            db.SaveChanges();
        }
    }
}
using RentaPeliculas.DataContext;
using RentaPeliculas.Models;
using System.Collections.Generic;
using System.Linq;


namespace RentaPeliculas.Clases
{

    public class clsClientes : ICrud<Clientes>
    {
        CursoMVCEntities db = new CursoMVCEntities();
        public void CrudT(Clientes value, ECrud Accion)
        {
            db.CrudClientes(value.Id, value.Nombre,
                value.Apellido, value.Correo, value.Telefono, (short)Accion);

        }

        public Clientes GetT(Clientes value)
        {
            return db.GetClientes(value.Id).ToList().Select(x => new Clientes
            {
                Apellido = x.Apellido,
                Correo = x.Correo,
                Id = x.IdClientes,
                Nombre = x.Nombre,
                Telefono = x.Telefono
            }).ToList().First();
        }

        public List<Clientes> GetTs()
        {
            return db.GetClientes(null).ToList().Select(x => new Clientes
            {
                Apellido = x.Apellido,
                Correo = x.Correo,
                Id = x.IdClientes,
                Nombre = x.Nombre,
                Telefono = x.Telefono
            }).ToList();
        }
    }
}
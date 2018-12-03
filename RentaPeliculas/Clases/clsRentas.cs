using RentaPeliculas.DataContext;
using RentaPeliculas.Models;
using System.Collections.Generic;
using System.Linq;

namespace RentaPeliculas.Clases
{
    public class clsRentas : ICrud<Models.Rentas>
    {
        CursoMVCEntities db = new CursoMVCEntities();
        clsClientes _cliente = new clsClientes();


        public void CrudT(Rentas value, ECrud Accion)
        {
            db.CrudRentas(value.IdRenta, value.IdPelicula, value.IdCliente, value.Fecha, (short)Accion);
        }

        public Rentas GetT(Rentas value)
        {
            var RentaResult = db.GetRentas(value.IdRenta, value.IdPelicula, value.IdCliente).First();

            return new Rentas
            {
                IdCliente = RentaResult.IdCliente,
                Cliente = _cliente.GetT(new Clientes { Id = RentaResult.IdCliente }),
                Pelicula = db.Peliculas.Where(x => x.IdCatPeliculas == RentaResult.IdPelicula).Select(x => new CatPeliculas
                {
                    Descripcion = x.Descripcion,
                    Id = x.IdCatPeliculas,
                    Titulo = x.Titulo
                }).First(),
                Fecha = RentaResult.Fecha,
                IdPelicula = RentaResult.IdPelicula,
                IdRenta = RentaResult.IdRentas
            };
        }

        public List<Rentas> GetTs()
        {

            var RentaResult = db.GetRentas(null, null, null).ToList().Select(x => new Rentas
            {
                Cliente = _cliente.GetT(new Clientes { Id = x.IdCliente }),
                IdCliente = x.IdCliente,
                Fecha = x.Fecha,
                IdPelicula = x.IdPelicula,
                IdRenta = x.IdPelicula,
                Pelicula = db.Peliculas.Where(Y => Y.IdCatPeliculas == x.IdPelicula).Select(Y => new CatPeliculas
                {
                    Descripcion = Y.Descripcion,
                    Id = Y.IdCatPeliculas,
                    Titulo = Y.Titulo
                }).First()
            }).ToList();


            return RentaResult;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RentaPeliculas.Models
{
    public class Rentas
    {
        public Guid IdRenta { get; set; }
        public Guid IdPelicula { get; set; }
        public CatPeliculas Pelicula { get; set; }
        public Guid IdCliente { get; set; }
        public Clientes Cliente { get; set; }
        public DateTime Fecha { get; set; }

    }
}
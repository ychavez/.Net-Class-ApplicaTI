using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace RentaPeliculas.Models
{
    public class CatPeliculas
    {
        public Guid Id { get; set; }
        [Required(AllowEmptyStrings = false, ErrorMessage ="Usted debe especificar un titulo")]
        [MinLength(2,ErrorMessage ="el tamaño minimo para una pelicula es de 2 letras")]
        [MaxLength(40)]
        public string Titulo { get; set; }
        [MinLength(10, ErrorMessage = "el tamaño minimo para una pelicula es de 10 letras")]
        [MaxLength(100)]
        public string Descripcion { get; set; }

    }
}
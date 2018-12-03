using RentaPeliculas.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace RentaPeliculas.Controllers
{
    public class RentaPeliculasController : Controller
    {
        clsRentas _renta = new clsRentas();
        // GET: RentaPeliculas
        public ActionResult Index()
        {
            return View(_renta.GetTs());
        }
    }
}
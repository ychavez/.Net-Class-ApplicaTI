using RentaPeliculas.DataContext;
using RentaPeliculas.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web.Mvc;

namespace RentaPeliculas.Controllers
{   [Authorize]
    public class CatPeliculasController : Controller
    {
        private CursoMVCEntities db = new CursoMVCEntities();

        // GET: CatPeliculas
        [AllowAnonymous]
        public ActionResult Index()
        {
       
            List<CatPeliculas> peliculas = new List<CatPeliculas>();
            peliculas = db.Peliculas.ToList().Select(x => new CatPeliculas
            {
                Descripcion = x.Descripcion,
                Id = x.IdCatPeliculas,
                Titulo = x.Titulo
            }).ToList();


            return View(peliculas);
        }

        // GET: CatPeliculas/Details/34252345-23452345-23452345
        public ActionResult Details(Guid id)
        {
            CatPeliculas pelicula = new CatPeliculas();

            var _Pelicula = db.Peliculas.Find(id);

            if (_Pelicula == null)
            {
                return HttpNotFound();
            }

            pelicula = new CatPeliculas
            {
                Descripcion = _Pelicula.Descripcion,
                Id = _Pelicula.IdCatPeliculas,
                Titulo = _Pelicula.Titulo
            };


            return View(pelicula);
        }

        // GET: CatPeliculas/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: CatPeliculas/Create
        [HttpPost]
        public ActionResult Create(CatPeliculas peliculas)
        {
        
            try
            {

                Peliculas _pelicula = new Peliculas()
                {
                    Descripcion = peliculas.Descripcion,
                    IdCatPeliculas = Guid.NewGuid(),
                    Titulo = peliculas.Titulo
                    
                };

                db.Peliculas.Add(_pelicula);
                db.SaveChanges();
              

                return RedirectToAction("Index");
            }
            catch
            {
            
                return View();
            }
        }

        // GET: CatPeliculas/Edit/5
        public ActionResult Edit(Guid id)
        {
            CatPeliculas pelicula = new CatPeliculas();

            var _Pelicula = db.Peliculas.Find(id);

            if (_Pelicula == null)
            {
                return HttpNotFound();
            }

            pelicula = new CatPeliculas
            {
                Descripcion = _Pelicula.Descripcion,
                Id = _Pelicula.IdCatPeliculas,
                Titulo = _Pelicula.Titulo
            };


            return View(pelicula);

          
        }

        // POST: CatPeliculas/Edit/5
        [HttpPost]
        public ActionResult Edit(Guid id,  CatPeliculas peliculas)
        {
            try
            {
                peliculas.Id = id;

                Peliculas _Peliculas = new Peliculas()
                {
                    Descripcion = peliculas.Descripcion,
                    IdCatPeliculas = peliculas.Id,
                    Titulo = peliculas.Titulo

                };

                db.Entry(_Peliculas).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: CatPeliculas/Delete/5
        public ActionResult Delete(Guid id)
        {
            CatPeliculas pelicula = new CatPeliculas();

            var _Pelicula = db.Peliculas.Find(id);

            if (_Pelicula == null)
            {
                return HttpNotFound();
            }

            pelicula = new CatPeliculas
            {
                Descripcion = _Pelicula.Descripcion,
                Id = _Pelicula.IdCatPeliculas,
                Titulo = _Pelicula.Titulo
            };


            return View(pelicula);

        }

        // POST: CatPeliculas/Delete/5
        [HttpPost]
        public ActionResult Delete(Guid id, CatPeliculas peliculas)
        {
            try
            {
         

                db.Peliculas.Remove(db.Peliculas.Find(id));
                db.SaveChanges();

                return RedirectToAction("Index");
            }
            catch( Exception e)
            {
                return View();
            }
        }
    }
}

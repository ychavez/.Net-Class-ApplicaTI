using RentaPeliculas.Clases;
using RentaPeliculas.Models;
using System;
using System.Web.Mvc;

namespace RentaPeliculas.Controllers
{
    public class ClientesController : Controller
    {
        clsClientes _cliente = new clsClientes();
        // GET: Clientes
        public ActionResult Index()
        {
            return View(_cliente.GetTs());
        }

        // GET: Clientes/Details/5
        public ActionResult Details(Guid id)
        {
            return View(_cliente.GetT(new Models.Clientes { Id = id }));
        }

        // GET: Clientes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Clientes/Create
        [HttpPost]
        public ActionResult Create(Clientes Cliente)
        {
            try
            {
                _cliente.CrudT(Cliente, ECrud.Alta);

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Clientes/Edit/5
        public ActionResult Edit(Guid id)
        {
            return View(_cliente.GetT(new Clientes { Id = id }));
        }

        // POST: Clientes/Edit/5
        [HttpPost]
        public ActionResult Edit(Guid id, Clientes cliente)
        {
            try
            {
                cliente.Id = id;
                _cliente.CrudT(cliente, ECrud.Actualizar);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Clientes/Delete/5
        public ActionResult Delete(Guid id)
        {
            return View(_cliente.GetT(new Clientes { Id = id }));
        }

        // POST: Clientes/Delete/5
        [HttpPost]
        public ActionResult Delete(Guid id, Clientes clientes)
        {
            try
            {
                clientes.Id = id;
                _cliente.CrudT(clientes, ECrud.Borrar);
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}

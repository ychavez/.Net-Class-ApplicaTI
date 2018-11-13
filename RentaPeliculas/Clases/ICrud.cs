using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RentaPeliculas.Clases
{
    interface ICrud<T> where T:class
    {
        T GetT(T value);
        List<T> GetTs();

        void CrudT(T value, ECrud Accion);


    }
}

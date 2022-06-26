using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LecturaModel.DAL
{
    public interface ILecturasDAL
    {
        List<Lectura> ObtenerLecturas();
        void IngresarLectura(Lectura lectura);

        void Eliminar(string codLectura);
    }
}

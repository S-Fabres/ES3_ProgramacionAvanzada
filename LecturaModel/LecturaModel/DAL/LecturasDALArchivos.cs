using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LecturaModel.DAL
{
    public class LecturasDALArchivos : ILecturasDAL
    {
        private static List<Lectura> lecturas = new List<Lectura>();
        public void IngresarLectura(Lectura lectura)
        {
            lecturas.Add(lectura);
        }

        public void Eliminar(string codLectura)
        {
            Lectura eliminado = lecturas.Find(l => l.CodLectura == codLectura);
            lecturas.Remove(eliminado);
        }
        public List<Lectura> ObtenerLecturas()
        {
            return lecturas;
        }
    }
}

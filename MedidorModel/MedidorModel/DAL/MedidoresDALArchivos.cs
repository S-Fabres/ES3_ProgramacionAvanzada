using MedidorModel;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidorModel.DAL
{
    public class MedidoresDALArchivos : IMedidoresDAL
    {
        private static List<Medidor> medidores = new List<Medidor>();

        public void AgregarMedidor(Medidor medidor)
        {
            medidores.Add(medidor);
        }

        public void Eliminar(string idMedidor)
        {
            Medidor eliminado = medidores.Find(m => m.IdMedidor == idMedidor);
            medidores.Remove(eliminado);
        }

        public List<Medidor> ObtenerMedidores()
        {
            return medidores;
        }
    }
}

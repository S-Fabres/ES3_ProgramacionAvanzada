using MedidorModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidorModel.DAL
{
    public interface IMedidoresDAL
    {
        List<Medidor> ObtenerMedidores();
        void AgregarMedidor(Medidor medidor);

        void Eliminar(string idMedidor);
        
    }
}

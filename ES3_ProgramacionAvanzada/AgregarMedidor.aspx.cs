using MedidorModel;
using MedidorModel.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ES3_ProgramacionAvanzada
{
    public partial class AgregarMedidor : System.Web.UI.Page
    {
        private IMedidoresDAL medidoresDAL = new MedidoresDALArchivos();
        protected void Page_Load(object sender, EventArgs e)
        {
        ValidationSettings: UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            //este Metod se ejecuta cuando se carga el form
            //puede ser:
            // - Cuando es una peticion GET (!Postback)
            // - Cuando es una peticion POST (PostBack)

        }


        protected void agregarBtn_Click(object sender, EventArgs e)
        {
            
            //1. Obtener los datos del formulario
            string idMedidor = this.idMedidorTxt.Text.Trim();
            string lecturaInicial = this.lecturaInicialTxt.Text.Trim();
            string ultimaLectura = this.ultimaLecturaTxt.Text.Trim();
            
            //2. Construir el objeto de tipo Cliente
            List<Medidor> medidores = medidoresDAL.ObtenerMedidores();
            if(medidores.Any(m => m.IdMedidor == idMedidor)== true)
            {
                this.mensajesLbl.Text = "Medidor ya se encuentra registrado";
            }
            else
            {
                Medidor medidor = new Medidor()
                {
                    IdMedidor = idMedidor,
                    LecturaInicial = lecturaInicial,
                    UltimaLectura = ultimaLectura
                };
                medidoresDAL.AgregarMedidor(medidor);
                this.mensajesLbl.Text = "Medidor ingresado correctamente";
                Response.Redirect("VerMedidores.aspx");
            }


        }
    }
}
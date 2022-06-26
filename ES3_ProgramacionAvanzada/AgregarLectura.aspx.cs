using LecturaModel;
using LecturaModel.DAL;
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
    public partial class AgregarLectura : System.Web.UI.Page
    {
        private ILecturasDAL lecturasDAL = new LecturasDALArchivos();
        private IMedidoresDAL medidoresDAL = new MedidoresDALArchivos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Medidor> medidores = medidoresDAL.ObtenerMedidores();
                this.medidorDdl.DataSource = medidores;
                this.medidorDdl.DataTextField = "idMedidor";
                this.medidorDdl.DataBind();
            }
        }


        protected void agregarBtn_Click(object sender, EventArgs e)
        {
            string codLectura = this.codLecturaTxt.Text.Trim();
            string idMedidor = this.medidorDdl.SelectedValue;
            string fecha = CalendarFecha.SelectedDate.ToString("dd-MM-yyyy");
            string lecturaActual = this.lecturaActualTxt.Text.Trim();

            List<Lectura> lecturas = lecturasDAL.ObtenerLecturas();
            if (lecturas.Any(l  => l.CodLectura == codLectura)== true)
            {
                this.mensajesLbl.Text = "El código ingresado no se encuentra disponible";
            }
            else
            {
                List<Medidor> medidores = medidoresDAL.ObtenerMedidores();
                Medidor medidor = medidores.Find(m => m.IdMedidor == this.medidorDdl.SelectedItem.Value);

                Lectura lectura = new Lectura()
                {
                    CodLectura = codLectura,
                    IdMedidor = medidor.IdMedidor,
                    Fecha = fecha,
                    LecturaActual = lecturaActual
                };
                lecturasDAL.IngresarLectura(lectura);
                this.mensajesLbl.Text = "Lectura Ingresada";
                Response.Redirect("VerLecturas.aspx");
            }
            
        }
    }
}
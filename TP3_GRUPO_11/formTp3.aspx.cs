using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3_GRUPO_11
{
    public partial class WebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnGuardarLocalidad_Click(object sender, EventArgs e)
        {
            string Localidad = txtBoxLocalidad.Text;
            if (string.IsNullOrEmpty(Localidad))
            {


                txtBoxLocalidad.Text = "";
                lblVerificacion.Style["display"] = "block";
            }
            else if (Regex.IsMatch(Localidad, @"^\d+$"))
            {
                lblVerificacion.Text = "Una localidad no puede ser solo números.";
                lblVerificacion.Style["display"] = "block";
            }
            else
            {
                string txtNormalizado = Localidad.Replace(" ", "").ToLower();
                bool datosL = DDLLocalidades.Items.Cast<ListItem>().Any(item => item.Text.Replace(" ", "").ToLower() == txtNormalizado);


                if (!datosL)
                {
                    DDLLocalidades.Items.Add(new ListItem(Localidad));
                    lblVerificacion.Style["display"] = "none";
                }
                else
                {
                    lblVerificacion.Text = "Esa localidad ya fue agregada.";
                    lblVerificacion.Style["display"] = "block";
                }

                txtBoxLocalidad.Text = "";
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnGuardarUsuario_Click(object sender, EventArgs e)
        {

        }
    }
}
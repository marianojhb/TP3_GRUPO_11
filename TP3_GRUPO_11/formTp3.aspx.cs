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
                txtBoxLocalidad.Text = "";
                lblVerificacion.Style["display"] = "none";
            }
        }
    }
}
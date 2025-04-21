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
            lblVerificacion.Text = "";
            lblVerificacion.Visible = false;
            lblVerificacion.Style["display"] = "none";

            string Localidad = txtBoxLocalidad.Text.Trim();

            if (string.IsNullOrEmpty(Localidad) || string.IsNullOrWhiteSpace(Localidad))
            {
                lblVerificacion.Text = "Por favor ingrese una localidad.";
                lblVerificacion.Visible = true;
                lblVerificacion.Style["display"] = "block";
                txtBoxLocalidad.Text = "";
                return;
            }
            else if (Regex.IsMatch(Localidad, @"^\d+$"))
            {
                lblVerificacion.Text = "Una localidad no puede ser solo números.";
                lblVerificacion.Visible = true;
                lblVerificacion.Style["display"] = "block";
                return;
            }
            else
            {
                string txtNormalizado = Localidad.Replace(" ", "").ToLower();
                bool datosL = DDLLocalidades.Items.Cast<ListItem>().Any(item => item.Text.Replace(" ", "").ToLower() == txtNormalizado);


                if (!datosL)
                {
                    DDLLocalidades.Items.Add(new ListItem(Localidad));
                    lblVerificacion.Style["display"] = "none";
                    lblVerificacion.Text = "";
                    lblVerificacion.Visible = false;
                }
                else
                {
                    lblVerificacion.Visible = true;
                    lblVerificacion.Text = $"La localidad '{Localidad}' ya fue agregada.";
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
          lblMostrarUsuario.Text = "Bienvenido " + txtNombre.Text.Trim();
        }

        protected void btnToInicio_Click(object sender, EventArgs e)
        {
           Server.Transfer("Inicio.aspx");
        }
  }
}
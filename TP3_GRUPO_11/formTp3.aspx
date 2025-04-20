<%@ Page 
    Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="formTp3.aspx.cs" 
    Inherits="TP3_GRUPO_11.WebForm" 
    UnobtrusiveValidationMode="None"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Formulario TP3</title>
    <style>
        .btnGuardarLocalidadCss {
            max-width: 140px; 
            border: 1px thin; 
            border-radius: 10px; 
            padding: 10px; 
            background: none; 
            cursor: pointer;
            transition: .5s ease
        }

        .btnGuardarLocalidadCss:hover {
            background: #fca2a2
        }

        .grid-container {
             display: inline-grid; 
             grid-template-columns: 200px 200px auto; 
             gap: 10px;
        }

        .empty {
        }

        .grid-container > *:nth-child(3n) {
          color: red;
        }

    </style>
</head>
<body>
    <form id="formularioTp3" runat="server">
       
        <div class="grid-container">

            <div class="empty"></div>
            <h3>Localidades</h3>
            <div class="empty"></div>

            <asp:Label runat="server" style="padding-right: 10px;" Text="Nombre de Localidad:"></asp:Label>
            <asp:TextBox ID="txtBoxLocalidad" runat="server" placeholder="Ingrese localidad..." ValidationGroup="Grupo1"></asp:TextBox>
            <div><asp:Label id="lblVerificacion" class="formatovalidador" style="display: none; padding-top: 10px;" runat="server" Text="Tenes que ingresar una localidad..."></asp:Label></div>
            
            <div class="empty"></div>
            <asp:Button ID="btnGuardarLocalidad" CssClass="btnGuardarLocalidadCss" runat="server" Text="Guardar Localidad" OnClick="btnGuardarLocalidad_Click" ValidationGroup="Grupo1"/>
            <div class="empty"></div>

            <div class="empty"></div>
            <div class="empty"></div>
            <div class="empty"></div>        
        
            <div class="empty"></div>
            <h3>Usuarios</h3>
            <div class="empty"></div>

            <asp:Label runat="server" Style="padding-right: 10px;" Text="Nombre de Usuario: " ID="Label1"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server" placeholder="Ingrese su Nombre..." Height="16px" style="margin-left: 0px" ValidationGroup="Grupo2"></asp:TextBox>
            <div>
                <asp:RequiredFieldValidator 
                    ID="requiredNombreUsuario" runat="server" 
                    ControlToValidate="txtNombre" ValidationGroup="Grupo2" 
                    Text="Ingrese Nombre de Usario">
                </asp:RequiredFieldValidator>
            </div>

            <asp:Label runat="server" style="padding-right: 10px;" Text="Contraseña: " ID="lblContraseña"></asp:Label>
            <asp:TextBox 
                ID="txtContraseña" runat="server" 
                placeholder="Ingrese su Contraseña..." style="margin-left: 0px" ValidationGroup="Grupo2"
                TextMode="Password"></asp:TextBox>
            <div>
                <asp:RequiredFieldValidator 
                    ID="requiredContrasenia" runat="server" 
                    ControlToValidate="txtContraseña" ValidationGroup="Grupo2" 
                    Text="Ingrese una Contraseña">
                </asp:RequiredFieldValidator>
            </div>
       
            <div>Reingrese contraseña:</div>
            <asp:TextBox ID="txtReingresoContrasenia" runat="server" 
                TextMode="Password" placeholder="Reingrese su Contraseña..." ValidationGroup="Grupo2"></asp:TextBox>
            <div>
                <asp:CompareValidator ID="cvComparaContrasenias" runat="server" ControlToValidate="txtReingresoContrasenia" ControlToCompare="txtContraseña" ValidationGroup="Grupo2">Las contraseñas no coinciden</asp:CompareValidator>
                <asp:RequiredFieldValidator ID="rfvReingreso" runat="server" ControlToValidate="txtReingresoContrasenia" ValidationGroup="Grupo2">Debe reingresar la contraseña</asp:RequiredFieldValidator>
            </div>

            <div>Correo electrónico:</div>
            <asp:TextBox ID="txtCorreo" runat="server" ValidationGroup="Grupo2"></asp:TextBox>
            <div>
                <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreo" ForeColor="Red" ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ValidationGroup="Grupo2">Ingrese un correo válido</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreo" ForeColor="Red" ValidationGroup="Grupo2">Ingrese un correo</asp:RequiredFieldValidator>
             </div>
            
            <div>CP: </div>
            <asp:TextBox ID="txtCP" runat="server"></asp:TextBox>
            <div>
                <asp:RegularExpressionValidator ID="revCP" runat="server" ControlToValidate="txtCP" ForeColor="Red" ValidationExpression="^\d{4}$" ValidationGroup="Grupo2">Ingrese un CP válido</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="rfvCP" runat="server" ControlToValidate="txtCP" ForeColor="Red" ValidationGroup="Grupo2">Ingrese un código postal</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvCP" runat="server" ControlToValidate="txtCP" ErrorMessage="Ingrese un CP válido" MaximumValue="9999" MinimumValue="1000"></asp:RangeValidator>
            </div>

            <asp:Label ID="Label2" runat="server" Text="Localidades:"></asp:Label>
            <asp:DropDownList ID="DDLLocalidades" runat="server" Height="22px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="margin-top: 0px" Width="128px">
                <asp:ListItem>--Seleccione una Localidad--</asp:ListItem>
                <asp:ListItem>Munro</asp:ListItem>
                <asp:ListItem>Martinez</asp:ListItem>
                <asp:ListItem>Bercar</asp:ListItem>
                <asp:ListItem>Tigre</asp:ListItem>
                <asp:ListItem>San isidro</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="DDLLocalidades" ErrorMessage="Seleccione una Localidad" ForeColor="Red" ValidationGroup="Grupo2" InitialValue="--Seleccione un Item--"></asp:RequiredFieldValidator>

            <div class="empty"></div>
            <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" class="btnGuardarLocalidadCss" ValidationGroup="Grupo2" OnClick="btnGuardarUsuario_Click"/>
            <asp:Label runat="server" ID="lblMostrarUsuario"></asp:Label>
            
            <div class="empty"></div>
            <div class="empty"></div>
            <div class="empty"></div> 
            
            <asp:Button
            ID="btnToInicio"
            runat="server" Text="Ir a inicio.aspx"
            ValidationGroup="Grupo3" OnClick="btnToInicio_Click" />
            <div></div>
            <div></div>
       </div>
    </form>
</body>
</html>

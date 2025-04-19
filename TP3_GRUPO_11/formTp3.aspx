﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formTp3.aspx.cs" Inherits="TP3_GRUPO_11.WebForm" %>

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

        .gridcontainer {
             display: inline-grid; 
             grid-template-columns: 200px 200px auto; 
             gap: 10px;
        }

        .empty {
        }

        .formatovalidador {
            color: red;
        }

    </style>
</head>
<body>
    <form id="formularioTp3" runat="server">
       
        <div class="gridcontainer">

            <div class="empty"></div>
            <h3>Localidades</h3>
            <div class="empty"></div>

            <asp:Label runat="server" style="padding-right: 10px;" Text="Nombre de Localidad:"></asp:Label>
            <asp:TextBox ID="txtBoxLocalidad" runat="server" placeholder="Ingrese localidad..."></asp:TextBox>
            <div><asp:Label id="lblVerificacion" class="formatovalidador" style="display: none; padding-top: 10px;" runat="server" Text="Tenes que ingresar una localidad..."></asp:Label></div>
            
            <div class="empty"></div>
            <asp:Button ID="btnGuardarLocalidad" CssClass="btnGuardarLocalidadCss" runat="server" Text="Guardar Localidad" OnClick="btnGuardarLocalidad_Click"/>
            <div class="empty"></div>

            <div class="empty"></div>
            <div class="empty"></div>
            <div class="empty"></div>        
        
            <div class="empty"></div>
            <h3>Usuarios</h3>
            <div class="empty"></div>

            <asp:Label runat="server" Style="padding-right: 10px;" Text="Nombre de Usuario: " ID="Label1"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server" placeholder="Ingrese su Nombre..." Height="16px" style="margin-left: 0px"></asp:TextBox>
            <div class="formatovalidador"></div>

            <asp:Label runat="server" style="padding-right: 10px;" Text="Contraseña: " ID="lblContraseña"></asp:Label>
            <asp:TextBox ID="txtContraseña" runat="server" placeholder="Ingrese su Contraseña..." style="margin-left: 0px"></asp:TextBox>
            <div class="formatovalidador"></div>
       
            <div>Reingrese contraseña:</div>
            <asp:TextBox ID="txtReingresoContrasenia" runat="server" placeholder="Reingrese su Contraseña..."></asp:TextBox>
            <div class="formatovalidador">
                <asp:CompareValidator ID="cvComparaContrasenias" runat="server" ControlToValidate="txtReingresoContrasenia" ControlToCompare="txtContraseña">Las contraseñas no coinciden</asp:CompareValidator>
                <asp:RequiredFieldValidator ID="rfvReingreso" runat="server" ControlToValidate="txtReingresoContrasenia">Debe reingresar la contraseña</asp:RequiredFieldValidator>
            </div>

            <div class="empty"></div>
            <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" class="btnGuardarLocalidadCss"/>
            <div class="empty"></div>
        

            <%--Mensaje (Mariano): Usamos CSS Grid. Cada fila que se agregue en la tabla del formulario es un conjunto de 3 elementos  (pueden ser div, asp:algo, etc)
                Los anteriores los agrupé de a 3 para mejor lectura.
                
                --%>
        </div>
    </form>
</body>
</html>

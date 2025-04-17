<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formTp3.aspx.cs" Inherits="TP3_GRUPO_11.WebForm" %>

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
    </style>
</head>
<body>
    <form id="formularioTp3" runat="server" style="display: flex; justify-content: center; align-items: center; flex-direction: column;">
        <div id="divLocalidad" style="display: flex; flex-direction: column; gap: 30px;">
            <asp:Label runat="server" Text="Localidades" style="font: bold; font-size: x-large"></asp:Label>
            <section id="sectionLocalidad">
                <asp:Label runat="server" style="padding-right: 10px;" Text="Nombre de Localidad:"></asp:Label>
                <asp:TextBox ID="txtBoxLocalidad" runat="server" placeholder="Ingrese localidad..."></asp:TextBox>
                <asp:Label id="lblVerificacion" style="display: none; padding-top: 10px;" runat="server" Text="Tenes que ingresar una localidad..."></asp:Label>
            </section>
            <asp:Button ID="btnGuardarLocalidad" CssClass="btnGuardarLocalidadCss" runat="server" Text="Guardar Localidad" OnClick="btnGuardarLocalidad_Click"/>
        </div>
    </form>
</body>
</html>

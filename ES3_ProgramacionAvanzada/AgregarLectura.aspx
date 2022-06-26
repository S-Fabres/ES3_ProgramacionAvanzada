<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarLectura.aspx.cs" Inherits="ES3_ProgramacionAvanzada.AgregarLectura" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
    <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="mensajes">
                <asp:Label runat="server" ID="mensajesLbl" CssClass="text-success"></asp:Label>

            </div>
            <div class="card">
                <div class="card-header bg-dark text-white">
                    <h3>Agregar Lectura</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="codLecturaTxt">Código de lectura</label>
                        <asp:TextBox ID="codLecturaTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="medidorDdl">ID del medidor</label>
                        <asp:DropDownList runat="server" ID="medidorDdl" CssClass="form-control">

                        </asp:DropDownList>
                    </div>
                    
                    <div class="form-group">
                        <label for="CalendarFecha">Fecha de lectura</label>
                        <asp:Calendar ID="CalendarFecha" CssClass="form-control" runat="server"></asp:Calendar>
                    </div>
                    <div class="form-group">
                        <label for="lecturaActualTxt">Lectura actual</label>
                        <asp:TextBox ID="lecturaActualTxt" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" ID="agregarBtn" OnClick="agregarBtn_Click"
                            Text="Agregar" CssClass="btn btn-primary " /> 
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>

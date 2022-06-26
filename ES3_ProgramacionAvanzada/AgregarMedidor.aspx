<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="AgregarMedidor.aspx.cs" Inherits="ES3_ProgramacionAvanzada.AgregarMedidor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
    <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="mensajes">
                <asp:Label runat="server" ID="mensajesLbl" CssClass="text-success"></asp:Label>

            </div>
            <div class="card">
                <div class="card-header bg-dark text-white">
                    <h3>Agregar Medidor</h3>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label for="idMedidorTxt">ID del medidor</label>
                        <asp:TextBox ID="idMedidorTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVidMedidorTxt" runat="server" ErrorMessage="Debe llenar el campo" ControlToValidate="idMedidorTxt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="lecturaInicialTxt">Lectura Inicial</label>
                        <asp:TextBox ID="lecturaInicialTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="rvclass" runat="server" ControlToValidate="lecturaInicialTxt" ErrorMessage="Ingrese una lectura de entre 4 y 9 dígitos" MaximumValue="9" MinimumValue="4" ForeColor="Red"></asp:RangeValidator>
                    </div>
                    <div class="form-group">
                        <label for="ultimaLecturaTxt">Última Lectura</label>
                        <asp:TextBox ID="ultimaLecturaTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="ultimalecturaTxt" ErrorMessage="Ingrese una lectura de entre 4 y 9 dígitos" MaximumValue="9" MinimumValue="4" ForeColor="Red"></asp:RangeValidator>
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
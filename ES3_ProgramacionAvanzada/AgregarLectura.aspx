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
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Debe llenar el campo" ControlToValidate="codLecturaTxt" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    <div class="form-group">
                        <label for="medidorDdl">ID del medidor</label>
                        <asp:DropDownList runat="server" ID="medidorDdl" CssClass="form-control">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Debe registrar un medidor para continuar" ControlToValidate="medidorDdl" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                    
                    <div class="form-group">
                        <label for="CalendarFecha">Fecha de lectura</label>
                        <asp:Calendar ID="CalendarFecha" runat="server"></asp:Calendar>
                    </div>
                    <div class="form-group">
                        <div class="col-1">
                            <label for="horaTxt">Hora</label>
                            <asp:TextBox ID="horaTxt" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Debe llenar el campo" ControlToValidate="horaTxt" ForeColor="Red"></asp:RequiredFieldValidator>
                            <label for="minutosTxt">Minutos</label>
                            <asp:TextBox ID="minutosTxt" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Debe llenar el campo" ControlToValidate="minutosTxt" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="lecturaActualTxt">Lectura actual</label>
                        <asp:TextBox ID="lecturaActualTxt" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Debe llenar el campo" ControlToValidate="lecturaActualTxt" ForeColor="Red"></asp:RequiredFieldValidator>
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

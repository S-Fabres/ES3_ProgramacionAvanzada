<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="VerLecturas.aspx.cs" Inherits="ES3_ProgramacionAvanzada.VerLecturas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
<div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-danger text-white">
                    <h3>Ver Lecturas</h3>
                </div>
                <div class="card-body">
                    <asp:GridView CssClass="table table-hover table-bordered"
                        OnRowCommand="grillaLecturas_RowCommand"
                        AutoGenerateColumns="false"
                        runat="server" ID="grillaLecturas">
                        <Columns>
                            <asp:BoundField DataField="codLectura" HeaderText="Código de lectura" />
                            <asp:BoundField DataField="idMedidor" HeaderText="ID del medidor" />
                            <asp:BoundField DataField="fecha" HeaderText="Fecha" />
                            <asp:BoundField DataField="hora" HeaderText="Hora" />
                            <asp:BoundField DataField="lecturaActual" HeaderText="Lectura Actual" />    
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button
                                        CommandName="eliminar"
                                        CommandArgument='<%# Eval("codLectura") %>'
                                        runat="server" CssClass="btn btn-danger" Text="Eliminar" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

                    </asp:GridView>
                </div>
            </div>
        </div>

    </div>
</asp:Content>

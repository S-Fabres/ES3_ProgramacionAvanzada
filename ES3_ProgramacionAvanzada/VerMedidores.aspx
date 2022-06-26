<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="VerMedidores.aspx.cs" Inherits="ES3_ProgramacionAvanzada.VerMedidores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
        <div class="row">
        <div class="col-lg-6 mx-auto">
            <div class="card">
                <div class="card-header bg-danger text-white">
                    <h3>Ver Medidores</h3>
                </div>
                <div class="card-body">
                    <asp:GridView CssClass="table table-hover table-bordered"
                        OnRowCommand="grillaMedidores_RowCommand"
                        AutoGenerateColumns="false"
                        runat="server" ID="grillaMedidores">
                        <Columns>
                            <asp:BoundField DataField="IDMedidor" HeaderText="ID del medidor" />
                            <asp:BoundField DataField="LecturaInicial" HeaderText="Lectura Inicial" />
                            <asp:BoundField DataField="UltimaLectura" HeaderText="Última Lectura" />    
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button
                                        CommandName="eliminar"
                                        CommandArgument='<%# Eval("IDMedidor") %>'
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

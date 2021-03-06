unit uPagePrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.Imaging.pngimage;

type
  TfrmMenu = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Cunsultas1: TMenuItem;
    Utilitrios1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedor1: TMenuItem;
    Produtos1: TMenuItem;
    Usurio1: TMenuItem;
    Pedidos1: TMenuItem;
    Clientes2: TMenuItem;
    Fornecedores1: TMenuItem;
    Produtos2: TMenuItem;
    Pedidos2: TMenuItem;
    Usurio2: TMenuItem;
    Calculadora1: TMenuItem;
    Agenda1: TMenuItem;
    Panel2: TPanel;
    stBarMenu: TStatusBar;
    TmMenu: TTimer;
    spBtMenuPedido: TSpeedButton;
    spBtMenuCadastroCliente: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Image1: TImage;
    procedure TmMenuTimer(Sender: TObject);
    procedure spBtMenuCadastroClienteClick(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Pedidos1Click(Sender: TObject);
    procedure spBtMenuPedidoClick(Sender: TObject);
    procedure Usurio1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Agenda1Click(Sender: TObject);
    procedure Clientes2Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Produtos2Click(Sender: TObject);
    procedure Usurio2Click(Sender: TObject);
    procedure Pedidos2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

uses uCadastroCliente, uCadastroFornecedor, uCadastroProduto, uCadastroUsuario,
  uCadastroPedidos, uCadastroAgendamento, uConsultaCliente, uConsultaFornecedor,
  uConsultaProduto, uConsultaUsuario, uConsultaPedidos;

procedure TfrmMenu.Agenda1Click(Sender: TObject);
begin
  // Abrindo a agenda
  frmAgenda.ShowModal;
end;

procedure TfrmMenu.Clientes1Click(Sender: TObject);
begin
  // Abrindo o formulario de cadastro de cliente.
  frmCadastroCliente.ShowModal;
end;

procedure TfrmMenu.Clientes2Click(Sender: TObject);
begin
  // Abrindo o formulario de consulta de cliente.
  frmConsultaCliente.ShowModal;
end;

procedure TfrmMenu.Fornecedor1Click(Sender: TObject);
begin
  // Abrindo o formulario de cadastro de fornecedor.
  frmCadastroFornecedor.ShowModal;
end;

procedure TfrmMenu.Fornecedores1Click(Sender: TObject);
begin
  // Abrindo o formulario de consulta de fornecedor.
  frmConsultaFornecedor.show
end;

procedure TfrmMenu.Pedidos1Click(Sender: TObject);
begin
  // Abrindo o formulario de cadastro de ?suario.
  frmCadastroUsuario.ShowModal;
end;

procedure TfrmMenu.Pedidos2Click(Sender: TObject);
begin
   // Abrindo o formulario de consulta de pedidos.
  frmConsultaPedidos.ShowModal;
end;

procedure TfrmMenu.Produtos1Click(Sender: TObject);
begin
  // Abrindo o formulario de cadastro de produtos.
  frmCadastroProduto.ShowModal;
end;

procedure TfrmMenu.Produtos2Click(Sender: TObject);
begin
  // Abrindo o formulario de consulta de produto.
  frmConsultaProduto.ShowModal;
end;

procedure TfrmMenu.spBtMenuCadastroClienteClick(Sender: TObject);
begin
  frmCadastroCliente.ShowModal;
end;

procedure TfrmMenu.spBtMenuPedidoClick(Sender: TObject);
begin
  // Abrindo o formulario de cadastro de pedidos.
  frmCadastroPedidos.ShowModal;
end;

procedure TfrmMenu.SpeedButton3Click(Sender: TObject);
begin
  // Abrindo o formulario agenda.
  frmAgenda.ShowModal;
end;

procedure TfrmMenu.TmMenuTimer(Sender: TObject);
begin
  // Definindo DATA e HORA no componente Status Ber
  stBarMenu.Panels[0].Text := '  ' + FormatDateTime('  hh:nn:ss', now);
  stBarMenu.Panels[1].Text := '  ' + FormatDateTime
    ('dddd, dd "de" mmmm "de" yyyy', now);
end;

procedure TfrmMenu.Usurio1Click(Sender: TObject);
begin
  // Abrindo o formulario de cadastro de pedidos.
  frmCadastroPedidos.ShowModal;
end;

procedure TfrmMenu.Usurio2Click(Sender: TObject);
begin
  frmConsultaUsuario.ShowModal;
end;

end.

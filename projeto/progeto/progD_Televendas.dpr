program progD_Televendas;

uses
  Vcl.Forms,
  uPagePrincipal in '..\formularios\uPagePrincipal.pas' {frmMenu},
  uCadastroCliente in '..\formularios\uCadastroCliente.pas' {frmCadastroCliente},
  uDT_Conexao in '..\dadosModulos\uDT_Conexao.pas' {dtmConexao: TDataModule},
  uCadastroFornecedor in '..\formularios\uCadastroFornecedor.pas' {frmCadastroFornecedor},
  uCadastroProduto in '..\formularios\uCadastroProduto.pas' {frmCadastroProduto},
  uCadastroUsuario in '..\formularios\uCadastroUsuario.pas' {frmCadastroUsuario},
  uCadastroPedidos in 'uCadastroPedidos.pas' {frmCadastroPedidos},
  uCadastroAgendamento in '..\formularios\uCadastroAgendamento.pas' {frmAgenda},
  uConsultaCliente in '..\formularios\uConsultaCliente.pas' {frmConsultaCliente},
  uConsultaFornecedor in '..\formularios\uConsultaFornecedor.pas' {frmConsultaFornecedor},
  uConsultaProduto in '..\formularios\uConsultaProduto.pas' {frmConsultaProduto},
  uConsultaUsuario in '..\formularios\uConsultaUsuario.pas' {frmConsultaUsuario},
  uConsultaPedidos in '..\formularios\uConsultaPedidos.pas' {frmConsultaPedidos};
{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  Application.CreateForm(TdtmConexao, dtmConexao);
  Application.CreateForm(TfrmCadastroFornecedor, frmCadastroFornecedor);
  Application.CreateForm(TfrmCadastroProduto, frmCadastroProduto);
  Application.CreateForm(TfrmCadastroUsuario, frmCadastroUsuario);
  Application.CreateForm(TfrmCadastroPedidos, frmCadastroPedidos);
  Application.CreateForm(TfrmAgenda, frmAgenda);
  Application.CreateForm(TfrmConsultaCliente, frmConsultaCliente);
  Application.CreateForm(TfrmConsultaFornecedor, frmConsultaFornecedor);
  Application.CreateForm(TfrmConsultaProduto, frmConsultaProduto);
  Application.CreateForm(TfrmConsultaUsuario, frmConsultaUsuario);
  Application.CreateForm(TfrmConsultaPedidos, frmConsultaPedidos);
  Application.Run;
end.

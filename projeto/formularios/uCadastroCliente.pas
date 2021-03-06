unit uCadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons,
  Vcl.ExtCtrls, frxClass, frxDBSet;

type
  TfrmCadastroCliente = class(TForm)
    fdQueryCadastroCliente: TFDQuery;
    fdQueryCadastroClienteNOMECLIENTE: TStringField;
    fdQueryCadastroClienteCPF: TStringField;
    fdQueryCadastroClienteRG: TStringField;
    fdQueryCadastroClienteCELULAR: TStringField;
    fdQueryCadastroClienteTELEFONE: TStringField;
    fdQueryCadastroClienteEMAIL: TStringField;
    fdQueryCadastroClienteNOMERUA: TStringField;
    fdQueryCadastroClienteNUMEROCASA: TIntegerField;
    fdQueryCadastroClienteBAIRRO: TStringField;
    fdQueryCadastroClienteCIDADE: TStringField;
    fdQueryCadastroClienteESTADO: TStringField;
    dtCadastroCliente: TDataSource;
    Label4: TLabel;
    dbEdit_Nome: TDBEdit;
    Label5: TLabel;
    dbEdit_CPF: TDBEdit;
    Label6: TLabel;
    dbEdit_RG: TDBEdit;
    Label7: TLabel;
    dbEdit_Celular: TDBEdit;
    Label8: TLabel;
    dbEdit_Telefone: TDBEdit;
    Label9: TLabel;
    dbEdit_Email: TDBEdit;
    Label10: TLabel;
    dbEdit_NomeRua: TDBEdit;
    Label11: TLabel;
    dbEdit_NumeroCasa: TDBEdit;
    Label12: TLabel;
    dbEdit_NomeBairro: TDBEdit;
    Label13: TLabel;
    dbEdit_Cidade: TDBEdit;
    Label14: TLabel;
    dbEdit_Estado: TDBEdit;
    Label1: TLabel;
    spBt_CadastroClienteNovo: TSpeedButton;
    spBt_CadastroClienteCancelar: TSpeedButton;
    spBt_CadastroClienteSalvar: TSpeedButton;
    fdTableCadastroCliente: TFDTable;
    fdQueryCadastroClienteCODCLIENTE: TIntegerField;
    pHeader_C_Cliente: TPanel;
    pFooter_C_Cliente: TPanel;
    fdTableCadastroClienteCOD_CLIENTE: TStringField;
    fdTableCadastroClienteNOME_CLI: TStringField;
    fdTableCadastroClienteCNPJ: TStringField;
    fdTableCadastroClienteINSC_ESTADUAL: TStringField;
    fdTableCadastroClienteTELEFONE: TStringField;
    fdTableCadastroClienteCELULAR: TStringField;
    fdTableCadastroClienteEMAIL: TStringField;
    fdTableCadastroClienteLOGRADOURO: TStringField;
    fdTableCadastroClienteNUMERO: TStringField;
    fdTableCadastroClienteBAIRRO: TStringField;
    fdTableCadastroClienteESTADO: TStringField;
    fdTableCadastroClienteCIDADO: TStringField;
    procedure spBt_CadastroClienteNovoClick(Sender: TObject);
    procedure spBt_CadastroClienteSalvarClick(Sender: TObject);
    procedure spBt_CadastroClienteCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

uses uDT_Conexao;

procedure TfrmCadastroCliente.FormShow(Sender: TObject);
begin
      // Condi??o para fechar a tabela se a mesma estivar aberta ao abrir o form?lario.
      if fdTableCadastroCliente.Active = True then
          fdTableCadastroCliente.Active := False;
      end;


procedure TfrmCadastroCliente.spBt_CadastroClienteCancelarClick(
  Sender: TObject);
begin

        // Cancelar

    // Cancelando o cadastro.
    fdTableCadastroCliente.Cancel;

    // fechando a tabela.
    fdTableCadastroCliente.Close;

     // Setando (posicionando cursor do mouse) no Edit_Nome
    dbEdit_Nome.SetFocus;

end;

procedure TfrmCadastroCliente.spBt_CadastroClienteNovoClick(Sender: TObject);
begin
        // Editar

    // Abrindo a tabela para inserir dados.
    fdTableCadastroCliente.Open;

    // Ativando modo de inser??o
    fdTableCadastroCliente.Append;

     // Setando dbEdit_NomeUsuario.
    dbEdit_Nome.SetFocus;
end;

procedure TfrmCadastroCliente.spBt_CadastroClienteSalvarClick(Sender: TObject);
begin
        // salvar

    // Enviandos dados para a DB.
    fdTableCadastroCliente.Post;
    fdTableCadastroCliente.ApplyUpdates(0);
    fdTableCadastroCliente.CommitUpdates;

    // Fechando a tabela.
    fdTableCadastroCliente.close;

    // Fechando a tabela.
    //fdTableCadastroCliente.Close;

    // Setando (posicionando cursor do mouse) no Edit_Nome
    //dbEdit_Nome.SetFocus;

    // inserindo data ao resgistro.


end;

end.

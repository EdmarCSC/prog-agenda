unit uCadastroFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TfrmCadastroFornecedor = class(TForm)
    fdQueryCadastroFornecedor: TFDQuery;
    fdQueryCadastroFornecedorDTCADASTRO: TDateField;
    fdQueryCadastroFornecedorCODFORNECEDOR: TIntegerField;
    fdQueryCadastroFornecedorRAZAOSOCIAL: TStringField;
    fdQueryCadastroFornecedorNOMEFANTASIA: TStringField;
    fdQueryCadastroFornecedorCNPJ: TStringField;
    fdQueryCadastroFornecedorCELULAR: TStringField;
    fdQueryCadastroFornecedorTELEFONE: TStringField;
    fdQueryCadastroFornecedorEMAIL: TStringField;
    fdQueryCadastroFornecedorNOMERUA: TStringField;
    fdQueryCadastroFornecedorNUMEROCASA: TIntegerField;
    fdQueryCadastroFornecedorBAIRRO: TStringField;
    fdQueryCadastroFornecedorCIDADE: TStringField;
    fdQueryCadastroFornecedorESTADO: TStringField;
    dtCadastroFornecedor: TDataSource;
    Label4: TLabel;
    dbEdit_RazaoSocial: TDBEdit;
    Label5: TLabel;
    dbEdit_NomeFantasia: TDBEdit;
    Label6: TLabel;
    dbEdit_CNPJ: TDBEdit;
    Label7: TLabel;
    dbEdit_Celular: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    dbEdit_Email: TDBEdit;
    Label10: TLabel;
    dbEdit_NomeRua: TDBEdit;
    Label11: TLabel;
    dbEdit_NumeroCasa: TDBEdit;
    Label12: TLabel;
    dbEdit_Bairro: TDBEdit;
    Label13: TLabel;
    dbEdit_Cidade: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    spBt_: TSpeedButton;
    spBt_CadastroFornecedorCancelarar: TSpeedButton;
    spBt_CadastroFornecedorSalvar: TSpeedButton;
    fdTableCadastroFornecedor: TFDTable;
    pHeader_C_Fornecedor: TPanel;
    pFooter_C_Fornecedor: TPanel;
    fdTableCadastroFornecedorRAZAO_SOCIAL: TStringField;
    fdTableCadastroFornecedorNOMEFANTASIA: TStringField;
    fdTableCadastroFornecedorCNPJ: TStringField;
    fdTableCadastroFornecedorTELEFONE: TStringField;
    fdTableCadastroFornecedorEMAIL: TStringField;
    fdTableCadastroFornecedorLOGRADOURO: TStringField;
    fdTableCadastroFornecedorNUMERO: TStringField;
    fdTableCadastroFornecedorBAIRRO: TStringField;
    fdTableCadastroFornecedorCIDADE: TStringField;
    fdTableCadastroFornecedorESTADO: TStringField;
    fdTableCadastroFornecedorCELULAR: TStringField;
    Label15: TLabel;
    Label16: TLabel;
    procedure spBt_Click(Sender: TObject);
    procedure spBt_CadastroFornecedorSalvarClick(Sender: TObject);
    procedure spBt_CadastroFornecedorCancelararClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroFornecedor: TfrmCadastroFornecedor;

implementation

{$R *.dfm}

uses uDT_Conexao;

procedure TfrmCadastroFornecedor.spBt_CadastroFornecedorCancelararClick(
  Sender: TObject);
begin
     // Cancelando o cadastro.
    fdTableCadastroFornecedor.Cancel;

    // fechando a tabela.
    fdTableCadastroFornecedor.Close;

     // Setando (posicionando cursor do mouse) no Edit_Nome
    dbEdit_RazaoSocial.SetFocus;
end;

procedure TfrmCadastroFornecedor.spBt_CadastroFornecedorSalvarClick(
  Sender: TObject);
begin
       // salvar

    // Enviandos dados para a DB.
    fdTableCadastroFornecedor.Post;
    fdTableCadastroFornecedor.ApplyUpdates(0);
    fdTableCadastroFornecedor.CommitUpdates;

    // Fechando a tabela.
    fdTableCadastroFornecedor.close;

    // Fechando a tabela.
    //fdTableCadastroFornecedor.Close;

    // Setando (posicionando cursor do mouse) no Edit_Nome
    //dbEdit_Nome.SetFocus;

    // inserindo data ao resgistro.

end;

procedure TfrmCadastroFornecedor.spBt_Click(Sender: TObject);
begin
       // Editar

    // Abrindo a tabela para inserir dados.
    fdTableCadastroFornecedor.Open;

    // Ativando modo de inser??o
    fdTableCadastroFornecedor.Append;

     // Setando dbEdit_NomeUsuario.
    dbEdit_NomeFantasia.SetFocus;
end;

end.

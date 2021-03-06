unit uCadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmCadastroProduto = class(TForm)
    fdQueryCadastroProduto: TFDQuery;
    fdQueryCadastroProdutoDTCADASTRO: TDateField;
    fdQueryCadastroProdutoCODPRODUTO: TIntegerField;
    fdQueryCadastroProdutoCODEAN: TIntegerField;
    fdQueryCadastroProdutoDESCRICAO: TStringField;
    fdQueryCadastroProdutoFORNECEDOR: TStringField;
    fdQueryCadastroProdutoDTFABRICACAO: TDateField;
    fdQueryCadastroProdutoDTVALIDADE: TDateField;
    fdQueryCadastroProdutoVALOR: TStringField;
    fdQueryCadastroProdutoPESO: TStringField;
    fdQueryCadastroProdutoMARCA: TStringField;
    fdQueryCadastroProdutoMODELO: TStringField;
    fdQueryCadastroProdutoCOR: TStringField;
    fdQueryCadastroProdutoKIT: TStringField;
    dtCadastroProduto: TDataSource;
    dbEdit_EAN: TDBEdit;
    Label5: TLabel;
    dbEdit_Descricao: TDBEdit;
    Label6: TLabel;
    dbEdit_Fornecedor: TDBEdit;
    Label7: TLabel;
    dbEdit_DataFabricacao: TDBEdit;
    Label8: TLabel;
    dbEdit_DataValidade: TDBEdit;
    Label1: TLabel;
    spBt_CadastroNovo: TSpeedButton;
    spBt_CadastroCancelar: TSpeedButton;
    spBt_CadastroProdutoSalvar: TSpeedButton;
    fdTableCadastroProduto: TFDTable;
    pHeader_C_Produto: TPanel;
    pFooter_C_Produto: TPanel;
    codProduto: TLabel;
    fdTableCadastroProdutoDESCRICAO: TStringField;
    fdTableCadastroProdutoVALOR_UNI: TFMTBCDField;
    fdTableCadastroProdutoIPI: TFMTBCDField;
    fdTableCadastroProdutoST: TFMTBCDField;
    fdTableCadastroProdutoCOD_PRODUTO: TStringField;
    procedure spBt_CadastroProdutoSalvarClick(Sender: TObject);
    procedure spBt_CadastroNovoClick(Sender: TObject);
    procedure spBt_CadastroCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProduto: TfrmCadastroProduto;

implementation

{$R *.dfm}

uses uDT_Conexao;

procedure TfrmCadastroProduto.spBt_CadastroCancelarClick(Sender: TObject);
begin
     // Cancelando o cadastro.
    fdTableCadastroProduto.Cancel;

    // fechando a tabela.
    fdTableCadastroProduto.Close;

     // Setando (posicionando cursor do mouse) no Edit_Nome
    dbEdit_EAN.SetFocus;
end;

procedure TfrmCadastroProduto.spBt_CadastroNovoClick(Sender: TObject);
begin
       // Editar

    // Abrindo a tabela para inserir dados.
    fdTableCadastroProduto.Open;

    // Ativando modo de inser??o
    fdTableCadastroProduto.Append;

     // Setando dbEdit_NomeUsuario.
    dbEdit_EAN.SetFocus;
end;

procedure TfrmCadastroProduto.spBt_CadastroProdutoSalvarClick(Sender: TObject);
begin
         // salvar

    // Enviandos dados para a DB.
    fdTableCadastroProduto.Post;
    fdTableCadastroProduto.ApplyUpdates(0);
    fdTableCadastroProduto.CommitUpdates;

    // Fechando a tabela.
    fdTableCadastroProduto.close;

end;

end.

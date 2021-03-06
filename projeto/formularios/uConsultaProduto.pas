unit uConsultaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.StdCtrls, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, frxClass, frxGradient, frxDBSet;

type
  TfrmConsultaProduto = class(TForm)
    spConsultaDeFornecedor_Voltar: TSpeedButton;
    dbNavConsultaCliente: TDBNavigator;
    spConsultaDeFornecedor_Imprimir: TSpeedButton;
    pgC_ConsultaProduto: TPageControl;
    TabConsultProduto: TTabSheet;
    TabDetalheProduto: TTabSheet;
    Label1: TLabel;
    rdConsultaProduto: TRadioGroup;
    editConsultaProduto: TEdit;
    spBtConsultaClientePesquisa: TSpeedButton;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    fdQueryConsultaProduto: TFDQuery;
    dtConsultaProduto: TDataSource;
    SpeedButton1: TSpeedButton;
    pHeader_C_Produto: TPanel;
    pFooter_C_ProdutoC: TPanel;
    pFooter_C_ProdutoD: TPanel;
    procedure editConsultaProdutoChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure spBtConsultaClientePesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rdConsultaProdutoClick(Sender: TObject);
    procedure spConsultaDeFornecedor_VoltarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    itemPesqFornecedor, pesq: string;
  public
    { Public declarations }
  end;

var
  frmConsultaProduto: TfrmConsultaProduto;

implementation

{$R *.dfm}

uses uDT_Conexao;

procedure TfrmConsultaProduto.editConsultaProdutoChange(Sender: TObject);
begin
        //:= StrToInt(editConsulta.Text);

               // Condi??o para verificar se a pesquisa ser? realizada por um valor integer ou string.
        if rdConsultaProduto.ItemIndex = 0 or  2 or  3 then
          begin   // integer

            // Inserindo SQL no DataSet para pesquisa.
            fdQueryConsultaProduto.Close;
            fdQueryConsultaProduto.SQL.Clear;
             pesq := 'select * from TBLPRODUTO where '+ itemPesqFornecedor +' = '+chr(39)+editConsultaProduto.Text+chr(39);

            //  variavel recebendo instru??o que selecionar? a pesquisa feita pelo usu?rio no Edit.
            fdQueryConsultaProduto.SQL.Add(pesq);
            fdQueryConsultaProduto.Open;
          end
        else
          begin   // string

             // Inserindo SQL no DataSet para pesquisa.
            fdQueryConsultaProduto.Close;
            fdQueryConsultaProduto.SQL.Clear;
            pesq := 'select * from TBLPRODUTO where '+itemPesqFornecedor+' like '+chr(39)+editConsultaProduto.Text+'%'+chr(39);

            //  variavel recebendo instru??o que selecionar? a pesquisa feita pelo usu?rio no Edit.
            fdQueryConsultaProduto.SQL.Add(pesq);
            fdQueryConsultaProduto.Open;
          end;
end;


procedure TfrmConsultaProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        // Lipando EditConsulta.
          editConsultaProduto.Clear;
end;

procedure TfrmConsultaProduto.FormShow(Sender: TObject);
begin


        // Inserimdo o valor 0 no radioGroup na abertura do fomulario.
          rdConsultaProduto.ItemIndex := 0;

          // Setando PageControl na a abertura do formulrio (primeira p?gina).
        pgC_ConsultaProduto.ActivePage := TabConsultProduto;

        // Condi??o 'se' o dataset estiver aberto, ? instruido a fechar.
        if fdQueryConsultaProduto.Active = True then
           fdQueryConsultaProduto.Active := False;
end;

procedure TfrmConsultaProduto.rdConsultaProdutoClick(Sender: TObject);
begin
     // Condi??o caso para estipular por qual campo da tabela ser? execultada a
    //  a consulta com o Edit.
    case rdConsultaProduto.ItemIndex of
        0: itemPesqFornecedor := 'COD_PRODUTO';
        1: itemPesqFornecedor := 'DESCRICAO';
    end;
end;

procedure TfrmConsultaProduto.spBtConsultaClientePesquisaClick(Sender: TObject);
begin
        // Ativando TabDetalhe para apresentar as informa??es de pesquisa.
        pgC_ConsultaProduto.ActivePage := TabDetalheProduto;
end;

procedure TfrmConsultaProduto.spConsultaDeFornecedor_VoltarClick(
  Sender: TObject);
begin
         fdQueryConsultaProduto.Close;
         editConsultaProduto.Clear;
         pgC_ConsultaProduto.ActivePage := TabConsultProduto;
end;

procedure TfrmConsultaProduto.SpeedButton1Click(Sender: TObject);
begin
         // Executando um consulta detodos os clientes.
        fdQueryConsultaProduto.sql.Clear;
        fdQueryConsultaProduto.sql.Add('Commit');
        pgC_ConsultaProduto.ActivePage := TabDetalheProduto;
        fdQueryConsultaProduto.sql.Clear;
        fdQueryConsultaProduto.sql.Add('select * from tblproduto');
        fdQueryConsultaProduto.Open;
end;

end.

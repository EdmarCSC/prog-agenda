unit uConsultaFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, frxClass, frxDBSet,
  frxGradient;

type
  TfrmConsultaFornecedor = class(TForm)
    Label1: TLabel;
    rdConsultaFornecedor: TRadioGroup;
    pgConsultaFornecedor: TPageControl;
    tabConsultaFornecedor: TTabSheet;
    tabDetalheFornecedor: TTabSheet;
    SpeedButton1: TSpeedButton;
    spConsultaDeFornecedor_Voltar: TSpeedButton;
    DBGrid1: TDBGrid;
    spConsultaDeFornecedor_Imprimir: TSpeedButton;
    Label2: TLabel;
    fdQueryConsultaFornecedor: TFDQuery;
    dtConsultaFonecedor: TDataSource;
    dbNavConsultaCliente: TDBNavigator;
    Button1: TButton;
    editConsultaFornecedor: TEdit;
    pHeader_C_Produto: TPanel;
    pFooter_C_FornecedorD: TPanel;
    pFooter_C_FornecedorC: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure rdConsultaFornecedorClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure editConsultaFornecedorChange(Sender: TObject);
    procedure spConsultaDeFornecedor_VoltarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spConsultaDeFornecedor_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
      itemPesqFornecedor,  pesq : string;
  public
    { Public declarations }
  end;

var
  frmConsultaFornecedor: TfrmConsultaFornecedor;

implementation

{$R *.dfm}

uses uDT_Conexao;

procedure TfrmConsultaFornecedor.Button1Click(Sender: TObject);
begin
          // Executando um consulta detodos os clientes.
        fdQueryConsultaFornecedor.sql.Clear;
        fdQueryConsultaFornecedor.sql.Add('Commit');
        pgConsultaFornecedor.ActivePage := tabDetalheFornecedor;
        fdQueryConsultaFornecedor.sql.Clear;
        fdQueryConsultaFornecedor.sql.Add('select * from tblfornecedor');
        fdQueryConsultaFornecedor.Open;
end;

procedure TfrmConsultaFornecedor.editConsultaFornecedorChange(Sender: TObject);
begin

               // Condi??o para verificar se a pesquisa ser? realizada por um valor integer ou string.
        if rdConsultaFornecedor.ItemIndex = 0 or  2 or  3 then
          begin   // integer

            // Inserindo SQL no DataSet para pesquisa.
            fdQueryConsultaFornecedor.Close;
            fdQueryConsultaFornecedor.SQL.Clear;
             pesq := 'select * from TBLFORNECEDOR where '+ itemPesqFornecedor +' = '+chr(39)+editConsultaFornecedor.Text+chr(39);

            //  variavel recebendo instru??o que selecionar? a pesquisa feita pelo usu?rio no Edit.
            fdQueryConsultaFornecedor.SQL.Add(pesq);
            fdQueryConsultaFornecedor.Open;
          end
        else
          begin   // string

             // Inserindo SQL no DataSet para pesquisa.
            fdQueryConsultaFornecedor.Close;
            fdQueryConsultaFornecedor.SQL.Clear;
            pesq := 'select * from TBLFORNECEDOR where '+itemPesqFornecedor+' like '+chr(39)+editConsultaFornecedor.Text+'%'+chr(39);

            //  variavel recebendo instru??o que selecionar? a pesquisa feita pelo usu?rio no Edit.
            fdQueryConsultaFornecedor.SQL.Add(pesq);
            fdQueryConsultaFornecedor.Open;
          end;
end;


procedure TfrmConsultaFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
          // Lipando EditConsulta.
          editConsultaFornecedor.Clear;
end;

procedure TfrmConsultaFornecedor.FormShow(Sender: TObject);
begin

          // Inserimdo o valor 0 no radioGroup na abertura do fomulario.
           rdConsultaFornecedor.ItemIndex := 0;

        // Setando PageControl na a abertura do formulrio (primeira p?gina).
           pgConsultaFornecedor.ActivePage := tabConsultaFornecedor;

        // Condi??o 'se' o dataset estiver aberto, ? instruido a fechar.
        if fdQueryConsultaFornecedor.Active = True then
           fdQueryConsultaFornecedor.Active := False;
end;

procedure TfrmConsultaFornecedor.rdConsultaFornecedorClick(Sender: TObject);
begin
       // Condi??o caso para estipular por qual campo da tabela ser? execultada a
    //  a consulta com o Edit.
    case rdConsultaFornecedor.ItemIndex of
        0: itemPesqFornecedor := 'COD_FORNECEDOR';
        1: itemPesqFornecedor := 'RAZAO_SOCIAL';
        2: itemPesqFornecedor := 'NOMEFANTASIA';
        3: itemPesqFornecedor := 'CNPJ';
    end;
end;

procedure TfrmConsultaFornecedor.spConsultaDeFornecedor_ImprimirClick(
  Sender: TObject);
begin
      // Chamando o relat?rio
      //frxRel_Fornecedor.ShowReport();
end;

procedure TfrmConsultaFornecedor.spConsultaDeFornecedor_VoltarClick(
  Sender: TObject);
begin
       fdQueryConsultaFornecedor.Close;
       editConsultaFornecedor.Clear;
       pgConsultaFornecedor.ActivePage := tabConsultaFornecedor;
end;

procedure TfrmConsultaFornecedor.SpeedButton1Click(Sender: TObject);
begin
         // Ativando TabDetalhe para apresentar as informa??es de pesquisa.
      pgConsultaFornecedor.ActivePage := tabDetalheFornecedor;

end;
end.

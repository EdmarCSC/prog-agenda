unit uConsultaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, frxClass,
  frxDBSet, frxGradient, frxExportBaseDialog, frxExportPDF;
type
  TfrmConsultaCliente = class(TForm)
    pgConsultaCliente: TPageControl;
    TabConsulta: TTabSheet;
    TabDetalhe: TTabSheet;
    fdQueryConsultaClientes: TFDQuery;
    editConsultaCliente: TEdit;
    rdConsultaCliente: TRadioGroup;
    Label1: TLabel;
    dbDetalheConsulta: TDBGrid;
    dtConsultaCliente: TDataSource;
    spBtConsultaClientePesquisa: TSpeedButton;
    Label2: TLabel;
    spBt_Voltar: TSpeedButton;
    dbNavConsultaCliente: TDBNavigator;
    spBt_Imprimir: TSpeedButton;
    btConsultaTodosClientes: TButton;
    pFooter_C_ProdutoD: TPanel;
    pFooter_C_ProdutoC: TPanel;
    pHeader_C_Produto: TPanel;
    procedure spBtConsultaClientePesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btConsultaTodosClientesClick(Sender: TObject);
    procedure spBt_VoltarClick(Sender: TObject);
    procedure editConsultaClienteChange(Sender: TObject);
    procedure rdConsultaClienteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spBt_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
    // Variavel para armazenar condi??o caso do RadioGroup
    itemPesqCliente: string;

    // Vadi?bel que recebera a instru??o SQL para cunsulta no DB.
    pesq: string;

   // pesqInt: Integer;
  public
    { Public declarations }
  end;

var
  frmConsultaCliente: TfrmConsultaCliente;

implementation

{$R *.dfm}

uses uDT_Conexao;

procedure TfrmConsultaCliente.btConsultaTodosClientesClick(Sender: TObject);
begin
        fdQueryConsultaClientes.Close;
        fdQueryConsultaClientes.sql.Clear;
        fdQueryConsultaClientes.sql.Add('Commit');
        pgConsultaCliente.ActivePage := TabDetalhe;
        fdQueryConsultaClientes.sql.Clear;
        fdQueryConsultaClientes.sql.Add('select * from tblcliente');
        fdQueryConsultaClientes.Open;

end;

procedure TfrmConsultaCliente.editConsultaClienteChange(Sender: TObject);
begin

               // Condi??o para verificar se a pesquisa ser? realizada por um valor integer ou string.
        if rdConsultaCliente.ItemIndex = 0 or  2 or  3 then
          begin   // integer

            // Inserindo SQL no DataSet para pesquisa.
            fdQueryConsultaClientes.Close;
            fdQueryConsultaClientes.SQL.Clear;
             pesq := 'select * from TBLCLIENTES where '+itemPesqCliente+' = '+chr(39)+editConsultaCliente.Text+chr(39);

            //  variavel recebendo instru??o que selecionar? a pesquisa feita pelo usu?rio no Edit.
            fdQueryConsultaClientes.SQL.Add(pesq);
            fdQueryConsultaClientes.Open;
          end
        else
          begin   // string

             // Inserindo SQL no DataSet para pesquisa.
            fdQueryConsultaClientes.Close;
            fdQueryConsultaClientes.SQL.Clear;
            pesq := 'select * from TBLCLIENTES where '+itemPesqCliente+' like '+chr(39)+editConsultaCliente.Text+'%'+chr(39);

            //  variavel recebendo instru??o que selecionar? a pesquisa feita pelo usu?rio no Edit.
            fdQueryConsultaClientes.SQL.Add(pesq);
            fdQueryConsultaClientes.Open;
          end;
end;

procedure TfrmConsultaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
          // Lipando EditConsulta.
          editConsultaCliente.Clear;
end;

procedure TfrmConsultaCliente.FormShow(Sender: TObject);
begin
        // Inserimdo o valor 0 no radioGroup na abertura do fomulario.
          rdConsultaCliente.ItemIndex := 0;

        // Setando PageControl na primeira p?gina.
        pgConsultaCliente.ActivePage := TabConsulta;

        // Condi??o 'se' o dataset estiver aberto, ? instruido a fechar.
        if fdQueryConsultaClientes.Active = False then
           fdQueryConsultaClientes.Active := True;

end;

procedure TfrmConsultaCliente.rdConsultaClienteClick(Sender: TObject);
begin
       // Condi??o caso para estipular por qual campo da tabela ser? execultada a
    //  a consulta com o Edit.
    case rdConsultaCliente.ItemIndex of
        0: itemPesqCliente := 'COD_CLIENTE';
        1: itemPesqCliente := 'NOME_CLI';
        2: itemPesqCliente := 'CNPJ';
        3: itemPesqCliente := 'insc_estadual';
    end;
end;

procedure TfrmConsultaCliente.spBtConsultaClientePesquisaClick(Sender: TObject);
begin
      // Ativando TabDetalhe para apresentar as informa??es de pesquisa.
      pgConsultaCliente.ActivePage := TabDetalhe;


end;

procedure TfrmConsultaCliente.spBt_ImprimirClick(Sender: TObject);
begin
         // Chamando o relat?rio
      //frxRel_Cliente.ShowReport();
end;

procedure TfrmConsultaCliente.spBt_VoltarClick(Sender: TObject);
begin
      fdQueryConsultaClientes.Close;
      pgConsultaCliente.ActivePage := TabConsulta;
      editConsultaCliente.Clear;
end;

end.

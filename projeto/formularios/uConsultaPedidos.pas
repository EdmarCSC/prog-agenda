unit uConsultaPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TfrmConsultaPedidos = class(TForm)
    Label1: TLabel;
    pgConsultaPedido: TPageControl;
    TabConsultaProduto: TTabSheet;
    TabDetalheProduto: TTabSheet;
    rdConsultaPedido: TRadioGroup;
    editConsultaPedido: TEdit;
    spBtConsultaClientePesquisa: TSpeedButton;
    spBt_Voltar: TSpeedButton;
    dbNavConsultaCliente: TDBNavigator;
    spBt_Imprimir: TSpeedButton;
    lbTetalheConsula: TLabel;
    DBGrid1: TDBGrid;
    fdQueryConsultaPedidos: TFDQuery;
    dtCunsultaPedidos: TDataSource;
    lbNomeClentePedido: TLabel;
    lbNomeContato: TLabel;
    lbCodCliente: TLabel;
    fdQueryConsulta_Item_Pedidos: TFDQuery;
    dtConsulta_Item_Pedido: TDataSource;
    pFooter_C_PedidoD: TPanel;
    pHeader_C_PedidoC: TPanel;
    pFooter_C_ProdutoC: TPanel;
    procedure FormShow(Sender: TObject);
    procedure rdConsultaPedidoClick(Sender: TObject);
    procedure editConsultaPedidoChange(Sender: TObject);
    procedure spBtConsultaClientePesquisaClick(Sender: TObject);
    procedure spBt_VoltarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    // variavel que recebera dado para pesquisa fdQueryCunsultaPedidos.
    itemPesqPedidos: string;
  public
    { Public declarations }
  end;

var
  frmConsultaPedidos: TfrmConsultaPedidos;

implementation

{$R *.dfm}

uses uDT_Conexao;

procedure TfrmConsultaPedidos.editConsultaPedidoChange(Sender: TObject);
var
  pesq: string;
begin
               // Condi??o para verificar se a pesquisa ser? realizada por um valor integer ou string.
        if rdConsultaPedido.ItemIndex = 0 or  2 or  3 then
          begin   // integer
             // Query 1
            // Inserindo SQL no DataSet para pesquisa.
            fdQueryConsultaPedidos.Close;
            fdQueryConsultaPedidos.SQL.Clear;
             pesq := 'select * from TBLPedido where '+ ItemPesqPedidos +' = '+chr(39)+editConsultaPedido.Text+chr(39);

            //  variavel recebendo instru??o que selecionar? a pesquisa feita pelo usu?rio no Edit.
            fdQueryConsultaPedidos.SQL.Add(pesq);
            fdQueryConsultaPedidos.Open;

             // Query 2
            // Inserindo SQL no DataSet para pesquisa.
            fdQueryConsulta_Item_Pedidos.Close;
            fdQueryConsulta_Item_Pedidos.SQL.Clear;
             pesq := 'select * from TBLItem_Pedido where '+ ItemPesqPedidos +' = '+chr(39)+editConsultaPedido.Text+chr(39);

            //  variavel recebendo instru??o que selecionar? a pesquisa feita pelo usu?rio no Edit.
            fdQueryConsulta_Item_Pedidos.SQL.Add(pesq);
            fdQueryConsulta_Item_Pedidos.Open;
          end
        else
          begin   // string
             // Query 1
             // Inserindo SQL no DataSet para pesquisa.
            fdQueryConsultaPedidos.Close;
            fdQueryConsultaPedidos.SQL.Clear;
            pesq := 'select * from TBLPedido  where '+ItemPesqPedidos+' like '+chr(39)+editConsultaPedido.Text+'%'+chr(39);

            //  variavel recebendo instru??o que selecionar? a pesquisa feita pelo usu?rio no Edit.
            fdQueryConsultaPedidos.SQL.Add(pesq);
            fdQueryConsultaPedidos.Open;

            // Query 2
             // Inserindo SQL no DataSet para pesquisa.
            fdQueryConsulta_Item_Pedidos.Close;
            fdQueryConsulta_Item_Pedidos.SQL.Clear;
            pesq := 'select * from TBLItem_Pedido  where '+ItemPesqPedidos+' like '+chr(39)+editConsultaPedido.Text+'%'+chr(39);

            //  variavel recebendo instru??o que selecionar? a pesquisa feita pelo usu?rio no Edit.
            fdQueryConsulta_Item_Pedidos.SQL.Add(pesq);
            fdQueryConsulta_Item_Pedidos.Open;

          end;
end;

procedure TfrmConsultaPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
          // Lipando EditConsulta.
          editConsultaPedido.Clear;
end;

procedure TfrmConsultaPedidos.FormShow(Sender: TObject);
begin
     begin

        // Inserimdo o valor 0 no radioGroup na abertura do fomulario.
          rdConsultaPedido.ItemIndex := 0;

        // Setando PageControl na a abertura do formulrio (primeira p?gina).
          pgConsultaPedido.ActivePage := TabConsultaProduto;

        // Condi??o 'se' o dataset estiver aberto, ? instruido a fechar.
        if fdQueryConsultaPedidos.Active or fdQueryConsulta_Item_Pedidos.Active = True then
          begin
           fdQueryConsultaPedidos.Active := False;
           fdQueryConsulta_Item_Pedidos.Active := False;
          end;

end;
end;

procedure TfrmConsultaPedidos.rdConsultaPedidoClick(Sender: TObject);
begin
         // Condi??o caso para estipular por qual campo da tabela ser? execultada a
    //  a consulta com o Edit.
    case rdConsultaPedido.ItemIndex of
        0: itemPesqPedidos := 'COD_PEDIDO';
        1: itemPesqPedidos := 'NOME_cli';
        2: itemPesqPedidos := 'CPF';
        3: itemPesqPedidos := 'CNPJ';
    end;
end;

procedure TfrmConsultaPedidos.spBtConsultaClientePesquisaClick(Sender: TObject);
begin
        // Ativando TabDetalhe para apresentar as informa??es de pesquisa.
        pgConsultaPedido.ActivePage := TabDetalheProduto;

        // Inserindo dados nas label lbNomeClentePedido, lbCodClente, lbContatoCientes.
        lbCodCliente.Caption       := dtCunsultaPedidos.DataSet.FieldByName('Cod_Pedido').Value;
        lbNomeContato.Caption      := dtCunsultaPedidos.DataSet.FieldByName('Contato').Value;
        lbNomeClentePedido.Caption := dtCunsultaPedidos.DataSet.FieldByName('Nome_Cli').Value;
end;

procedure TfrmConsultaPedidos.spBt_VoltarClick(Sender: TObject);
begin
       fdQueryConsultaPedidos.Close;
       fdQueryConsulta_Item_Pedidos.Close;
       editConsultaPedido.Clear;
       pgConsultaPedido.ActivePage := TabConsultaProduto;
end;

end.

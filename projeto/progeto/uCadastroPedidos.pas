unit uCadastroPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef, FireDAC.Phys, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  FireDAC.Comp.UI, Datasnap.DBClient, Datasnap.Provider, Vcl.ExtCtrls;

type
  TfrmCadastroPedidos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    spBt_NovoPedido: TSpeedButton;
    spBt_CancelarPedido: TSpeedButton;
    spBt_SalvarPedidp: TSpeedButton;
    Label4: TLabel;
    fdQueryCadastroPedidos: TFDQuery;
    fdQuery_Consultar_Produto: TFDQuery;
    fdTableCadastroPedidos: TFDTable;
    fdQueryCadastroPedidosCODPEDIDO: TIntegerField;
    fdQueryCadastroPedidosNOMECLIENTE: TStringField;
    fdQueryCadastroPedidosDTCADASTRO: TStringField;
    fdQueryCadastroPedidosCONTATO: TStringField;
    Label5: TLabel;
    dbEditCodigoClientePedido: TDBEdit;
    dtCadastroPedidos: TDataSource;
    dbEditNomeClientePedido: TDBEdit;
    dbEditContatoClientePedido: TDBEdit;
    pHeader_C_Pedidos: TPanel;
    pFooter_C_Pedidos: TPanel;
    Panel1: TPanel;
    Label3: TLabel;
    dbEdit_Cod_Pedido_Produto: TDBEdit;
    Label6: TLabel;
    dbEdit_Descricao: TDBEdit;
    Label7: TLabel;
    dbEdit_ICMS: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    dbEdit_IPI: TDBEdit;
    Label10: TLabel;
    dbEdit_Cod_Produto: TDBEdit;
    Label11: TLabel;
    dbEdit_Quantidade: TDBEdit;
    Label12: TLabel;
    dbEdit_Valor_Total: TDBEdit;
    Label13: TLabel;
    dbEdit_Valor_Unitario: TDBEdit;
    tdConsulta_Produto: TDataSource;
    SpeedButton1: TSpeedButton;
    fdTableCadastroPedidosNOME_CLIENTE: TStringField;
    fdTableCadastroPedidosCONTATO: TStringField;
    fdTableCadastroPedidosCOD_PEDIDO: TIntegerField;
    fdTableCadastroPedidosCOD_CLIENTE: TStringField;
    fdTableItem_Pedidos: TFDTable;
    fdTableItem_PedidosDESCRI_PRODUTO: TStringField;
    fdTableItem_PedidosQUANTIDADE: TIntegerField;
    fdTableItem_PedidosICMS: TFMTBCDField;
    fdTableItem_PedidosIPI: TFMTBCDField;
    fdTableItem_PedidosST: TFMTBCDField;
    fdTableItem_PedidosVALOR_UNI: TFMTBCDField;
    fdTableItem_PedidosVALOR_TOTAL: TFMTBCDField;
    fdTableItem_PedidosCOD_PEDIDO: TIntegerField;
    dtItemPedidos: TDataSource;
    fdTableItem_PedidosCOD_ITEM_PEDIDO: TStringField;
    fdTableCadastroPedidosID_TBLPEDIDO: TIntegerField;
    fdTableItem_PedidosID_TBLITEM_PEDIDO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure spBt_NovoPedidoClick(Sender: TObject);
    procedure spBt_SalvarPedidpClick(Sender: TObject);
    procedure dbEditContatoClientePedidoExit(Sender: TObject);
    procedure spBt_CancelarPedidoClick(Sender: TObject);
    procedure dbEdit_Cod_ProdutoExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
   // Variaveis para guardar valores ICMS e IPI
   V_Unitario, ICMS, IPI, V_Total: Real;

   //*function calc_Imposto(

   //



  public
    { Public declarations }
  end;

var
  frmCadastroPedidos: TfrmCadastroPedidos;

implementation

{$R *.dfm}

uses uDT_Conexao;

procedure TfrmCadastroPedidos.dbEditContatoClientePedidoExit(Sender: TObject);
begin
     // dbEditCodigoClientePedido.Text:= IntToStr(fdTableCadastroPedidosCODPEDIDO.Value);
end;

procedure TfrmCadastroPedidos.dbEdit_Cod_ProdutoExit(Sender: TObject);
var
  pesq: string;
begin
      // Consulatando produto tblProdutos
      // Inserindo SQL no DataSet para pesquisa.
            fdQuery_Consultar_Produto.Close;
            fdQuery_Consultar_Produto.SQL.Clear;
            pesq := 'select * from TBLPRODUTO where COD_PRODUTO like '+chr(39)+dbEdit_Cod_Produto.Text+'%'+chr(39);

            //  variavel recebendo instru??o que selecionar? a pesquisa feita pelo usu?rio no Edit.
            fdQuery_Consultar_Produto.SQL.Add(pesq);
            fdQuery_Consultar_Produto.Open;

            // Alimentando os dbEditDescricao, dbEditValorUn, dbEditIPI com resultado da consulta com fdQuery_Consultar_Produto.
            dbEdit_Descricao.Text := fdQuery_Consultar_Produto.FieldByName('Descricao').Value;
            dbEdit_Valor_Unitario.Text := fdQuery_Consultar_Produto.FieldByName('Valor_Uni').Value;
            dbEdit_IPI.Text := fdQuery_Consultar_Produto.FieldByName('IPI').Value;

            //fdTableItem_PedidosICODPRODUTO.Value := dbEdit_Cod_Produto.Text;
end;
procedure TfrmCadastroPedidos.FormShow(Sender: TObject);
begin
         // Condi??o para fechar a tabela se a mesma estivar aberta ao abrir o form?lario.
      if fdQueryCadastroPedidos.Active = True then
          fdQueryCadastroPedidos.Active := False;
end;

procedure TfrmCadastroPedidos.spBt_CancelarPedidoClick(Sender: TObject);
begin
      // Enviando dados para tbl Cadastro de pedidos TBLPEDIDOS.
      fdTableCadastroPedidos.Post;

      dbEdit_Cod_Produto.SetFocus;

      // Abrindo TBLITEM_PEDIDO.
      fdTableItem_Pedidos.Open;

     // Preparando a tabela TBLITEM_PEDIDO para receber dados.
      fdTableItem_Pedidos.Edit;
      fdTableItem_Pedidos.Append;

end;

procedure TfrmCadastroPedidos.spBt_NovoPedidoClick(Sender: TObject);
begin
    // Abrindo tabela Cadstro de Pedidos.
    fdTableCadastroPedidos.Open;

    //Preparando a tabela para receber dados.
    fdTableCadastroPedidos.Append;
    fdTableCadastroPedidos.Edit;


    // Setando o campo dbEditNomeClientePedido.
    dbEditNomeClientePedido.SetFocus;

end;

procedure TfrmCadastroPedidos.spBt_SalvarPedidpClick(Sender: TObject);
begin
      //fdTableCadastroPedidos.Post;
      fdTableItem_Pedidos.Post;

      // Aplicando altera??es na tabela fdTableItem_Pedidos.
      fdTableItem_Pedidos.ApplyUpdates(0);

      // Fechando tabelas
      fdTableCadastroPedidos.Close;
      fdTableItem_Pedidos.Close;

end;

procedure TfrmCadastroPedidos.SpeedButton1Click(Sender: TObject);
begin

      // Inserindo o item na tabela e pulando para a pr?ximo item.
      fdTableItem_Pedidos.Insert;

      // Setando dbEdit_Cod_Produto para digitar o pr?ximo produto.
      dbEdit_Cod_Produto.SetFocus;
end;

end.

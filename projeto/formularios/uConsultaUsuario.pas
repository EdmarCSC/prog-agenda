unit uConsultaUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, frxGradient,
  frxClass, frxDBSet;

type
  TfrmConsultaUsuario = class(TForm)
    Label1: TLabel;
    pgConsultaUsuario: TPageControl;
    tabConsultaUsuario: TTabSheet;
    tabDetalheConsulta: TTabSheet;
    rdConsultaUsuario: TRadioGroup;
    editConsultaUsuario: TEdit;
    SpeedButton1: TSpeedButton;
    fdQueryConsultaUsuario: TFDQuery;
    dtConsultaUsuario: TDataSource;
    Label2: TLabel;
    dbDetalheCulsulta: TDBGrid;
    spConsultaDeFornecedor_Voltar: TSpeedButton;
    dbNavConsultaCliente: TDBNavigator;
    spConsultaDeFornecedor_Imprimir: TSpeedButton;
    SpeedButton2: TSpeedButton;
    pHeader_C_Produto: TPanel;
    pFooter_C_UsuarioC: TPanel;
    pFooter_C_UsuarioD: TPanel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure editConsultaUsuarioChange(Sender: TObject);
    procedure rdConsultaUsuarioClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure spConsultaDeFornecedor_VoltarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spConsultaDeFornecedor_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
    itemPesqCliente, pesq: string;
  public
    { Public declarations }
  end;

var
  frmConsultaUsuario: TfrmConsultaUsuario;

implementation

{$R *.dfm}

uses uDT_Conexao;

procedure TfrmConsultaUsuario.editConsultaUsuarioChange(Sender: TObject);
begin
        //:= StrToInt(editConsulta.Text);

               // Condi??o para verificar se a pesquisa ser? realizada por um valor integer ou string.
        if rdConsultaUsuario.ItemIndex = 0 or  2 or  3 then
          begin   // integer

            // Inserindo SQL no DataSet para pesquisa.
            fdQueryConsultaUsuario.Close;
            fdQueryConsultaUsuario.SQL.Clear;
             pesq := 'select * from TBLUSUARIO where '+itemPesqCliente+' = '+chr(39)+editConsultaUsuario.Text+chr(39);

            //  variavel recebendo instru??o que selecionar? a pesquisa feita pelo usu?rio no Edit.
            fdQueryConsultaUsuario.SQL.Add(pesq);
            fdQueryConsultaUsuario.Open;
          end
        else
          begin   // string

             // Inserindo SQL no DataSet para pesquisa.
            fdQueryConsultaUsuario.Close;
            fdQueryConsultaUsuario.SQL.Clear;
            pesq := 'select * from TBLUSUARIO where '+itemPesqCliente+' like '+chr(39)+editConsultaUsuario.Text+'%'+chr(39);

            //  variavel recebendo instru??o que selecionar? a pesquisa feita pelo usu?rio no Edit.
            fdQueryConsultaUsuario.SQL.Add(pesq);
            fdQueryConsultaUsuario.Open;
          end;
end;

procedure TfrmConsultaUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
          // Lipando EditConsulta.
          editConsultaUsuario.Clear;
end;

procedure TfrmConsultaUsuario.FormShow(Sender: TObject);
begin
        // Inserimdo o valor 0 no radioGroup na abertura do fomulario.
           rdConsultaUsuario.ItemIndex := 0;

        // Setando PageControl na primeira p?gina.
           pgConsultaUsuario.ActivePage := tabConsultaUsuario;

        // Condi??o 'se' o dataset estiver aberto, ? instruido a fechar.
        if fdQueryConsultaUsuario.Active = False then
           fdQueryConsultaUsuario.Active := True;

end;
procedure TfrmConsultaUsuario.rdConsultaUsuarioClick(Sender: TObject);
begin

    // Condi??o caso para estipular por qual campo da tabela ser? execultada a
    //  a consulta com o Edit.
    case rdConsultaUsuario.ItemIndex of
        0: itemPesqCliente := 'COD_USUARIO';
        1: itemPesqCliente := 'NOME_USUARIO';
        2: itemPesqCliente := 'LOGIN';
    end;
end;

procedure TfrmConsultaUsuario.spConsultaDeFornecedor_ImprimirClick(
  Sender: TObject);
begin
          //frxRel_Usuario.ShowReport();
end;

procedure TfrmConsultaUsuario.spConsultaDeFornecedor_VoltarClick(
  Sender: TObject);
begin
          fdQueryConsultaUsuario.Close;
          pgConsultaUsuario.ActivePage := tabConsultaUsuario;
          editConsultaUsuario.Clear;
end;

procedure TfrmConsultaUsuario.SpeedButton1Click(Sender: TObject);
begin
          // Ativando TabDetalhe para apresentar as informa??es de pesquisa.
      pgConsultaUsuario.ActivePage := tabDetalheConsulta;

end;

procedure TfrmConsultaUsuario.SpeedButton2Click(Sender: TObject);
begin
            fdQueryConsultaUsuario.Close;
            fdQueryConsultaUsuario.sql.Clear;
            fdQueryConsultaUsuario.sql.Add('Commit');
            pgConsultaUsuario.ActivePage := tabDetalheConsulta;
            fdQueryConsultaUsuario.sql.Clear;
            fdQueryConsultaUsuario.sql.Add('select * from tblusuario');
            fdQueryConsultaUsuario.Open;

end;

end.

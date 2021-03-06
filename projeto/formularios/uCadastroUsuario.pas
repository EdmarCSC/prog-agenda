unit uCadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, frxClass, frxDBSet, frxGradient;

type
  TfrmCadastroUsuario = class(TForm)
    Label1: TLabel;
    fdQueryCadastroUsuario: TFDQuery;
    fdQueryCadastroUsuarioCODUSUARIO: TIntegerField;
    fdQueryCadastroUsuarioNOMEUSUARIO: TStringField;
    fdQueryCadastroUsuarioLOGINUSUARIO: TStringField;
    fdQueryCadastroUsuarioSENHAUSUARIO: TStringField;
    Label2: TLabel;
    dbEdit_NomeUsuario: TDBEdit;
    dtUsuario: TDataSource;
    Label3: TLabel;
    dbEdit_LoginUsuario: TDBEdit;
    Label4: TLabel;
    dbEdit_SenhaUsuario: TDBEdit;
    spBtCadastroUsuarioNovo: TButton;
    spBtCadastroUsuarioCancelar: TButton;
    spBtCadastroUsuarioSalvar: TButton;
    fdTableCadastroUsuario: TFDTable;
    pHeader_C_Usuario: TPanel;
    pFooter_C_Usuario: TPanel;
    fdTableCadastroUsuarioNOME_USUARIO: TStringField;
    fdTableCadastroUsuarioLOGIN: TStringField;
    fdTableCadastroUsuarioSENHA: TStringField;
    procedure spBtCadastroUsuarioSalvarClick(Sender: TObject);
    procedure spBtCadastroUsuarioNovoClick(Sender: TObject);
    procedure spBtCadastroUsuarioCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroUsuario: TfrmCadastroUsuario;

implementation

{$R *.dfm}

uses uDT_Conexao;

procedure TfrmCadastroUsuario.spBtCadastroUsuarioCancelarClick(Sender: TObject);
begin
     // Cancelar

    // Cancelando o cadastro.
    fdTableCadastroUsuario.Cancel;

    // fechando a tabela.
    fdTableCadastroUsuario.Close;

     // Setando (posicionando cursor do mouse) no Edit_Nome
    dbEdit_NomeUsuario.SetFocus;


end;

procedure TfrmCadastroUsuario.spBtCadastroUsuarioNovoClick(Sender: TObject);
begin
        // Editar

    // Abrindo a tabela para inserir dados.
    fdTableCadastroUsuario.Open;

    // Ativando modo de inser??o
    fdTableCadastroUsuario.Append;

    // Setando dbEdit_NomeUsuario.
    dbEdit_NomeUsuario.SetFocus;

end;
procedure TfrmCadastroUsuario.spBtCadastroUsuarioSalvarClick(Sender: TObject);
begin
        // salvar

    // Enviandos dados para a DB.
    fdTableCadastroUsuario.Post;
    fdTableCadastroUsuario.ApplyUpdates(0);
    fdTableCadastroUsuario.CommitUpdates;

    // Fechando a tabela.
    fdTableCadastroUsuario.close;

    // Fechando a tabela.
    //fdTableCadastroUsuario.Close;

    // Setando (posicionando cursor do mouse) no Edit_Nome
    //dbEdit_Nome.SetFocus;

    // inserindo data ao resgistro.


end;

end.

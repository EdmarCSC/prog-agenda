unit uCadastroAgendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmAgenda = class(TForm)
    Label1: TLabel;
    fdTableCadastroAgendamento: TFDTable;
    fdTableCadastroAgendamentoDTAGENDAMENTO: TStringField;
    fdTableCadastroAgendamentoHRAGENDAMENTO: TStringField;
    fdTableCadastroAgendamentoNOMECLIENTE: TStringField;
    fdTableCadastroAgendamentoCONTATO: TStringField;
    fdTableCadastroAgendamentoASSUNTO: TStringField;
    dtCadastroAgendamento: TDataSource;
    Label2: TLabel;
    dbEditDataAgendamento: TDBEdit;
    Label3: TLabel;
    dbEditHoraAgendamento: TDBEdit;
    Label4: TLabel;
    dbEditNomeClienteAgendamento: TDBEdit;
    Label5: TLabel;
    dbEditContatoAgendamento: TDBEdit;
    spBt_NovoAgendamento: TSpeedButton;
    spBt_CancelarAgendamento: TSpeedButton;
    spBt_SalvarAgendamento: TSpeedButton;
    Observações: TLabel;
    dbM_Anotacao: TDBMemo;
    pFooter_C_Agenda: TPanel;
    pHeader_C_Agenda: TPanel;
    procedure spBt_NovoAgendamentoClick(Sender: TObject);
    procedure spBt_SalvarAgendamentoClick(Sender: TObject);
    procedure spBt_CancelarAgendamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAgenda: TfrmAgenda;

implementation

{$R *.dfm}

uses uDT_Conexao;

procedure TfrmAgenda.spBt_CancelarAgendamentoClick(Sender: TObject);
begin
       // Cancelar o cadastro.
        fdTableCadastroAgendamento.Cancel;

       // Fechando DataSet.
        fdTableCadastroAgendamento.Close;
end;

procedure TfrmAgenda.spBt_NovoAgendamentoClick(Sender: TObject);
begin
        // Editar

    // Abrindo a tabela para inserir dados.
    fdTableCadastroAgendamento.Open;

    // Ativando modo de inserção
    fdTableCadastroAgendamento.Append;

     // Setando dbEdit_NomeUsuario.
    dbEditDataAgendamento.SetFocus;
end;
procedure TfrmAgenda.spBt_SalvarAgendamentoClick(Sender: TObject);
begin
        // salvar

    // Enviandos dados para a DB.
    fdTableCadastroAgendamento.Post;
    fdTableCadastroAgendamento.ApplyUpdates(0);
    fdTableCadastroAgendamento.CommitUpdates;

    // Fechando a tabela.
    fdTableCadastroAgendamento.close;


end;
end.

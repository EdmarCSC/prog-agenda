object frmAgenda: TfrmAgenda
  Left = 0
  Top = 0
  Margins.Left = 0
  Margins.Top = 0
  Margins.Right = 0
  Margins.Bottom = 0
  Caption = 'Agenda'
  ClientHeight = 511
  ClientWidth = 914
  Color = clAppWorkSpace
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 89
    Width = 914
    Height = 42
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Alignment = taCenter
    Caption = 'Agenda'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ExplicitWidth = 136
  end
  object Label2: TLabel
    Left = 116
    Top = 159
    Width = 23
    Height = 13
    Caption = 'Data'
    FocusControl = dbEditDataAgendamento
  end
  object Label3: TLabel
    Left = 244
    Top = 159
    Width = 23
    Height = 13
    Caption = 'Hora'
    FocusControl = dbEditHoraAgendamento
  end
  object Label4: TLabel
    Left = 116
    Top = 205
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = dbEditNomeClienteAgendamento
  end
  object Label5: TLabel
    Left = 444
    Top = 205
    Width = 39
    Height = 13
    Caption = 'Contato'
    FocusControl = dbEditContatoAgendamento
  end
  object Observações: TLabel
    Left = 116
    Top = 248
    Width = 39
    Height = 13
    Caption = 'Contato'
    FocusControl = dbEditContatoAgendamento
  end
  object spBt_NovoAgendamento: TSpeedButton
    Left = 776
    Top = 264
    Width = 49
    Height = 37
    Caption = 'Novo'
    OnClick = spBt_NovoAgendamentoClick
  end
  object spBt_SalvarAgendamento: TSpeedButton
    Left = 776
    Top = 399
    Width = 49
    Height = 37
    Caption = 'Salvar'
    OnClick = spBt_SalvarAgendamentoClick
  end
  object spBt_CancelarAgendamento: TSpeedButton
    Left = 776
    Top = 332
    Width = 49
    Height = 37
    Caption = 'Cancelar'
    OnClick = spBt_CancelarAgendamentoClick
  end
  object dbEditDataAgendamento: TDBEdit
    Left = 116
    Top = 178
    Width = 100
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    Ctl3D = True
    DataField = 'DTAGENDAMENTO'
    DataSource = dtCadastroAgendamento
    ParentCtl3D = False
    TabOrder = 0
  end
  object dbEditHoraAgendamento: TDBEdit
    Left = 244
    Top = 178
    Width = 100
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    Ctl3D = True
    DataField = 'HRAGENDAMENTO'
    DataSource = dtCadastroAgendamento
    ParentCtl3D = False
    TabOrder = 1
  end
  object dbEditNomeClienteAgendamento: TDBEdit
    Left = 116
    Top = 221
    Width = 300
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    Ctl3D = True
    DataField = 'NOMECLIENTE'
    DataSource = dtCadastroAgendamento
    ParentCtl3D = False
    TabOrder = 2
  end
  object dbEditContatoAgendamento: TDBEdit
    Left = 444
    Top = 221
    Width = 100
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    Ctl3D = True
    DataField = 'CONTATO'
    DataSource = dtCadastroAgendamento
    ParentCtl3D = False
    TabOrder = 3
  end
  object dbM_Anotacao: TDBMemo
    Left = 116
    Top = 264
    Width = 613
    Height = 172
    BevelInner = bvLowered
    BevelKind = bkTile
    Ctl3D = True
    DataField = 'ASSUNTO'
    DataSource = dtCadastroAgendamento
    ParentCtl3D = False
    TabOrder = 4
  end
  object pFooter_C_Agenda: TPanel
    Left = 0
    Top = 456
    Width = 914
    Height = 55
    Align = alBottom
    BevelInner = bvSpace
    BevelKind = bkTile
    Color = 8421440
    ParentBackground = False
    TabOrder = 5
  end
  object pHeader_C_Agenda: TPanel
    Left = 0
    Top = 0
    Width = 914
    Height = 89
    Align = alTop
    BevelInner = bvSpace
    BevelKind = bkTile
    Color = 8421440
    ParentBackground = False
    TabOrder = 6
  end
  object fdTableCadastroAgendamento: TFDTable
    CachedUpdates = True
    Connection = dtmConexao.FD_Conexao
    UpdateOptions.UpdateTableName = 'TBLAGENDA'
    TableName = 'TBLAGENDA'
    Left = 120
    Top = 25
    object fdTableCadastroAgendamentoDTAGENDAMENTO: TStringField
      FieldName = 'DTAGENDAMENTO'
      Origin = 'DTAGENDAMENTO'
      EditMask = '!99/99/9900;1;_'
    end
    object fdTableCadastroAgendamentoHRAGENDAMENTO: TStringField
      FieldName = 'HRAGENDAMENTO'
      Origin = 'HRAGENDAMENTO'
      EditMask = '!90:00;1;_'
    end
    object fdTableCadastroAgendamentoNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Origin = 'NOMECLIENTE'
      Size = 100
    end
    object fdTableCadastroAgendamentoCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      EditMask = '!\(999\)000-0000;1;_'
    end
    object fdTableCadastroAgendamentoASSUNTO: TStringField
      FieldName = 'ASSUNTO'
      Origin = 'ASSUNTO'
      Size = 255
    end
  end
  object dtCadastroAgendamento: TDataSource
    DataSet = fdTableCadastroAgendamento
    Left = 368
    Top = 24
  end
end

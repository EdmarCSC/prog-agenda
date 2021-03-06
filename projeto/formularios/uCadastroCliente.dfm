object frmCadastroCliente: TfrmCadastroCliente
  Left = 0
  Top = 0
  Caption = 'Cadastro de cliente'
  ClientHeight = 511
  ClientWidth = 914
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 106
    Top = 160
    Width = 61
    Height = 13
    Caption = 'Nome cliente'
    FocusControl = dbEdit_Nome
  end
  object Label5: TLabel
    Left = 449
    Top = 163
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = dbEdit_CPF
  end
  object Label6: TLabel
    Left = 586
    Top = 163
    Width = 87
    Height = 13
    Caption = 'Inscri'#231#227'o estadual'
    FocusControl = dbEdit_RG
  end
  object Label7: TLabel
    Left = 106
    Top = 213
    Width = 33
    Height = 13
    Caption = 'Celular'
    FocusControl = dbEdit_Celular
  end
  object Label8: TLabel
    Left = 242
    Top = 215
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = dbEdit_Telefone
  end
  object Label9: TLabel
    Left = 386
    Top = 213
    Width = 28
    Height = 13
    Caption = 'E-mail'
    FocusControl = dbEdit_Email
  end
  object Label10: TLabel
    Left = 106
    Top = 264
    Width = 19
    Height = 13
    Caption = 'Rua'
    FocusControl = dbEdit_NomeRua
  end
  object Label11: TLabel
    Left = 450
    Top = 264
    Width = 37
    Height = 13
    Caption = 'N'#176' casa'
    FocusControl = dbEdit_NumeroCasa
  end
  object Label12: TLabel
    Left = 586
    Top = 264
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = dbEdit_NomeBairro
  end
  object Label13: TLabel
    Left = 106
    Top = 312
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = dbEdit_Cidade
  end
  object Label14: TLabel
    Left = 450
    Top = 312
    Width = 33
    Height = 13
    Caption = 'Estado'
    FocusControl = dbEdit_Estado
  end
  object Label1: TLabel
    Left = 0
    Top = 89
    Width = 914
    Height = 42
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastro de clientes'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 361
  end
  object spBt_CadastroClienteNovo: TSpeedButton
    Left = 728
    Top = 176
    Width = 49
    Height = 37
    Caption = 'Novo'
    OnClick = spBt_CadastroClienteNovoClick
  end
  object spBt_CadastroClienteCancelar: TSpeedButton
    Left = 728
    Top = 244
    Width = 49
    Height = 37
    Caption = 'Cancelar'
    OnClick = spBt_CadastroClienteCancelarClick
  end
  object spBt_CadastroClienteSalvar: TSpeedButton
    Left = 728
    Top = 312
    Width = 49
    Height = 37
    Caption = 'Salvar'
    OnClick = spBt_CadastroClienteSalvarClick
  end
  object dbEdit_Nome: TDBEdit
    Left = 106
    Top = 176
    Width = 300
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'NOME_CLI'
    DataSource = dtCadastroCliente
    TabOrder = 0
  end
  object dbEdit_CPF: TDBEdit
    Left = 449
    Top = 176
    Width = 100
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'CNPJ'
    DataSource = dtCadastroCliente
    TabOrder = 1
  end
  object dbEdit_RG: TDBEdit
    Left = 586
    Top = 176
    Width = 100
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'INSC_ESTADUAL'
    DataSource = dtCadastroCliente
    TabOrder = 2
  end
  object dbEdit_Celular: TDBEdit
    Left = 106
    Top = 229
    Width = 100
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'CELULAR'
    DataSource = dtCadastroCliente
    TabOrder = 3
  end
  object dbEdit_Telefone: TDBEdit
    Left = 242
    Top = 229
    Width = 100
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'TELEFONE'
    DataSource = dtCadastroCliente
    TabOrder = 4
  end
  object dbEdit_Email: TDBEdit
    Left = 386
    Top = 229
    Width = 300
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'EMAIL'
    DataSource = dtCadastroCliente
    TabOrder = 5
  end
  object dbEdit_NomeRua: TDBEdit
    Left = 106
    Top = 280
    Width = 300
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'LOGRADOURO'
    DataSource = dtCadastroCliente
    TabOrder = 6
  end
  object dbEdit_NumeroCasa: TDBEdit
    Left = 450
    Top = 280
    Width = 100
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'NUMERO'
    DataSource = dtCadastroCliente
    TabOrder = 7
  end
  object dbEdit_NomeBairro: TDBEdit
    Left = 586
    Top = 280
    Width = 100
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'BAIRRO'
    DataSource = dtCadastroCliente
    TabOrder = 8
  end
  object dbEdit_Cidade: TDBEdit
    Left = 106
    Top = 328
    Width = 300
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'CIDADO'
    DataSource = dtCadastroCliente
    TabOrder = 9
  end
  object dbEdit_Estado: TDBEdit
    Left = 450
    Top = 328
    Width = 236
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'ESTADO'
    DataSource = dtCadastroCliente
    TabOrder = 10
  end
  object pHeader_C_Cliente: TPanel
    Left = 0
    Top = 0
    Width = 914
    Height = 89
    Align = alTop
    BevelInner = bvSpace
    BevelKind = bkTile
    Color = 8421440
    ParentBackground = False
    TabOrder = 11
  end
  object pFooter_C_Cliente: TPanel
    Left = 0
    Top = 456
    Width = 914
    Height = 55
    Align = alBottom
    BevelInner = bvSpace
    BevelKind = bkTile
    Color = 8421440
    ParentBackground = False
    TabOrder = 12
  end
  object fdQueryCadastroCliente: TFDQuery
    Connection = dtmConexao.FD_Conexao
    SQL.Strings = (
      'select * from tblCliente')
    Left = 776
    Top = 8
    object fdQueryCadastroClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Origin = 'NOMECLIENTE'
      Required = True
      Size = 100
    end
    object fdQueryCadastroClienteCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
    end
    object fdQueryCadastroClienteRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Required = True
    end
    object fdQueryCadastroClienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Required = True
    end
    object fdQueryCadastroClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
    end
    object fdQueryCadastroClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object fdQueryCadastroClienteNOMERUA: TStringField
      FieldName = 'NOMERUA'
      Origin = 'NOMERUA'
      Required = True
      Size = 100
    end
    object fdQueryCadastroClienteNUMEROCASA: TIntegerField
      FieldName = 'NUMEROCASA'
      Origin = 'NUMEROCASA'
      Required = True
    end
    object fdQueryCadastroClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object fdQueryCadastroClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object fdQueryCadastroClienteESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      Size = 100
    end
    object fdQueryCadastroClienteCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Origin = 'CODCLIENTE'
    end
  end
  object dtCadastroCliente: TDataSource
    DataSet = fdTableCadastroCliente
    Left = 776
    Top = 72
  end
  object fdTableCadastroCliente: TFDTable
    CachedUpdates = True
    IndexFieldNames = 'COD_CLIENTE'
    Connection = dtmConexao.FD_Conexao
    UpdateTransaction = dtmConexao.FDTransaction1
    UpdateOptions.UpdateTableName = 'TBLCLIENTE'
    TableName = 'TBLCLIENTE'
    Left = 648
    Top = 8
    object fdTableCadastroClienteCOD_CLIENTE: TStringField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
      Size = 30
    end
    object fdTableCadastroClienteNOME_CLI: TStringField
      FieldName = 'NOME_CLI'
      Origin = 'NOME_CLI'
      Size = 200
    end
    object fdTableCadastroClienteCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 30
    end
    object fdTableCadastroClienteINSC_ESTADUAL: TStringField
      FieldName = 'INSC_ESTADUAL'
      Origin = 'INSC_ESTADUAL'
      Size = 30
    end
    object fdTableCadastroClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 30
    end
    object fdTableCadastroClienteCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 30
    end
    object fdTableCadastroClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 30
    end
    object fdTableCadastroClienteLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Origin = 'LOGRADOURO'
      Size = 200
    end
    object fdTableCadastroClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 30
    end
    object fdTableCadastroClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
    end
    object fdTableCadastroClienteESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 100
    end
    object fdTableCadastroClienteCIDADO: TStringField
      FieldName = 'CIDADO'
      Origin = 'CIDADO'
      Size = 200
    end
  end
end

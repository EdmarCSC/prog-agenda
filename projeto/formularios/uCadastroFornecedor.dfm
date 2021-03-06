object frmCadastroFornecedor: TfrmCadastroFornecedor
  Left = 0
  Top = 0
  Caption = 'Cadastro fornecedor'
  ClientHeight = 511
  ClientWidth = 914
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 88
    Top = 180
    Width = 59
    Height = 13
    Caption = 'Raz'#227'o social'
    FocusControl = dbEdit_RazaoSocial
  end
  object Label5: TLabel
    Left = 438
    Top = 161
    Width = 69
    Height = 13
    Caption = 'Nome fantasia'
    FocusControl = dbEdit_NomeFantasia
  end
  object Label6: TLabel
    Left = 88
    Top = 228
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = dbEdit_CNPJ
  end
  object Label7: TLabel
    Left = 237
    Top = 206
    Width = 33
    Height = 13
    Caption = 'Celular'
    FocusControl = dbEdit_Celular
  end
  object Label8: TLabel
    Left = 381
    Top = 209
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 531
    Top = 206
    Width = 28
    Height = 13
    Caption = 'E-mail'
    FocusControl = dbEdit_Email
  end
  object Label10: TLabel
    Left = 88
    Top = 276
    Width = 19
    Height = 13
    Caption = 'Rua'
    FocusControl = dbEdit_NomeRua
  end
  object Label11: TLabel
    Left = 438
    Top = 257
    Width = 37
    Height = 13
    Caption = 'N'#176' casa'
    FocusControl = dbEdit_NumeroCasa
  end
  object Label12: TLabel
    Left = 585
    Top = 257
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = dbEdit_Bairro
  end
  object Label13: TLabel
    Left = 88
    Top = 332
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = dbEdit_Cidade
  end
  object Label14: TLabel
    Left = 438
    Top = 310
    Width = 33
    Height = 13
    Caption = 'Estado'
    FocusControl = DBEdit14
  end
  object Label1: TLabel
    Left = 0
    Top = 89
    Width = 914
    Height = 42
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastro de fornecedor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 415
  end
  object Label2: TLabel
    Left = 88
    Top = 206
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = dbEdit_Celular
  end
  object Label3: TLabel
    Left = 88
    Top = 161
    Width = 59
    Height = 13
    Caption = 'Raz'#227'o social'
    FocusControl = dbEdit_Celular
  end
  object spBt_: TSpeedButton
    Left = 784
    Top = 177
    Width = 49
    Height = 37
    Caption = 'Novo'
    OnClick = spBt_Click
  end
  object spBt_CadastroFornecedorCancelarar: TSpeedButton
    Left = 784
    Top = 244
    Width = 49
    Height = 37
    Caption = 'Cancelar'
    OnClick = spBt_CadastroFornecedorCancelararClick
  end
  object spBt_CadastroFornecedorSalvar: TSpeedButton
    Left = 784
    Top = 313
    Width = 49
    Height = 37
    Caption = 'Salvar'
    OnClick = spBt_CadastroFornecedorSalvarClick
  end
  object Label15: TLabel
    Left = 88
    Top = 310
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit14
  end
  object Label16: TLabel
    Left = 88
    Top = 257
    Width = 55
    Height = 13
    Caption = 'Logradouro'
    FocusControl = DBEdit14
  end
  object dbEdit_RazaoSocial: TDBEdit
    Left = 88
    Top = 177
    Width = 300
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'RAZAO_SOCIAL'
    DataSource = dtCadastroFornecedor
    TabOrder = 0
  end
  object dbEdit_NomeFantasia: TDBEdit
    Left = 438
    Top = 177
    Width = 300
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'NOMEFANTASIA'
    DataSource = dtCadastroFornecedor
    TabOrder = 1
  end
  object dbEdit_CNPJ: TDBEdit
    Left = 88
    Top = 225
    Width = 100
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'CNPJ'
    DataSource = dtCadastroFornecedor
    TabOrder = 2
  end
  object dbEdit_Celular: TDBEdit
    Left = 237
    Top = 225
    Width = 100
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'CELULAR'
    DataSource = dtCadastroFornecedor
    TabOrder = 3
  end
  object DBEdit8: TDBEdit
    Left = 381
    Top = 225
    Width = 100
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'TELEFONE'
    DataSource = dtCadastroFornecedor
    TabOrder = 4
  end
  object dbEdit_Email: TDBEdit
    Left = 531
    Top = 225
    Width = 207
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'EMAIL'
    DataSource = dtCadastroFornecedor
    TabOrder = 5
  end
  object dbEdit_NomeRua: TDBEdit
    Left = 88
    Top = 273
    Width = 300
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'NOMERUA'
    DataSource = dtCadastroFornecedor
    TabOrder = 6
  end
  object dbEdit_NumeroCasa: TDBEdit
    Left = 438
    Top = 273
    Width = 100
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'NUMEROCASA'
    DataSource = dtCadastroFornecedor
    TabOrder = 7
  end
  object dbEdit_Bairro: TDBEdit
    Left = 583
    Top = 273
    Width = 155
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'BAIRRO'
    DataSource = dtCadastroFornecedor
    TabOrder = 8
  end
  object dbEdit_Cidade: TDBEdit
    Left = 88
    Top = 329
    Width = 300
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'CIDADE'
    DataSource = dtCadastroFornecedor
    TabOrder = 9
  end
  object DBEdit14: TDBEdit
    Left = 438
    Top = 329
    Width = 300
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'ESTADO'
    DataSource = dtCadastroFornecedor
    TabOrder = 10
  end
  object pHeader_C_Fornecedor: TPanel
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
  object pFooter_C_Fornecedor: TPanel
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
  object fdQueryCadastroFornecedor: TFDQuery
    Connection = dtmConexao.FD_Conexao
    SQL.Strings = (
      'select * from tblFornecedor')
    Left = 584
    Top = 6
    object fdQueryCadastroFornecedorDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
      Origin = 'DTCADASTRO'
    end
    object fdQueryCadastroFornecedorCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Origin = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQueryCadastroFornecedorRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Required = True
      Size = 100
    end
    object fdQueryCadastroFornecedorNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Required = True
      Size = 100
    end
    object fdQueryCadastroFornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object fdQueryCadastroFornecedorCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Required = True
    end
    object fdQueryCadastroFornecedorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
    end
    object fdQueryCadastroFornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object fdQueryCadastroFornecedorNOMERUA: TStringField
      FieldName = 'NOMERUA'
      Origin = 'NOMERUA'
      Required = True
      Size = 100
    end
    object fdQueryCadastroFornecedorNUMEROCASA: TIntegerField
      FieldName = 'NUMEROCASA'
      Origin = 'NUMEROCASA'
      Required = True
    end
    object fdQueryCadastroFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object fdQueryCadastroFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object fdQueryCadastroFornecedorESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      Size = 100
    end
  end
  object dtCadastroFornecedor: TDataSource
    DataSet = fdTableCadastroFornecedor
    Left = 736
    Top = 8
  end
  object fdTableCadastroFornecedor: TFDTable
    CachedUpdates = True
    IndexFieldNames = 'CODFORNECEDOR'
    Connection = dtmConexao.FD_Conexao
    UpdateOptions.UpdateTableName = 'TBLFORNECEDOR'
    TableName = 'TBLFORNECEDOR'
    Left = 352
    Top = 16
    object fdTableCadastroFornecedorRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 200
    end
    object fdTableCadastroFornecedorNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 200
    end
    object fdTableCadastroFornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 30
    end
    object fdTableCadastroFornecedorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 30
    end
    object fdTableCadastroFornecedorEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 200
    end
    object fdTableCadastroFornecedorLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Origin = 'LOGRADOURO'
      Size = 200
    end
    object fdTableCadastroFornecedorNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 30
    end
    object fdTableCadastroFornecedorBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 200
    end
    object fdTableCadastroFornecedorCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 200
    end
    object fdTableCadastroFornecedorESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 200
    end
    object fdTableCadastroFornecedorCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 30
    end
  end
end

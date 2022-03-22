object frmCadastroProduto: TfrmCadastroProduto
  Left = 0
  Top = 0
  Caption = 'Cadastro produto'
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
  object codProduto: TLabel
    Left = 140
    Top = 162
    Width = 74
    Height = 13
    Caption = 'C'#243'digo produto'
    FocusControl = dbEdit_EAN
  end
  object Label5: TLabel
    Left = 282
    Top = 162
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = dbEdit_Descricao
  end
  object Label6: TLabel
    Left = 140
    Top = 218
    Width = 65
    Height = 13
    Caption = 'Valor produto'
    FocusControl = dbEdit_Fornecedor
  end
  object Label7: TLabel
    Left = 423
    Top = 218
    Width = 14
    Height = 13
    Caption = 'IPI'
    FocusControl = dbEdit_DataFabricacao
  end
  object Label8: TLabel
    Left = 564
    Top = 218
    Width = 12
    Height = 13
    Caption = 'ST'
    FocusControl = dbEdit_DataValidade
  end
  object Label1: TLabel
    Left = 0
    Top = 89
    Width = 914
    Height = 42
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastro de produto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 360
  end
  object spBt_CadastroNovo: TSpeedButton
    Left = 740
    Top = 162
    Width = 49
    Height = 37
    Caption = 'Novo'
    OnClick = spBt_CadastroNovoClick
  end
  object spBt_CadastroCancelar: TSpeedButton
    Left = 740
    Top = 205
    Width = 49
    Height = 37
    Caption = 'Cancelar'
    OnClick = spBt_CadastroCancelarClick
  end
  object spBt_CadastroProdutoSalvar: TSpeedButton
    Left = 740
    Top = 248
    Width = 49
    Height = 37
    Caption = 'Salvar'
    OnClick = spBt_CadastroProdutoSalvarClick
  end
  object dbEdit_EAN: TDBEdit
    Left = 140
    Top = 178
    Width = 100
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'COD_PRODUTO'
    DataSource = dtCadastroProduto
    TabOrder = 0
  end
  object dbEdit_Descricao: TDBEdit
    Left = 282
    Top = 178
    Width = 400
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'DESCRICAO'
    DataSource = dtCadastroProduto
    TabOrder = 1
  end
  object dbEdit_Fornecedor: TDBEdit
    Left = 140
    Top = 234
    Width = 239
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'VALOR_UNI'
    DataSource = dtCadastroProduto
    TabOrder = 2
  end
  object dbEdit_DataFabricacao: TDBEdit
    Left = 423
    Top = 234
    Width = 100
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'IPI'
    DataSource = dtCadastroProduto
    TabOrder = 3
  end
  object dbEdit_DataValidade: TDBEdit
    Left = 564
    Top = 234
    Width = 118
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'ST'
    DataSource = dtCadastroProduto
    TabOrder = 4
  end
  object pHeader_C_Produto: TPanel
    Left = 0
    Top = 0
    Width = 914
    Height = 89
    Align = alTop
    BevelInner = bvSpace
    BevelKind = bkTile
    Color = 8421440
    ParentBackground = False
    TabOrder = 5
  end
  object pFooter_C_Produto: TPanel
    Left = 0
    Top = 456
    Width = 914
    Height = 55
    Align = alBottom
    BevelInner = bvSpace
    BevelKind = bkTile
    Color = 8421440
    ParentBackground = False
    TabOrder = 6
  end
  object fdQueryCadastroProduto: TFDQuery
    Connection = dtmConexao.FD_Conexao
    SQL.Strings = (
      'select * from tblProduto')
    Left = 768
    Top = 24
    object fdQueryCadastroProdutoDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
      Origin = 'DTCADASTRO'
    end
    object fdQueryCadastroProdutoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQueryCadastroProdutoCODEAN: TIntegerField
      FieldName = 'CODEAN'
      Origin = 'CODEAN'
      Required = True
    end
    object fdQueryCadastroProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object fdQueryCadastroProdutoFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Required = True
      Size = 100
    end
    object fdQueryCadastroProdutoDTFABRICACAO: TDateField
      FieldName = 'DTFABRICACAO'
      Origin = 'DTFABRICACAO'
    end
    object fdQueryCadastroProdutoDTVALIDADE: TDateField
      FieldName = 'DTVALIDADE'
      Origin = 'DTVALIDADE'
    end
    object fdQueryCadastroProdutoVALOR: TStringField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Size = 30
    end
    object fdQueryCadastroProdutoPESO: TStringField
      FieldName = 'PESO'
      Origin = 'PESO'
      Size = 30
    end
    object fdQueryCadastroProdutoMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 50
    end
    object fdQueryCadastroProdutoMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 50
    end
    object fdQueryCadastroProdutoCOR: TStringField
      FieldName = 'COR'
      Origin = 'COR'
    end
    object fdQueryCadastroProdutoKIT: TStringField
      FieldName = 'KIT'
      Origin = 'KIT'
      FixedChar = True
      Size = 1
    end
  end
  object dtCadastroProduto: TDataSource
    DataSet = fdTableCadastroProduto
    Left = 640
    Top = 24
  end
  object fdTableCadastroProduto: TFDTable
    CachedUpdates = True
    IndexFieldNames = 'ID_TBLPRODUTO'
    Connection = dtmConexao.FD_Conexao
    UpdateOptions.UpdateTableName = 'TBLPRODUTO'
    TableName = 'TBLPRODUTO'
    Left = 360
    Top = 24
    object fdTableCadastroProdutoCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Origin = 'COD_PRODUTO'
      Size = 30
    end
    object fdTableCadastroProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object fdTableCadastroProdutoVALOR_UNI: TFMTBCDField
      FieldName = 'VALOR_UNI'
      Origin = 'VALOR_UNI'
      Precision = 18
      Size = 2
    end
    object fdTableCadastroProdutoIPI: TFMTBCDField
      FieldName = 'IPI'
      Origin = 'IPI'
      Precision = 18
      Size = 2
    end
    object fdTableCadastroProdutoST: TFMTBCDField
      FieldName = 'ST'
      Origin = 'ST'
      Precision = 18
      Size = 2
    end
  end
end

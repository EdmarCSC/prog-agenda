object frmCadastroPedidos: TfrmCadastroPedidos
  Left = 0
  Top = 0
  Caption = 'Cadastro de pedidos'
  ClientHeight = 518
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
  object Label1: TLabel
    Left = 234
    Top = 131
    Width = 36
    Height = 13
    Caption = ' Cliente'
  end
  object Label2: TLabel
    Left = 574
    Top = 131
    Width = 39
    Height = 13
    Caption = 'Contato'
  end
  object spBt_NovoPedido: TSpeedButton
    Left = 816
    Top = 131
    Width = 49
    Height = 37
    Caption = 'Novo'
    OnClick = spBt_NovoPedidoClick
  end
  object spBt_CancelarPedido: TSpeedButton
    Left = 816
    Top = 205
    Width = 49
    Height = 37
    Caption = 'Add item'
    OnClick = spBt_CancelarPedidoClick
  end
  object spBt_SalvarPedidp: TSpeedButton
    Left = 816
    Top = 299
    Width = 49
    Height = 37
    Caption = 'Salvar'
    OnClick = spBt_SalvarPedidpClick
  end
  object Label5: TLabel
    Left = 128
    Top = 131
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label4: TLabel
    Left = 0
    Top = 89
    Width = 914
    Height = 42
    Align = alTop
    Alignment = taCenter
    BiDiMode = bdRightToLeft
    Caption = 'Cadastro de Pedidos'
    Color = clSilver
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    ExplicitWidth = 369
  end
  object Label3: TLabel
    Left = 128
    Top = 221
    Width = 68
    Height = 13
    Caption = 'C'#243'digo pedido'
    FocusControl = dbEdit_Cod_Pedido_Produto
  end
  object Label6: TLabel
    Left = 344
    Top = 221
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = dbEdit_Descricao
  end
  object Label7: TLabel
    Left = 376
    Top = 267
    Width = 25
    Height = 13
    Caption = 'ICMS'
    FocusControl = dbEdit_ICMS
  end
  object Label8: TLabel
    Left = 432
    Top = 160
    Width = 14
    Height = 13
    Caption = 'IPI'
  end
  object Label9: TLabel
    Left = 266
    Top = 267
    Width = 14
    Height = 13
    Caption = 'IPI'
    FocusControl = dbEdit_IPI
  end
  object Label10: TLabel
    Left = 234
    Top = 221
    Width = 38
    Height = 13
    Caption = 'Produto'
    FocusControl = dbEdit_Cod_Produto
  end
  object Label11: TLabel
    Left = 472
    Top = 267
    Width = 56
    Height = 13
    Caption = 'Quantidade'
    FocusControl = dbEdit_Quantidade
  end
  object Label12: TLabel
    Left = 590
    Top = 267
    Width = 49
    Height = 13
    Caption = 'Valor total'
    FocusControl = dbEdit_Valor_Total
  end
  object Label13: TLabel
    Left = 128
    Top = 267
    Width = 43
    Height = 13
    Caption = 'Valor un.'
    FocusControl = dbEdit_Valor_Unitario
  end
  object SpeedButton1: TSpeedButton
    Left = 816
    Top = 248
    Width = 49
    Height = 38
    Caption = 'Mais'
    OnClick = SpeedButton1Click
  end
  object dbEditCodigoClientePedido: TDBEdit
    Left = 128
    Top = 150
    Width = 68
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    BiDiMode = bdLeftToRight
    DataField = 'COD_PEDIDO'
    DataSource = dtCadastroPedidos
    ParentBiDiMode = False
    ReadOnly = True
    TabOrder = 0
  end
  object dbEditNomeClientePedido: TDBEdit
    Left = 234
    Top = 150
    Width = 299
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'NOME_CLIENTE'
    DataSource = dtCadastroPedidos
    TabOrder = 3
  end
  object dbEditContatoClientePedido: TDBEdit
    Left = 574
    Top = 150
    Width = 149
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'CONTATO'
    DataSource = dtCadastroPedidos
    TabOrder = 4
    OnExit = dbEditContatoClientePedidoExit
  end
  object pHeader_C_Pedidos: TPanel
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
  object pFooter_C_Pedidos: TPanel
    Left = 0
    Top = 463
    Width = 914
    Height = 55
    Align = alBottom
    BevelInner = bvSpace
    BevelKind = bkTile
    Color = 8421440
    ParentBackground = False
    TabOrder = 6
  end
  object Panel1: TPanel
    Left = 48
    Top = 179
    Width = 817
    Height = 7
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = 8421440
    ParentBackground = False
    TabOrder = 7
  end
  object dbEdit_Cod_Pedido_Produto: TDBEdit
    Left = 128
    Top = 240
    Width = 68
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'COD_PEDIDO'
    DataSource = dtItemPedidos
    ReadOnly = True
    TabOrder = 8
  end
  object dbEdit_Descricao: TDBEdit
    Left = 344
    Top = 240
    Width = 379
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'DESCRI_PRODUTO'
    DataSource = dtItemPedidos
    TabOrder = 9
  end
  object dbEdit_ICMS: TDBEdit
    Left = 376
    Top = 283
    Width = 66
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'ICMS'
    DataSource = dtItemPedidos
    TabOrder = 1
  end
  object dbEdit_IPI: TDBEdit
    Left = 266
    Top = 283
    Width = 65
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    TabOrder = 10
  end
  object dbEdit_Cod_Produto: TDBEdit
    Left = 234
    Top = 240
    Width = 65
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'COD_ITEM_PEDIDO'
    DataSource = dtItemPedidos
    TabOrder = 11
    OnExit = dbEdit_Cod_ProdutoExit
  end
  object dbEdit_Quantidade: TDBEdit
    Left = 472
    Top = 283
    Width = 78
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'QUANTIDADE'
    DataSource = dtItemPedidos
    TabOrder = 2
  end
  object dbEdit_Valor_Total: TDBEdit
    Left = 590
    Top = 283
    Width = 133
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'VALOR_TOTAL'
    DataSource = dtItemPedidos
    TabOrder = 12
  end
  object dbEdit_Valor_Unitario: TDBEdit
    Left = 128
    Top = 283
    Width = 97
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'VALOR_UNI'
    DataSource = dtItemPedidos
    TabOrder = 13
  end
  object fdQueryCadastroPedidos: TFDQuery
    AutoCalcFields = False
    Filtered = True
    CachedUpdates = True
    Connection = dtmConexao.FD_Conexao
    SQL.Strings = (
      'select * from tblpedido')
    Left = 64
    Top = 344
    object fdQueryCadastroPedidosCODPEDIDO: TIntegerField
      FieldName = 'CODPEDIDO'
      Origin = 'CODPEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQueryCadastroPedidosNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Origin = 'NOMECLIENTE'
      Required = True
      Size = 100
    end
    object fdQueryCadastroPedidosDTCADASTRO: TStringField
      FieldName = 'DTCADASTRO'
      Origin = 'DTCADASTRO'
    end
    object fdQueryCadastroPedidosCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
    end
  end
  object fdQuery_Consultar_Produto: TFDQuery
    CachedUpdates = True
    MasterFields = 'CODPEDIDO'
    DetailFields = 'CODPEDIDO'
    Connection = dtmConexao.FD_Conexao
    Transaction = dtmConexao.FDTransaction1
    UpdateTransaction = dtmConexao.FDTransaction1
    FetchOptions.AssignedValues = [evAutoClose, evUnidirectional, evLiveWindowParanoic, evDetailCascade]
    FetchOptions.AutoClose = False
    FetchOptions.LiveWindowParanoic = False
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from TBLPRODUTO')
    Left = 784
    Top = 8
  end
  object fdTableCadastroPedidos: TFDTable
    IndexFieldNames = 'ID_TBLPEDIDO'
    DetailFields = 'ID_TBLPEDIDO'
    Connection = dtmConexao.FD_Conexao
    Transaction = dtmConexao.FDTransaction1
    UpdateTransaction = dtmConexao.FDTransaction1
    FetchOptions.AssignedValues = [evAutoClose, evUnidirectional, evLiveWindowParanoic, evDetailCascade, evLiveWindowFastFirst, evDetailServerCascade]
    FetchOptions.LiveWindowParanoic = False
    UpdateOptions.AssignedValues = [uvAutoCommitUpdates]
    UpdateOptions.AutoCommitUpdates = True
    UpdateOptions.UpdateTableName = 'TBLPEDIDO'
    UpdateOptions.AutoIncFields = 'COD_PEDIDO'
    TableName = 'TBLPEDIDO'
    Left = 56
    Top = 8
    object fdTableCadastroPedidosNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 200
    end
    object fdTableCadastroPedidosCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 30
    end
    object fdTableCadastroPedidosCOD_PEDIDO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'COD_PEDIDO'
      Origin = 'COD_PEDIDO'
    end
    object fdTableCadastroPedidosCOD_CLIENTE: TStringField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
      Size = 30
    end
    object fdTableCadastroPedidosID_TBLPEDIDO: TIntegerField
      FieldName = 'ID_TBLPEDIDO'
      Origin = 'ID_TBLPEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtCadastroPedidos: TDataSource
    DataSet = fdTableCadastroPedidos
    Left = 56
    Top = 56
  end
  object tdConsulta_Produto: TDataSource
    DataSet = fdQuery_Consultar_Produto
    Left = 752
    Top = 64
  end
  object fdTableItem_Pedidos: TFDTable
    CachedUpdates = True
    IndexFieldNames = 'ID_TBLITEM_PEDIDO'
    MasterSource = dtCadastroPedidos
    MasterFields = 'ID_TBLPEDIDO'
    DetailFields = 'ID_TBLITEM_PEDIDO'
    Connection = dtmConexao.FD_Conexao
    UpdateOptions.UpdateTableName = 'TBLITEM_PEDIDO'
    TableName = 'TBLITEM_PEDIDO'
    Left = 496
    Top = 16
    object fdTableItem_PedidosDESCRI_PRODUTO: TStringField
      FieldName = 'DESCRI_PRODUTO'
      Origin = 'DESCRI_PRODUTO'
      Size = 100
    end
    object fdTableItem_PedidosQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object fdTableItem_PedidosICMS: TFMTBCDField
      FieldName = 'ICMS'
      Origin = 'ICMS'
      Precision = 18
      Size = 2
    end
    object fdTableItem_PedidosIPI: TFMTBCDField
      FieldName = 'IPI'
      Origin = 'IPI'
      Precision = 18
      Size = 2
    end
    object fdTableItem_PedidosST: TFMTBCDField
      FieldName = 'ST'
      Origin = 'ST'
      Precision = 18
      Size = 2
    end
    object fdTableItem_PedidosVALOR_UNI: TFMTBCDField
      FieldName = 'VALOR_UNI'
      Origin = 'VALOR_UNI'
      Precision = 18
      Size = 2
    end
    object fdTableItem_PedidosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object fdTableItem_PedidosCOD_PEDIDO: TIntegerField
      FieldName = 'COD_PEDIDO'
      Origin = 'COD_PEDIDO'
    end
    object fdTableItem_PedidosCOD_ITEM_PEDIDO: TStringField
      FieldName = 'COD_ITEM_PEDIDO'
      Origin = 'COD_ITEM_PEDIDO'
      Size = 30
    end
    object fdTableItem_PedidosID_TBLITEM_PEDIDO: TIntegerField
      FieldName = 'ID_TBLITEM_PEDIDO'
      Origin = 'ID_TBLITEM_PEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dtItemPedidos: TDataSource
    DataSet = fdTableItem_Pedidos
    Left = 592
    Top = 56
  end
end

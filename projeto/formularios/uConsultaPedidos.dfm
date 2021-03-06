object frmConsultaPedidos: TfrmConsultaPedidos
  Left = 0
  Top = 0
  Caption = 'Consulta de pedidos'
  ClientHeight = 512
  ClientWidth = 914
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgConsultaPedido: TPageControl
    Left = 0
    Top = 89
    Width = 914
    Height = 423
    ActivePage = TabConsultaProduto
    Align = alClient
    TabOrder = 0
    object TabConsultaProduto: TTabSheet
      Caption = 'TabConsultaProduto'
      TabVisible = False
      object spBtConsultaClientePesquisa: TSpeedButton
        Left = 43
        Top = 153
        Width = 121
        Height = 22
        Caption = 'Pesquisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = spBtConsultaClientePesquisaClick
      end
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 906
        Height = 42
        Align = alTop
        Alignment = taCenter
        Caption = 'Cosnulta de pedidos'
        Color = clAppWorkSpace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -37
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        ExplicitWidth = 361
      end
      object rdConsultaPedido: TRadioGroup
        Left = 43
        Top = 73
        Width = 370
        Height = 39
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Caption = 'Consulta'
        Color = 8421440
        Columns = 4
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          '&C'#243'digo'
          '&Nome'
          '&CPF'
          '&CNPJ')
        ParentBackground = False
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnClick = rdConsultaPedidoClick
      end
      object editConsultaPedido: TEdit
        Left = 43
        Top = 125
        Width = 121
        Height = 21
        BevelInner = bvLowered
        BevelKind = bkTile
        Color = clCream
        TabOrder = 1
        OnChange = editConsultaPedidoChange
      end
      object pFooter_C_ProdutoC: TPanel
        Left = 0
        Top = 358
        Width = 906
        Height = 55
        Align = alBottom
        BevelInner = bvSpace
        BevelKind = bkTile
        Color = 8421440
        ParentBackground = False
        TabOrder = 2
      end
    end
    object TabDetalheProduto: TTabSheet
      Caption = 'TabDetalheProduto'
      ImageIndex = 1
      TabVisible = False
      object lbTetalheConsula: TLabel
        Left = 0
        Top = 0
        Width = 906
        Height = 42
        Align = alTop
        Alignment = taCenter
        Caption = 'Detalhe da Consulta'
        Color = clAppWorkSpace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -37
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        ExplicitWidth = 358
      end
      object lbNomeClentePedido: TLabel
        Left = 108
        Top = 48
        Width = 4
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbNomeContato: TLabel
        Left = 392
        Top = 48
        Width = 4
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbCodCliente: TLabel
        Left = 64
        Top = 48
        Width = 4
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 42
        Width = 906
        Height = 316
        Align = alClient
        Color = clMoneyGreen
        DataSource = dtConsulta_Item_Pedido
        DrawingStyle = gdsGradient
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pFooter_C_PedidoD: TPanel
        Left = 0
        Top = 358
        Width = 906
        Height = 55
        Align = alBottom
        BevelInner = bvSpace
        BevelKind = bkTile
        Color = 8421440
        ParentBackground = False
        TabOrder = 1
        object spBt_Imprimir: TSpeedButton
          Left = 769
          Top = 16
          Width = 121
          Height = 22
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object spBt_Voltar: TSpeedButton
          Left = 19
          Top = 16
          Width = 121
          Height = 22
          Align = alCustom
          Caption = 'Voltar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = spBt_VoltarClick
        end
        object dbNavConsultaCliente: TDBNavigator
          Left = 336
          Top = 13
          Width = 216
          Height = 25
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Flat = True
          Ctl3D = True
          Hints.Strings = (
            'Primeiro resgistro'
            'Pr'#243'ximo registro'
            #218'ltimo registro'
            'Registro anterior'
            'Insert record'
            'Delete record'
            'Edit record'
            'Post edit'
            'Cancel edit'
            'Refresh data'
            'Apply updates'
            'Cancel updates')
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
    end
  end
  object pHeader_C_PedidoC: TPanel
    Left = 0
    Top = 0
    Width = 914
    Height = 89
    Align = alTop
    BevelInner = bvSpace
    BevelKind = bkTile
    Color = 8421440
    ParentBackground = False
    TabOrder = 1
  end
  object fdQueryConsultaPedidos: TFDQuery
    Connection = dtmConexao.FD_Conexao
    SQL.Strings = (
      'select * from tblpedido')
    Left = 56
    Top = 56
  end
  object dtCunsultaPedidos: TDataSource
    DataSet = fdQueryConsultaPedidos
    Left = 176
    Top = 56
  end
  object fdQueryConsulta_Item_Pedidos: TFDQuery
    Connection = dtmConexao.FD_Conexao
    SQL.Strings = (
      'Select * from tblItem_Pedido')
    Left = 696
    Top = 64
  end
  object dtConsulta_Item_Pedido: TDataSource
    DataSet = fdQueryConsulta_Item_Pedidos
    Left = 840
    Top = 64
  end
end

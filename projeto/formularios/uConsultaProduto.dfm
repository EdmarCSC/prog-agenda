object frmConsultaProduto: TfrmConsultaProduto
  Left = 0
  Top = 0
  Caption = 'Consulta produto'
  ClientHeight = 511
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
  object pgC_ConsultaProduto: TPageControl
    Left = 0
    Top = 89
    Width = 914
    Height = 422
    ActivePage = TabConsultProduto
    Align = alClient
    MultiLine = True
    TabOrder = 0
    object TabConsultProduto: TTabSheet
      Caption = 'TabConsultaProduto'
      TabVisible = False
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 906
        Height = 42
        Align = alTop
        Alignment = taCenter
        Caption = 'Consulta de produto'
        Color = clAppWorkSpace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -37
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        ExplicitWidth = 356
      end
      object spBtConsultaClientePesquisa: TSpeedButton
        Left = 72
        Top = 160
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
      object SpeedButton1: TSpeedButton
        Left = 321
        Top = 160
        Width = 121
        Height = 22
        Caption = 'Atualizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object rdConsultaProduto: TRadioGroup
        Left = 72
        Top = 88
        Width = 370
        Height = 39
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Caption = 'Consulta'
        Color = 8421440
        Columns = 3
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          '&C'#243'digo'
          '&Descri'#231#227'o')
        ParentBackground = False
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnClick = rdConsultaProdutoClick
      end
      object editConsultaProduto: TEdit
        Left = 72
        Top = 133
        Width = 121
        Height = 21
        BevelInner = bvLowered
        BevelKind = bkTile
        Color = clCream
        TabOrder = 1
        OnChange = editConsultaProdutoChange
      end
      object pFooter_C_ProdutoC: TPanel
        Left = 0
        Top = 357
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
      object Label2: TLabel
        Left = 0
        Top = 0
        Width = 906
        Height = 42
        Align = alTop
        Alignment = taCenter
        Caption = 'Detalhes da consulta'
        Color = clAppWorkSpace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -37
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        ExplicitWidth = 370
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 42
        Width = 906
        Height = 315
        Align = alClient
        Color = clMoneyGreen
        DataSource = dtConsultaProduto
        DrawingStyle = gdsGradient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pFooter_C_ProdutoD: TPanel
        Left = 0
        Top = 357
        Width = 906
        Height = 55
        Align = alBottom
        BevelInner = bvSpace
        BevelKind = bkTile
        Color = 8421440
        ParentBackground = False
        TabOrder = 1
        object spConsultaDeFornecedor_Imprimir: TSpeedButton
          Left = 760
          Top = 18
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
        object spConsultaDeFornecedor_Voltar: TSpeedButton
          Left = 24
          Top = 18
          Width = 121
          Height = 22
          Caption = 'Voltar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = spConsultaDeFornecedor_VoltarClick
        end
        object dbNavConsultaCliente: TDBNavigator
          Left = 350
          Top = 18
          Width = 216
          Height = 22
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
    TabOrder = 1
  end
  object fdQueryConsultaProduto: TFDQuery
    Connection = dtmConexao.FD_Conexao
    SQL.Strings = (
      'select * from tblproduto')
    Left = 56
    Top = 64
  end
  object dtConsultaProduto: TDataSource
    DataSet = fdQueryConsultaProduto
    Left = 192
    Top = 64
  end
end

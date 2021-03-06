object frmConsultaFornecedor: TfrmConsultaFornecedor
  Left = 0
  Top = 0
  Caption = 'Consulta fornecedor'
  ClientHeight = 513
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
  object pgConsultaFornecedor: TPageControl
    Left = 0
    Top = 89
    Width = 914
    Height = 424
    ActivePage = tabDetalheFornecedor
    Align = alClient
    TabOrder = 0
    object tabConsultaFornecedor: TTabSheet
      Caption = 'tabConsultaFornecedor'
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object SpeedButton1: TSpeedButton
        Left = 70
        Top = 162
        Width = 121
        Height = 22
        Caption = 'Pesquisar'
        OnClick = SpeedButton1Click
      end
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 411
        Height = 42
        Align = alTop
        Alignment = taCenter
        Caption = 'Consulta de fornecedor'
        Color = clAppWorkSpace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -37
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
      end
      object editConsultaFornecedor: TEdit
        Left = 70
        Top = 133
        Width = 121
        Height = 21
        BevelInner = bvLowered
        BevelKind = bkTile
        TabOrder = 0
        OnChange = editConsultaFornecedorChange
      end
      object rdConsultaFornecedor: TRadioGroup
        Left = 70
        Top = 83
        Width = 370
        Height = 39
        Caption = 'Tipo da consulta'
        Color = 8421440
        Columns = 4
        Items.Strings = (
          '&C'#243'digo'
          '&Nome'
          '&Raz'#227'o social'
          '&Nome fantasia')
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        OnClick = rdConsultaFornecedorClick
      end
      object Button1: TButton
        Left = 327
        Top = 162
        Width = 113
        Height = 22
        Caption = 'Atualizar'
        TabOrder = 2
        OnClick = Button1Click
      end
      object pFooter_C_FornecedorC: TPanel
        Left = 0
        Top = 359
        Width = 906
        Height = 55
        Align = alBottom
        BevelInner = bvSpace
        BevelKind = bkTile
        Color = 8421440
        ParentBackground = False
        TabOrder = 3
      end
    end
    object tabDetalheFornecedor: TTabSheet
      Caption = 'tabDetalheFornecedor'
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
        Height = 317
        Align = alClient
        Color = clMoneyGreen
        DataSource = dtConsultaFonecedor
        DrawingStyle = gdsGradient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pFooter_C_FornecedorD: TPanel
        Left = 0
        Top = 359
        Width = 906
        Height = 55
        Align = alBottom
        BevelInner = bvSpace
        BevelKind = bkTile
        Color = 8421440
        ParentBackground = False
        TabOrder = 1
        object spConsultaDeFornecedor_Imprimir: TSpeedButton
          Left = 766
          Top = 17
          Width = 121
          Height = 22
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = spConsultaDeFornecedor_ImprimirClick
        end
        object spConsultaDeFornecedor_Voltar: TSpeedButton
          Left = 18
          Top = 17
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
          Left = 336
          Top = 14
          Width = 216
          Height = 25
          DataSource = dtConsultaFonecedor
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
  object fdQueryConsultaFornecedor: TFDQuery
    Connection = dtmConexao.FD_Conexao
    SQL.Strings = (
      'select * from tblFornecedor')
    Left = 24
    Top = 64
  end
  object dtConsultaFonecedor: TDataSource
    DataSet = fdQueryConsultaFornecedor
    Left = 144
    Top = 64
  end
end

object frmConsultaUsuario: TfrmConsultaUsuario
  Left = 0
  Top = 0
  Caption = 'Cadastro de usu'#225'rio'
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
  object pgConsultaUsuario: TPageControl
    Left = 0
    Top = 89
    Width = 914
    Height = 422
    ActivePage = tabDetalheConsulta
    Align = alClient
    TabOrder = 0
    object tabConsultaUsuario: TTabSheet
      Caption = 'tabConsultaUsuario'
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object SpeedButton1: TSpeedButton
        Left = 69
        Top = 154
        Width = 121
        Height = 22
        Caption = 'Pesquisar'
        OnClick = SpeedButton1Click
      end
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 358
        Height = 42
        Align = alTop
        Alignment = taCenter
        Caption = 'Consulta de Usu'#225'rio'
        Color = clAppWorkSpace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -37
        Font.Name = 'Microsoft Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object SpeedButton2: TSpeedButton
        Left = 288
        Top = 154
        Width = 121
        Height = 22
        Caption = 'Atualizar'
        OnClick = SpeedButton2Click
      end
      object rdConsultaUsuario: TRadioGroup
        Left = 69
        Top = 72
        Width = 340
        Height = 39
        Caption = 'Tipo da consulta'
        Color = 8421440
        Columns = 3
        Items.Strings = (
          '&C'#243'digo'
          '&Nome'
          '&Login')
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        OnClick = rdConsultaUsuarioClick
      end
      object editConsultaUsuario: TEdit
        Left = 69
        Top = 125
        Width = 121
        Height = 21
        BevelInner = bvLowered
        BevelKind = bkTile
        TabOrder = 1
        OnChange = editConsultaUsuarioChange
      end
      object pFooter_C_UsuarioC: TPanel
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
    object tabDetalheConsulta: TTabSheet
      Caption = 'tabDetalheConsulta'
      ImageIndex = 1
      TabVisible = False
      object Label2: TLabel
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
      object dbDetalheCulsulta: TDBGrid
        Left = 0
        Top = 42
        Width = 906
        Height = 315
        Align = alClient
        Color = clMoneyGreen
        DataSource = dtConsultaUsuario
        DrawingStyle = gdsGradient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object pFooter_C_UsuarioD: TPanel
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
          Left = 758
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
          Left = 24
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
          Left = 344
          Top = 17
          Width = 216
          Height = 22
          DataSource = dtConsultaUsuario
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
  object fdQueryConsultaUsuario: TFDQuery
    Active = True
    Connection = dtmConexao.FD_Conexao
    SQL.Strings = (
      'select * from tblUsuario')
    Left = 64
    Top = 80
  end
  object dtConsultaUsuario: TDataSource
    DataSet = fdQueryConsultaUsuario
    Left = 208
    Top = 80
  end
end

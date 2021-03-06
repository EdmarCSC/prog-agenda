object frmConsultaCliente: TfrmConsultaCliente
  Left = 0
  Top = 0
  Caption = 'Consulta de clientes'
  ClientHeight = 511
  ClientWidth = 914
  Color = 15250568
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
  object pgConsultaCliente: TPageControl
    Left = 0
    Top = 89
    Width = 914
    Height = 422
    ActivePage = TabConsulta
    Align = alClient
    DoubleBuffered = False
    MultiLine = True
    ParentDoubleBuffered = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    TabStop = False
    StyleElements = [seFont, seClient]
    object TabConsulta: TTabSheet
      AlignWithMargins = True
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Caption = 'Consulta'
      DoubleBuffered = False
      ParentDoubleBuffered = False
      TabVisible = False
      object spBtConsultaClientePesquisa: TSpeedButton
        Left = 72
        Top = 163
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
        AutoSize = False
        Caption = 'Consulta de clientes'
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
        ExplicitTop = 24
      end
      object editConsultaCliente: TEdit
        Left = 72
        Top = 136
        Width = 121
        Height = 21
        BevelInner = bvLowered
        BevelKind = bkTile
        Color = clCream
        TabOrder = 0
        OnChange = editConsultaClienteChange
      end
      object rdConsultaCliente: TRadioGroup
        Left = 72
        Top = 84
        Width = 370
        Height = 39
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Caption = 'Tipo da consulta'
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
          '&CNPJ'
          '&Insc. estadual')
        ParentBackground = False
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnClick = rdConsultaClienteClick
      end
      object btConsultaTodosClientes: TButton
        Left = 329
        Top = 163
        Width = 113
        Height = 22
        Caption = 'Atualizar'
        TabOrder = 2
        OnClick = btConsultaTodosClientesClick
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
        TabOrder = 3
      end
    end
    object TabDetalhe: TTabSheet
      Caption = 'TabDetalhe'
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
        object spBt_Imprimir: TSpeedButton
          Left = 769
          Top = 15
          Width = 121
          Height = 25
          Caption = 'Imprimir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = spBt_ImprimirClick
        end
        object spBt_Voltar: TSpeedButton
          Left = 19
          Top = 15
          Width = 121
          Height = 25
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
          Left = 334
          Top = 15
          Width = 216
          Height = 25
          DataSource = dtConsultaCliente
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
          ConfirmDelete = False
          ShowHint = False
          TabOrder = 0
        end
      end
      object dbDetalheConsulta: TDBGrid
        Left = 0
        Top = 42
        Width = 906
        Height = 315
        Align = alClient
        Color = clMoneyGreen
        Ctl3D = True
        DataSource = dtConsultaCliente
        DrawingStyle = gdsGradient
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NOMECLIENTE'
            Title.Caption = 'Cliente'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RG'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CELULAR'
            Title.Caption = 'Celular'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEFONE'
            Title.Caption = 'Telefone'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
            Title.Caption = 'E-mail'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMERUA'
            Title.Caption = 'Rua'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMEROCASA'
            Title.Caption = 'N'#176' '
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Title.Caption = 'Bairro'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Title.Caption = 'Cidade'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTCADASTRO'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODCLIENTE'
            Title.Caption = 'C'#243'digo do cliente'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEFONE'
            Title.Caption = 'Celular'
            Width = 80
            Visible = True
          end>
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
  object fdQueryConsultaClientes: TFDQuery
    Connection = dtmConexao.FD_Conexao
    SQL.Strings = (
      'select * from TblCliente')
    Left = 48
    Top = 24
  end
  object dtConsultaCliente: TDataSource
    DataSet = fdQueryConsultaClientes
    Left = 192
    Top = 24
  end
end

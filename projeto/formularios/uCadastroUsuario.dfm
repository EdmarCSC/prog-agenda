object frmCadastroUsuario: TfrmCadastroUsuario
  Left = 0
  Top = 0
  Caption = 'Cadastro de Usu'#225'rio'
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
  object Label1: TLabel
    Left = 0
    Top = 89
    Width = 914
    Height = 42
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastro de Usu'#225'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Microsoft Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 362
  end
  object Label2: TLabel
    Left = 208
    Top = 182
    Width = 36
    Height = 13
    Caption = 'Usu'#225'rio'
    FocusControl = dbEdit_NomeUsuario
  end
  object Label3: TLabel
    Left = 208
    Top = 227
    Width = 25
    Height = 13
    Caption = 'Login'
    FocusControl = dbEdit_LoginUsuario
  end
  object Label4: TLabel
    Left = 208
    Top = 271
    Width = 30
    Height = 13
    Caption = 'Senha'
    FocusControl = dbEdit_SenhaUsuario
  end
  object dbEdit_NomeUsuario: TDBEdit
    Left = 208
    Top = 198
    Width = 300
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'NOME_USUARIO'
    DataSource = dtUsuario
    TabOrder = 0
  end
  object dbEdit_LoginUsuario: TDBEdit
    Left = 208
    Top = 243
    Width = 300
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'LOGIN'
    DataSource = dtUsuario
    TabOrder = 1
  end
  object dbEdit_SenhaUsuario: TDBEdit
    Left = 208
    Top = 290
    Width = 300
    Height = 21
    BevelInner = bvLowered
    BevelKind = bkTile
    DataField = 'SENHA'
    DataSource = dtUsuario
    TabOrder = 2
  end
  object spBtCadastroUsuarioNovo: TButton
    Left = 664
    Top = 193
    Width = 49
    Height = 37
    Caption = 'Novo'
    TabOrder = 3
    OnClick = spBtCadastroUsuarioNovoClick
  end
  object spBtCadastroUsuarioCancelar: TButton
    Left = 664
    Top = 238
    Width = 49
    Height = 37
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = spBtCadastroUsuarioCancelarClick
  end
  object spBtCadastroUsuarioSalvar: TButton
    Left = 664
    Top = 282
    Width = 49
    Height = 37
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = spBtCadastroUsuarioSalvarClick
  end
  object pHeader_C_Usuario: TPanel
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
  object pFooter_C_Usuario: TPanel
    Left = 0
    Top = 456
    Width = 914
    Height = 55
    Align = alBottom
    BevelInner = bvSpace
    BevelKind = bkTile
    Color = 8421440
    ParentBackground = False
    TabOrder = 7
  end
  object fdQueryCadastroUsuario: TFDQuery
    Connection = dtmConexao.FD_Conexao
    SQL.Strings = (
      'select * from tblUsuario')
    Left = 832
    Top = 16
    object fdQueryCadastroUsuarioCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      Origin = 'CODUSUARIO'
      Required = True
    end
    object fdQueryCadastroUsuarioNOMEUSUARIO: TStringField
      FieldName = 'NOMEUSUARIO'
      Origin = 'NOMEUSUARIO'
      Size = 100
    end
    object fdQueryCadastroUsuarioLOGINUSUARIO: TStringField
      FieldName = 'LOGINUSUARIO'
      Origin = 'LOGINUSUARIO'
      Size = 100
    end
    object fdQueryCadastroUsuarioSENHAUSUARIO: TStringField
      FieldName = 'SENHAUSUARIO'
      Origin = 'SENHAUSUARIO'
      Size = 100
    end
  end
  object dtUsuario: TDataSource
    DataSet = fdTableCadastroUsuario
    Left = 712
    Top = 16
  end
  object fdTableCadastroUsuario: TFDTable
    CachedUpdates = True
    IndexFieldNames = 'ID_TBLUSUARIO'
    Connection = dtmConexao.FD_Conexao
    UpdateOptions.UpdateTableName = 'TBLUSUARIO'
    TableName = 'TBLUSUARIO'
    Left = 608
    Top = 16
    object fdTableCadastroUsuarioNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      Origin = 'NOME_USUARIO'
      Size = 200
    end
    object fdTableCadastroUsuarioLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'LOGIN'
      Size = 200
    end
    object fdTableCadastroUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 30
    end
  end
end

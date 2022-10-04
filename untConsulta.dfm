object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta ao Banco de Dados'
  ClientHeight = 480
  ClientWidth = 635
  Color = 15658734
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object opcoes: TRadioGroup
    Left = 80
    Top = 25
    Width = 185
    Height = 73
    Caption = 'Op'#231#245'es de Consulta'
    Color = 8454143
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Nome'
      'Bairro')
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    OnClick = opcoesClick
  end
  object pnlConsulta: TPanel
    Left = 296
    Top = 25
    Width = 259
    Height = 73
    BevelOuter = bvNone
    Color = 8454143
    ParentBackground = False
    TabOrder = 1
    object lblConsulta: TLabel
      Left = 14
      Top = 5
      Width = 225
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'Digite o Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtConsulta: TEdit
      Left = 16
      Top = 31
      Width = 226
      Height = 26
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object pnlBotao: TPanel
    Left = 224
    Top = 120
    Width = 182
    Height = 42
    BevelOuter = bvNone
    Color = 4227327
    ParentBackground = False
    TabOrder = 2
    object btnRealizarConsulta: TSpeedButton
      Left = 0
      Top = 0
      Width = 182
      Height = 42
      Cursor = crHandPoint
      Align = alClient
      Caption = 'Realizar Consulta'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnRealizarConsultaClick
      ExplicitLeft = 32
      ExplicitTop = 8
      ExplicitWidth = 105
      ExplicitHeight = 22
    end
  end
  object teleConsulta: TDBGrid
    Left = 32
    Top = 175
    Width = 577
    Height = 282
    DataSource = DM2.dsSqlConsulta
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_cliente'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 68
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Nome'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 148
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Bairro'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 225
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Nascimento'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 99
        Visible = True
      end>
  end
end

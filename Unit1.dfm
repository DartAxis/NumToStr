object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1091#1084#1084#1072' '#1087#1088#1086#1087#1080#1089#1100#1102
  ClientHeight = 247
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 114
    Width = 114
    Height = 13
    Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099':'
  end
  object Label4: TLabel
    Left = 8
    Top = 5
    Width = 79
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1095#1080#1089#1083#1086':'
  end
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 241
    Height = 21
    Alignment = taRightJustify
    MaxLength = 18
    TabOrder = 0
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 264
    Top = 24
    Width = 97
    Height = 25
    Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 368
    Top = 24
    Width = 97
    Height = 25
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 8
    Top = 133
    Width = 273
    Height = 108
    BorderStyle = bsSingle
    ShowCaption = False
    TabOrder = 3
    object CheckBox1: TCheckBox
      Left = 8
      Top = 8
      Width = 249
      Height = 17
      Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = Edit1Change
    end
    object CheckBox4: TCheckBox
      Left = 8
      Top = 77
      Width = 249
      Height = 17
      Caption = #1056#1072#1079#1076#1077#1083#1103#1090#1100' '#1074' '#1095#1080#1089#1083#1077' '#1088#1091#1073#1083#1080' '#1080' '#1082#1086#1087#1077#1081#1082#1080
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = Edit1Change
    end
    object CheckBox7: TCheckBox
      Left = 8
      Top = 31
      Width = 146
      Height = 17
      Caption = #1055#1086#1074#1077#1088#1093' '#1074#1089#1077#1093' '#1086#1082#1086#1085
      Checked = True
      State = cbChecked
      TabOrder = 2
      OnClick = CheckBox7Click
    end
    object CheckBox8: TCheckBox
      Left = 8
      Top = 54
      Width = 145
      Height = 17
      Caption = #1055#1088#1086#1087#1080#1089#1100' '#1074' '#1089#1082#1086#1073#1082#1072#1093
      Checked = True
      State = cbChecked
      TabOrder = 3
      OnClick = Edit1Change
    end
  end
  object Memo1: TMemo
    Left = 8
    Top = 56
    Width = 457
    Height = 49
    TabOrder = 4
  end
end

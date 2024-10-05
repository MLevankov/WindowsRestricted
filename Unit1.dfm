object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Windows Restricted Edition - WARNING'
  ClientHeight = 308
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 232
    Top = 0
    Width = 168
    Height = 32
    Caption = '!!!WARNING!!!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 38
    Width = 543
    Height = 25
    Caption = #1044#1072#1085#1085#1072#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1072' '#1103#1074#1083#1103#1077#1090#1089#1103' '#1042#1056#1045#1044#1054#1053#1054#1057#1053#1054#1049' '#1080' '#1072#1074#1090#1086#1088' '#1085#1077' '#1085#1077#1089#1077#1090
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 69
    Width = 619
    Height = 25
    Caption = 
      #1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080' '#1079#1072' '#1074#1072#1096' '#1082#1086#1084#1087#1100#1102#1090#1077#1088'! '#1040#1074#1090#1086#1088' '#1085#1077' '#1087#1088#1080#1079#1099#1074#1072#1077#1090' '#1074#1072#1089' '#1079#1072#1087#1091#1089#1082#1072 +
      #1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 100
    Width = 418
    Height = 25
    Caption = #1076#1072#1085#1085#1086#1077' '#1074#1088#1077#1076#1086#1085#1086#1089#1085#1086#1077' '#1055#1054' '#1085#1072' '#1074#1072#1096#1077#1084' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 285
    Width = 89
    Height = 15
    Caption = '(C) MLevankov'
  end
  object Label6: TLabel
    Left = 570
    Top = 285
    Width = 56
    Height = 15
    Caption = 'version 1.0'
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 144
    Width = 209
    Height = 17
    Caption = #1040#1074#1090#1086#1088' '#1085#1077' '#1085#1077#1089#1077#1090' '#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080
    TabOrder = 0
    OnClick = CheckBox1Click
  end
  object Button1: TButton
    Left = 8
    Top = 176
    Width = 175
    Height = 41
    Caption = #1055#1091#1089#1082'!'
    Enabled = False
    Style = bsCommandLink
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 232
    Width = 175
    Height = 41
    Caption = #1042#1099#1093#1086#1076
    Style = bsCommandLink
    TabOrder = 2
    OnClick = Button2Click
  end
end

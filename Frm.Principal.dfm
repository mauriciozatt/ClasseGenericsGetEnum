object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 267
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object bntAlimentaComboFormaPaga: TButton
    Left = 48
    Top = 88
    Width = 273
    Height = 25
    Caption = 'Alimenta combo com enumerado 1'
    TabOrder = 0
    OnClick = bntAlimentaComboFormaPagaClick
  end
  object ComboBox1: TComboBox
    Left = 48
    Top = 40
    Width = 273
    Height = 21
    ItemIndex = 0
    TabOrder = 1
    Text = 'Nunhum'
    Items.Strings = (
      'Nunhum')
  end
  object btnAlimentaComboEstadoCivil: TButton
    Left = 48
    Top = 136
    Width = 273
    Height = 25
    Caption = 'Alimenta combo com Enumerado 2'
    TabOrder = 2
    OnClick = btnAlimentaComboEstadoCivilClick
  end
end

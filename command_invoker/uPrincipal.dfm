object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Command + Invoker'
  ClientHeight = 470
  ClientWidth = 677
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object memoSaida: TMemo
    Left = 352
    Top = 0
    Width = 325
    Height = 470
    Align = alRight
    TabOrder = 0
  end
  object Button1: TButton
    Left = 271
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Executar'
    TabOrder = 1
    OnClick = Button1Click
  end
end

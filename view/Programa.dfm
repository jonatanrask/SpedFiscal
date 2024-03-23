object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OnClose = FormClose
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 304
    Top = 88
    object Exportar1: TMenuItem
      Caption = 'Exportar'
      object SpedFiscal1: TMenuItem
        Caption = 'Sped Fiscal'
        OnClick = SpedFiscal1Click
      end
    end
  end
end

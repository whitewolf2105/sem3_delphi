object dlgChooseDT: TdlgChooseDT
  Left = 245
  Top = 108
  BorderStyle = bsDialog
  Caption = 'Dialog'
  ClientHeight = 236
  ClientWidth = 168
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object OKBtn: TButton
    Left = 7
    Top = 204
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
    OnClick = OKBtnClick
  end
  object CancelBtn: TButton
    Left = 87
    Top = 204
    Width = 75
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 1
  end
  object MonthCalendar1: TMonthCalendar
    Left = 0
    Top = 0
    Width = 169
    Height = 161
    Date = 40873.559072314810000000
    TabOrder = 2
  end
  object DateTimePicker1: TDateTimePicker
    Left = 56
    Top = 168
    Width = 73
    Height = 25
    Date = 40873.568055555560000000
    Format = 'HH:mm'
    Time = 40873.568055555560000000
    Kind = dtkTime
    TabOrder = 3
  end
end

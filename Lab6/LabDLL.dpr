Library LabDLL;
Uses Forms,sysutils,classes,math,Dialogs,UnitMain in 'UnitMain.pas';

(*
������� ShowForm ���������� ����� frmMain
�� ������ UnitMain  � ��������� ������.
���������� ��������� ���������� �������.
*)
function ShowForm: Integer; stdcall;
begin
frmMain := TfrmMain.Create(Application);
Result := frmMain.ShowModal;
frmMain.Free;
end;

(*
 ������� CalcW ������������ � ���������� �������� $w$.
���������:
x,y,z:Double-��������� ������� w
*)
function CalcW(x,y,z:Double):Double;
begin
  CalcW:=Power(Abs(cos(x)-cos(y)),1+2*sqr(sin(y)))*
    (1+z+sqr(z)/2+z*sqr(z)/3+sqr(z)*sqr(z)/4);
end;

(*
��������� Output ������� ����������� �������� $w$ �� �����.
���������:
w   : Double - �������� �������
*)
procedure Output(w:Double);
begin
  with frmMain do begin
    memResult.Text:=memResult.Text+FloatToStr(w)+#13#10+'w=';
    memResult.SelLength:=length(memResult.Text);
  end;
end;

(*
������� Input - �������� �������� ���������� � ���������� True,
���� �������� ������ �������, ����� ���������� False.
���������:
x,y,z:Double-��������� ������� �������� �������
��������� ���������� ������� ����� ���������� ��������
errors:String-������ ������ ����� ������
*)
function Input(var x,y,z:Double):boolean;
var errors:string;
begin
  with frmMain do begin
  errors:='';
  if not TryStrToFloat(edtX.Text,x) then
    errors:=#10#13+'x - �� ������������ �����!';
  if not TryStrToFloat(edtY.Text,y) then
    errors:=errors+#10#13+'y - �� ������������ �����!';
  if not TryStrToFloat(edtZ.Text,z) then
    errors:=errors+#10#13+'z - �� ������������ �����!';
  if (errors<>'') then begin
	  Input:=False;MessageDlg('������: '+errors,mtError,[mbOK],0)
  end else Input:=True;
  end;
end;

exports  CalcW,Input,Output,ShowForm name 'ShowForm';
begin

end.


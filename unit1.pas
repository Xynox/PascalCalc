unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    check_multiply: TCheckBox;
    check_divide: TCheckBox;
    check_plus: TCheckBox;
    check_minus: TCheckBox;
    op_plus: TButton;
    op_minus: TButton;
    op_multiply: TButton;
    op_divide: TButton;
    confirmButton: TButton;
    e_1: TEdit;
    e_2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    result: TLabel;
    procedure check_plusChange(Sender: TObject);
    procedure confirmButtonClick(Sender: TObject);
    procedure e_1Change(Sender: TObject);
    procedure e_2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure op_divideClick(Sender: TObject);
    procedure op_minusClick(Sender: TObject);
    procedure op_multiplyClick(Sender: TObject);
    procedure op_plusClick(Sender: TObject);
    procedure resultClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  op: Integer;
  input_1: real;
  input_2: real;
  checked: boolean;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

procedure TForm1.op_divideClick(Sender: TObject);
begin
  if checked=True then

      if op=1 then
        check_plus.State:=cbUnchecked;

      if op=2 then
        check_minus.State:=cbUnchecked;

      if op=3 then
        check_multiply.State:=cbUnchecked;

  op:=4;
  check_divide.State:=cbChecked;
  checked:=True;
end;

procedure TForm1.op_minusClick(Sender: TObject);
begin
  if checked=True then

      if op=1 then
        check_plus.State:=cbUnchecked;

      if op=4 then
        check_divide.State:=cbUnchecked;

      if op=3 then
        check_multiply.State:=cbUnchecked;

  op:=2;
  check_minus.State:=cbChecked;
  checked:=True
end;

procedure TForm1.op_multiplyClick(Sender: TObject);
begin
  if checked=True then

      if op=1 then
        check_plus.State:=cbUnchecked;

      if op=2 then
        check_minus.State:=cbUnchecked;

      if op=4 then
        check_divide.State:=cbUnchecked;

  op:=3;
  check_multiply.State:=cbChecked;
  checked:=True
end;

procedure TForm1.op_plusClick(Sender: TObject);
begin
  if checked=True then

      if op=4 then
        check_divide.State:=cbUnchecked;

      if op=2 then
        check_minus.State:=cbUnchecked;

      if op=3 then
        check_multiply.State:=cbUnchecked;

  op:=1;
  check_plus.State:=cbChecked;
  checked:=True
end;

procedure TForm1.resultClick(Sender: TObject);
begin

end;

procedure TForm1.e_1Change(Sender: TObject);
//var input_1:real;
begin
  
  input_1:=StrToFloatDef(e_1.Text, 0);
end;

procedure TForm1.e_2Change(Sender: TObject);
//var input_2:real;
begin
  input_2:=StrToFloatDef(e_2.Text, 0);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  checked:=False;
end;

procedure TForm1.confirmButtonClick(Sender: TObject);
begin


   if op=1 then
   begin
     result.Caption:=FloatToStr(input_1+input_2);
   end;

   if op=2 then
   begin
     result.Caption:=FloatToStr(input_1-input_2);
   end;

   if op=3 then
   begin
     result.Caption:=FloatToStr(input_1*input_2);
   end;

   if op=4 then
     if input_2=0 then
     begin
       result.Caption:=('Division durch 0 nicht möglich!');
     end
     else
     begin
       result.Caption:=FloatToStr(input_1/input_2);
     end;
end;

procedure TForm1.check_plusChange(Sender: Tobject);
begin

end;

end.


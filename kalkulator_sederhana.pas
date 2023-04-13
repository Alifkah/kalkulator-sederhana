unit kalkulator_sederhana;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnhitung: TButton;
    btnkeluar: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioGroup1: TRadioGroup;
    procedure btnhitungClick(Sender: TObject);
    procedure btnkeluarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure RadioButton3Change(Sender: TObject);
    procedure RadioButton4Change(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.btnhitungClick(Sender: TObject);
begin
  If RadioButton1.Checked = True Then
  Showmessage(FloatToStr (StrToFloat(Edit1.Text) + StrToFloat(Edit2.Text)))
  Else
  If RadioButton2.Checked = True Then
  Showmessage(FloatToStr (StrToFloat(Edit1.Text) - StrToFloat(Edit2.Text)))
  Else
  If RadioButton3.Checked = True Then
  Showmessage(FloatToStr (StrToFloat(Edit1.Text) * StrToFloat(Edit2.Text)))
  Else
  If RadioButton4.Checked = True Then
  Showmessage(FloatToStr (StrToFloat(Edit1.Text) / StrToFloat(Edit2.Text)))
  Else Showmessage('Pilih Jenis Perhitungan')
end;

procedure TForm1.btnkeluarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.RadioButton1Change(Sender: TObject);
begin
  Label3.Caption:='+';
end;

procedure TForm1.RadioButton2Change(Sender: TObject);
begin
  Label3.Caption:='-';
end;

procedure TForm1.RadioButton3Change(Sender: TObject);
begin
  Label3.Caption:='*';
end;

procedure TForm1.RadioButton4Change(Sender: TObject);
begin
  Label3.Caption:='/';
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin

end;

end.


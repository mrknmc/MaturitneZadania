unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  listina: array [1 .. 100,1 .. 2] of string;
  vitaz: string;
  i,j: integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
listina[i,1]:=edit1.text;
listina[i,2]:=edit2.text;
i:=i+1;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
vitaz:=listina[1,1];
j:=1;
while listina[j,2]<>'' do
begin
  if listina[j+1,2] < listina[j,2] then
    vitaz:=listina[j+1,1];
  j:=j+1;
end;
label3.Caption:='Vyhral to '+vitaz+'.';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
i:=1;
end;

end.
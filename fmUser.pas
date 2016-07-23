unit fmUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.Mask;

type
  TfrmUser = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBText1: TDBText;
    BtnExit: TBitBtn;
    BtnEdit: TBitBtn;
    DBText2: TDBText;
    procedure BtnExitClick(Sender: TObject);
    procedure BtnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUser: TfrmUser;

implementation

{$R *.dfm}
uses dm,fmEditUser;
procedure TfrmUser.BtnExitClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmUser.BtnEditClick(Sender: TObject);
begin
   DataModule1.tLogin.Edit;
   DataModule1.tLogin.Post;
end;


end.

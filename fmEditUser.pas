unit fmEditUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.DBCtrls;

type
  TfrmEdit = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBedusername: TDBEdit;
    DBedpassword: TDBEdit;
    DBedpermission: TDBEdit;
    BtnOk: TBitBtn;
    BtnCancel: TBitBtn;
    procedure BtnOkClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEdit: TfrmEdit;

implementation

{$R *.dfm}
uses dm,fmUserAdmin,Db;

procedure TfrmEdit.BtnOkClick(Sender: TObject);
begin
  if DataModule1.dsLogin.DataSet.State in [dsEdit,dsInsert] then
  begin
    try
      DataModule1.tLogin.Post;
    except
      on e: exception do
      begin
        DataModule1.tLogin.Cancel;
        raise Exception.Create('An error has occurred: User exists already.');
      end;
    end;
  end;
end;

procedure TfrmEdit.BtnCancelClick(Sender: TObject);
begin
  DataModule1.tLogin.Cancel;
end;

end.

program LoginFormProject;

uses
  Vcl.Forms,
  dm in 'dm.pas' {DataModule1: TDataModule},
  fmEditUser in 'fmEditUser.pas' {frmEdit},
  fmLogin in 'fmLogin.pas' {frmLogin},
  fmUser in 'fmUser.pas' {frmUser},
  fmUserAdmin in 'fmUserAdmin.pas' {frmAdmin},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.

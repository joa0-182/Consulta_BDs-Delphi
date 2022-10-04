program prjConsulta;

uses
  Vcl.Forms,
  untLogin in 'untLogin.pas' {frmLogin},
  untConsulta in 'untConsulta.pas' {frmPrincipal},
  DM in 'DM.pas' {DM2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM2, DM2);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmLogin, frmLogin);
  FrmLogin.ShowModal;
  Application.Run;
end.

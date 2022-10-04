unit untLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Imaging.pngimage;

type
  TfrmLogin = class(TForm)
    pnlFundo: TPanel;
    pnlLateral: TPanel;
    lblWelcome: TLabel;
    lblTitulo: TLabel;
    lblCreditos: TLabel;
    lblVersao: TLabel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    pnlNomeLogin: TPanel;
    edtUsuario: TEdit;
    pnlSenhaLogin: TPanel;
    Label3: TLabel;
    edtSenha: TEdit;
    pnlConfirmar: TPanel;
    btnConfirmar: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    numeroTentativas: integer;
    logado: boolean;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses DM;

procedure TfrmLogin.btnConfirmarClick(Sender: TObject);
begin
  DM2.sqlLogin.Close;
  DM2.sqlLogin.Params[0].AsString := edtUsuario.Text;
  DM2.sqlLogin.ParamByName('Senha').AsString := edtSenha.Text;
  DM2.sqlLogin.Open;


  if DM2.sqlLogin.IsEmpty then
    begin
      Application.MessageBox('Usu�rio ou Senha Inv�lidos', ' Aten��o', MB_ICONINFORMATION + MB_OK);
      dec(numeroTentativas);

      if (numeroTentativas) = 0 then
        begin
          Application.Terminate;
        end;
    end
    else
    begin
      logado := true;
      self.close;
    end;



end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (not logado) then
    application.Terminate
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  logado := false;
  numeroTentativas := 3;
end;

end.

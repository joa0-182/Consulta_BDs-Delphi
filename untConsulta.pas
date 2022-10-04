unit untConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    opcoes: TRadioGroup;
    pnlConsulta: TPanel;
    lblConsulta: TLabel;
    edtConsulta: TEdit;
    pnlBotao: TPanel;
    btnRealizarConsulta: TSpeedButton;
    teleConsulta: TDBGrid;
    procedure opcoesClick(Sender: TObject);
    procedure btnRealizarConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses DM;

procedure TfrmPrincipal.btnRealizarConsultaClick(Sender: TObject);
begin
      DM2.sqlConsultaD.Close;
      DM2.sqlConsultaD.SQL.Clear;

      if (opcoes.ItemIndex = 0) then
        begin
          DM2.sqlConsultaD.SQL.Add('SELECT * FROM cliente WHERE nome LIKE :parametroConsulta');
          DM2.sqlConsultaD.ParamByName('parametroConsulta'). AsString := edtConsulta.Text + '%';
        end;

      if (opcoes.ItemIndex = 1) then
        begin
          DM2.sqlConsultaD.SQL.Add('SELECT * FROM cliente WHERE bairro LIKE :parametroConsulta');
          DM2.sqlConsultaD.ParamByName('parametroConsulta'). AsString := edtConsulta.Text + '%';
        end;


      DM2.sqlConsultaD.Open;
end;

procedure TfrmPrincipal.opcoesClick(Sender: TObject);
begin
      if (opcoes.ItemIndex = 0) then
        begin
          lblConsulta.Caption := 'Digite o Nome';
        end

      else if (opcoes.ItemIndex = 1) then
        begin
          lblConsulta.Caption := 'Digite o Bairro';
        end;

end;

end.

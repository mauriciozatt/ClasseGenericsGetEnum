program ClasseGenericsGetEnum;

uses
  Vcl.Forms,
  Frm.Principal in 'Frm.Principal.pas' {FrmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.

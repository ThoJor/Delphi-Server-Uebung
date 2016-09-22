program PrjClient;

uses
  Vcl.Forms,
  UClientHaupt in 'UClientHaupt.pas' {FrmClient};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmClient, FrmClient);
  Application.Run;
end.

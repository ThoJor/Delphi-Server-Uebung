program PrjServer;

uses
  Vcl.Forms,
  UServerHaupt in 'UServerHaupt.pas' {FrmServer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmServer, FrmServer);
  Application.Run;
end.

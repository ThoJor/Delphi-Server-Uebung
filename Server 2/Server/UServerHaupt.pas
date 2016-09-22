unit UServerHaupt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Win.ScktComp, Vcl.StdCtrls;

type
  TFrmServer = class(TForm)
    SSocket: TServerSocket;
    MemoIPs: TMemo;
    BtnStart: TButton;
    BtnClose: TButton;
    EdtPort: TEdit;
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnStartClick(Sender: TObject);
    procedure SSocketClientConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure SSocketClientRead(Sender: TObject; Socket: TCustomWinSocket);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  FrmServer: TFrmServer;

implementation

{$R *.dfm}

procedure TFrmServer.BtnCloseClick(Sender: TObject);
begin
  SSocket.Active:= false;
  Application.Terminate;
end;

procedure TFrmServer.BtnStartClick(Sender: TObject);
begin
  SSocket.Port:= StrToInt(EdtPort.Text);
  SSocket.Active:= true;
end;

procedure TFrmServer.SSocketClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  MemoIPs.Lines.Add(Socket.RemoteAddress);
end;

procedure TFrmServer.SSocketClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  MemoIPs.Lines.Add(Socket.ReceiveText);
end;

end.

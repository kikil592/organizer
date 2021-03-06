; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Organizer"
#define MyAppVersion "1.0"
#define MyAppPublisher "Kiki's Company"
#define MyAppExeName "Organizer.exe"
#define Dirscript "C:\Users\Kiki\Desktop\Programmation\Organizer\Iss"
[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{959160C8-87D9-411E-942C-C80D996B5B2F}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
OutputDir=C:\Users\Kiki\Desktop
OutputBaseFilename=Setup Organizer
Compression=lzma
SolidCompression=yes
UninstallDisplayIcon={app}\Calend.ico

[Languages]
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\Kiki\Desktop\Programmation\Organizer\Organizer\bin\Release\Organizer.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "{#Dirscript}\Calend.ico"; DestDir: "{app}"; Flags: ignoreversion
;Source: "{#Dirscript}\Agenda.txt"; DestDir: "{app}"; Flags: ignoreversion
;Source: "{#Dirscript}\Fichier.txt"; DestDir: "{app}"; Flags: ignoreversion
;Source: "{#Dirscript}\Settings.txt"; DestDir: "{app}"; Flags: ignoreversion
;Source : "{#Dirscript}\WeatherIcons\*" ; DestDir : "{app}\WeatherIcons" ; Flags : ignoreversion
;Source : "{#Dirscript}\Documents\*" ; DestDir : "{app}\Documents" ; Flags : ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}";IconFilename:"{app}\Calend.ico"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon;IconFilename:"{app}\Calend.ico"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent


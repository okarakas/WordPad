program Word;

uses
  Forms,
  Wordp in 'Wordp.pas' {Form1},
  About in 'About.pas' {Aboutform};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TAboutform, Aboutform);
  Application.Run;
end.

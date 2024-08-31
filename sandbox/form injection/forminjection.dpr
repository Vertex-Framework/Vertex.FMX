program forminjection;

uses
  Spring.Container,
  System.SysUtils,
  System.StartUpCopy,
  FMX.Forms,
  uMainForm in 'uMainForm.pas' {VertexForm1},
  Vertex.FMX.Form.Base in '..\..\src\Forms\Vertex.FMX.Form.Base.pas' {VertexForm},
  Unit1 in 'Unit1.pas' {VertexForm2};

{$R *.res}
begin
  try
    Application.Initialize;
    var Container := TContainer.Create;
    Container.RegisterType<TVertexForm1>('VertexForm1');
    Container.RegisterType<TVertexForm2>('VertexForm2');
    Container.RegisterInstance<TContainer>(Container);


    Container.Build();
    var VertexForm1 := Container.Resolve<TVertexForm1>('VertexForm1',[Application]);
    try
      VertexForm1.Show;
      Application.MainForm := VertexForm1;

      Application.Run;
    finally
      VertexForm1.Free;
    end;
  except
    on E: Exception do
      Application.ShowException(E);
  end;
end.

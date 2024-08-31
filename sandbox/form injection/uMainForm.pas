unit uMainForm;

interface

uses
  Unit1,
  Spring.Container,
  Vertex.FMX.Form.Base,
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TVertexForm1 = class(TVertexForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    VertexForm2 : TVertexForm2;
  public
    procedure Init(Container : TContainer); override;
  end;


implementation

{$R *.fmx}

procedure TVertexForm1.Button1Click(Sender: TObject);
begin
  VertexForm2.ShowModal;
end;

procedure TVertexForm1.Init(Container: TContainer);
begin
  inherited;
  VertexForm2 := Container.Resolve<Unit1.TVertexForm2>('VertexForm2');
end;

end.

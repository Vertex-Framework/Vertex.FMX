unit Vertex.FMX.Form.Base;

interface

uses
  Spring.Container,
  Spring.Container.Common,
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs;

type
  TVertexForm = class(TForm)
  private
    { Private declarations }
  protected
    Container : TContainer;
  public
    [Inject]
    procedure Init(Container : TContainer); Virtual;
  end;

implementation

{$R *.fmx}

{ TVertexForm }

procedure TVertexForm.Init(Container: TContainer);
begin
  Self.Container := Container;
end;

end.

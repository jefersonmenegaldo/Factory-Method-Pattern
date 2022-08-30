unit StrawberryCheeseCake;

interface

uses
  CheeseCakeInterface;

type
  TStrawberryCheeseCake = class(TInterfacedObject, ICheeseCake)
  public
    procedure MakeCrust();
    procedure AddLayer();
    procedure AddFlavor();
    procedure Bake();
  End;
implementation

procedure TStrawberryCheeseCake.AddFlavor;
begin
    WriteLn('Added Strawberry Flavour…');
end;

procedure TStrawberryCheeseCake.AddLayer();
begin
    WriteLn('Added Layers on Strawberry Cheesecake…');
end;

procedure TStrawberryCheeseCake.Bake;
begin
    WriteLn('Here''s your Strawberry Cheesecake…');
end;

procedure TStrawberryCheeseCake.MakeCrust;
begin
    WriteLn('Making Crust for your Strawberry Cheesecake…');
end;
end.

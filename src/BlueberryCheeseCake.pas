unit BlueberryCheeseCake;

interface

uses
  CheeseCakeInterface;

type
  TBlueberryCheeseCake = class(TInterfacedObject, ICheeseCake)
  public
    procedure MakeCrust();
    procedure AddLayer();
    procedure AddFlavor();
    procedure Bake();
  End;
implementation

procedure TBlueberryCheeseCake.AddFlavor;
begin
    WriteLn('Added Blueberry Flavour…');
end;

procedure TBlueberryCheeseCake.AddLayer();
begin
    WriteLn('Added Layers on Blueberry Cheesecake…');
end;

procedure TBlueberryCheeseCake.Bake;
begin
    WriteLn('Here''s your Blueberry Cheesecake…');
end;

procedure TBlueberryCheeseCake.MakeCrust;
begin
    WriteLn('Making Crust for your Blueberry Cheesecake…');
end;
end.

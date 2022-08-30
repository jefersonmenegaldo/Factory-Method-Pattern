unit MangoCheeseCake;

interface

uses
  CheeseCakeInterface;

type
  TMangoCheeseCake = class(TInterfacedObject, ICheeseCake)
  public
    procedure MakeCrust();
    procedure AddLayer();
    procedure AddFlavor();
    procedure Bake();
  End;
implementation

procedure TMangoCheeseCake.AddFlavor;
begin
    WriteLn('Added Mango Flavour…');
end;

procedure TMangoCheeseCake.AddLayer();
begin
    WriteLn('Added Layers on Mango Cheesecake…');
end;

procedure TMangoCheeseCake.Bake;
begin
    WriteLn('Here''s your Mango Cheesecake…');
end;

procedure TMangoCheeseCake.MakeCrust;
begin
    WriteLn('Making Crust for your Mango Cheesecake…');
end;
end.

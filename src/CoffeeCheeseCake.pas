unit CoffeeCheeseCake;

interface

uses
  CheeseCakeInterface;

type
  TCoffeeCheeseCake = class(TInterfacedObject, ICheeseCake)
  public
    procedure MakeCrust();
    procedure AddLayer();
    procedure AddFlavor();
    procedure Bake();
  End;
implementation

procedure TCoffeeCheeseCake.AddFlavor;
begin
    WriteLn('Added Coffee Flavour…');
end;

procedure TCoffeeCheeseCake.AddLayer();
begin
    WriteLn('Added Layers on Coffee Cheesecake…');
end;

procedure TCoffeeCheeseCake.Bake;
begin
    WriteLn('Here''s your Coffee Cheesecake…');
end;

procedure TCoffeeCheeseCake.MakeCrust;
begin
    WriteLn('Making Crust for your Coffee Cheesecake…');
end;
end.

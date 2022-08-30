unit CheeseCakeFactoryGenerator;

interface

type
    TCheeseCakeFlavour = (ckfStrawberry, ckfBlueberry, ckfMango, ckfCoffee);

procedure PrepareCheeseCake();

implementation

uses
    CheeseCakeInterface,
    CheeseCakeFactory;

procedure PrepareCheeseCake();
var
  Flavor:            TCheeseCakeFlavour;
  FlavorStr:         String;
  Cheesecake:        ICheeseCake;
  CheeseCakeFactory: TCheeseCakeFactory;
begin
    Writeln('Which Flavour of Cheesecake do you want?');
    Readln(FlavorStr);

    Flavor := ckfStrawberry;
    Cheesecake := Nil;

    if FlavorStr = 'Strawberry' then
        Flavor := ckfStrawberry
    else if FlavorStr = 'Blueberry' then
        Flavor := ckfBlueberry
    else if FlavorStr = 'Mango' then
        Flavor := ckfMango
    else if FlavorStr = 'Coffee' then
         Flavor := ckfCoffee;

    CheeseCakeFactory := TCheeseCakeFactory.Create;
    try
        case Flavor of
            ckfStrawberry: Cheesecake := CheeseCakeFactory.CreateStrawberryCheesecake;
            ckfBlueberry:  Cheesecake := CheeseCakeFactory.CreateBlueberryCheesecake;
            ckfMango:      Cheesecake := CheeseCakeFactory.CreateMangoCheesecake;
            ckfCoffee:     Cheesecake := CheeseCakeFactory.CreateCoffeeCheesecake;
        end;

        Cheesecake.MakeCrust;
        Cheesecake.AddLayer;
        Cheesecake.AddFlavor;
        Cheesecake.Bake;
        ReadLn;
    finally
        CheeseCakeFactory.Free;
    end;
end;
end.

unit CheeseCakeFactory;

interface

uses
  CheeseCakeInterface;

type
    TCheeseCakeFactory = class
    public
        function CreateStrawberryCheesecake(): ICheeseCake;
        function CreateBlueberryCheesecake(): ICheeseCake;
        function CreateMangoCheesecake(): ICheeseCake;
        function CreateCoffeeCheesecake(): ICheeseCake;
    end;

implementation

uses
  StrawberryCheeseCake,
  BlueberryCheeseCake,
  MangoCheeseCake,
  CoffeeCheeseCake;


function TCheeseCakeFactory.CreateBlueberryCheesecake: ICheeseCake;
begin
    Result := TBlueberryCheeseCake.Create;
end;

function TCheeseCakeFactory.CreateCoffeeCheesecake: ICheeseCake;
begin
  Result := TCoffeeCheeseCake.Create;
end;

function TCheeseCakeFactory.CreateMangoCheesecake: ICheeseCake;
begin
    Result := TMangoCheeseCake.Create;
end;

function TCheeseCakeFactory.CreateStrawberryCheesecake: ICheeseCake;
begin
    Result := TStrawberryCheeseCake.Create;
end;
end.

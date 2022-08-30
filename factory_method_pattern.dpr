program factory_method_pattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  CheeseCakeInterface in 'src\interfaces\CheeseCakeInterface.pas',
  StrawberryCheeseCake in 'src\StrawberryCheeseCake.pas',
  CheeseCakeFactory in 'src\CheeseCakeFactory.pas',
  BlueberryCheeseCake in 'src\BlueberryCheeseCake.pas',
  MangoCheeseCake in 'src\MangoCheeseCake.pas',
  CheeseCakeFactoryGenerator in 'src\CheeseCakeFactoryGenerator.pas',
  CoffeeCheeseCake in 'src\CoffeeCheeseCake.pas';

begin
  try
    CheeseCakeFactoryGenerator.PrepareCheeseCake;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.

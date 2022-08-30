program factory_method_pattern;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  CheeseCakeInterface in 'CheeseCakeInterface.pas',
  StrawberryCheeseCake in 'StrawberryCheeseCake.pas',
  CheeseCakeFactory in 'CheeseCakeFactory.pas',
  BlueberryCheeseCake in 'BlueberryCheeseCake.pas',
  MangoCheeseCake in 'MangoCheeseCake.pas',
  CheeseCakeFactoryGenerator in 'CheeseCakeFactoryGenerator.pas',
  CoffeeCheeseCake in 'CoffeeCheeseCake.pas';

begin
  try
    CheeseCakeFactoryGenerator.PrepareCheeseCake;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.

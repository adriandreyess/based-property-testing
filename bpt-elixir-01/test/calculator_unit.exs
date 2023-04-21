defmodule CalculatorUnit do
  use ExUnit.Case
  require Calculator.Operations
  #doctest CalculatorUnit

  test "Funcion suma" do
    assert Calculator.Operations.suma(1,2)  == 3
    assert Calculator.Operations.suma(2,1)  == 3
    assert Calculator.Operations.suma(2,-1) == 1
    assert Calculator.Operations.suma(2,-1) == Calculator.Operations.suma(-1,2)
  end
  test "Funcion divider" do
    assert Calculator.Operations.divider(1,0)  == {:error, "No puede ser 0"}
    assert Calculator.Operations.divider(0,1)  == {:error, "No puede ser 0"}
    assert Calculator.Operations.divider(0,0)  == {:error, "No puede ser 0"}
    assert Calculator.Operations.divider(2,-1) == Calculator.Operations.suma(-1,2)
  end
end

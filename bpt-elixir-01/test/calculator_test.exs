defmodule CalculatorTest do
  use ExUnit.Case
  use ExUnitProperties

  require Calculator.Operations

  property "The position of the numbers is not important" do
    check all a <- StreamData.integer(), b <- StreamData.integer() do
      assert Calculator.Operations.suma(a,b) == Calculator.Operations.suma(b,a)
      assert Calculator.Operations.resta(a,b) == a-b
      assert Calculator.Operations.producto(a,b) == Calculator.Operations.producto(b,a)
      # assert Calculator.Operations.divider(a,b) == {:ok, a/b}
    end
  end

end

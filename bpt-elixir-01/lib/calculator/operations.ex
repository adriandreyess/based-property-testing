defmodule Calculator.Operations do

  def suma(x,y), do: x+y
  def resta(x,y), do: x-y
  def producto(x,y), do: x*y
  def divider(x,y)  do
    cond do
      x != 0 and y == 0 -> {:error, "No puede ser 0"}
      x == 0 or y == 0 -> {:error, "No puede ser 0"}
      true -> {:ok, x/y}

    end

  end
end

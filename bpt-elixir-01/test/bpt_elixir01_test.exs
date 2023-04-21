# defmodule BptElixir01Test do
#   use ExUnit.Case
#   use Propcheck
#   doctest BptElixir01

#   # Definir las propiedades que se quieren probar
#   property "reversing twice gives the original list" do
#     check all list <- list_of(integer()) do
#       assert list == list |> Enum.reverse() |> Enum.reverse()
#     end
#   end
# end

defmodule BptElixir01Test do
  use ExUnit.Case
  # use PropCheck
  use ExUnitProperties
  require BptElixir01


  property "bin1 <> bin2 always starts with bin1" do
    check all bin1 <- binary(),
              bin2 <- binary() do
      assert String.starts_with?(bin1 <> bin2, bin1)
    end
  end


  # property "Always obtain a dictionary with 2 elements" do
  #   check all name <- StreamData.string(:ascii) do
  #     assert BptElixir01.create_email(name) == {:ok, name}

  #   end
  # end
end

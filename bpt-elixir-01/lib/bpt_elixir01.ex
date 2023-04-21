defmodule BptElixir01 do
  @moduledoc """
  Documentation for `BptElixir01`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> BptElixir01.create_email(email)
      email

  """


  def create_email(name) do
    cond do
      name == "" -> {:error, name}
      name == " " -> {:error, name}
      true -> {:ok,name}

    end

  end
end

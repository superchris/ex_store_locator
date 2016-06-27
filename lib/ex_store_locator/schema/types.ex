defmodule ExStoreLocator.Schema.Types do

  use Absinthe.Schema.Notation

  object :store do
    field :brand, :string
    field :vanity_name, :string
    field :address, :address do
      resolve fn _, %{source: store} ->
        {:ok, %{city: store.city, address_line_one: store.address_line_one} }
      end
    end
  end

  object :address do
    field :city, :string
    field :address_line_one, :string
  end
end

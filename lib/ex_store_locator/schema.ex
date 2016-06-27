defmodule ExStoreLocator.Schema do
  use Absinthe.Schema

  import_types ExStoreLocator.Schema.Types

  query do
    field :store_by_id, :store do
      arg :division_number, non_null(:string)
      arg :store_number, non_null(:string)
      resolve &ExStoreLocator.StoreResolver.locate_store/2
    end
  end
end

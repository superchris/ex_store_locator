defmodule ExStoreLocator.StoreResolver do

  alias ExStoreLocator.StoreFetcher

  def locate_store(_, _) do
    {:ok, StoreFetcher.get!("014/00923").body }
  end

end

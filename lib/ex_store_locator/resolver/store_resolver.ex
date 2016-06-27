defmodule ExStoreLocator.StoreResolver do

  alias ExStoreLocator.StoreFetcher

  def locate_store(%{store_number: store_number, division_number: division_number}, _) do
    {:ok, StoreFetcher.get!("#{division_number}/#{store_number}").body }
  end

end

defmodule ExStoreLocator.StoreFetcher do
  use HTTPoison.Base

  def process_url(url) do
    "http://ecsb-dev.kroger.com/locator/store/" <> url
  end

  defp process_request_headers(headers) do
    ["X-Correlation-Id": "foobar"]
  end

  def process_response_body(body) do
    body
    |> Poison.decode!
    |> Enum.map(fn({k, v}) -> {convert_key(k), v} end)
    |> Enum.into(%{})
  end

  defp convert_key(key) do
    key |> Inflex.underscore |> String.to_atom
  end
end

defmodule Thor.Socket do
  @moduledoc false

  def track(socket, key, value) do
    :ok
    # tokenized = Phoenix.Token.sign(socket, "__thor__", value)

    # case socket.assigns[:__thor__] do
    #   %{^key => last_value} = thor_assigns ->
    #     if last_value == tokenized do
    #       {:ok, socket}
    #     else
    #       Phoenix.LiveView.assign(socket, :__thor__, Map.put(thor_assigns, key, tokenized))
    #     end
    # end
  end
end

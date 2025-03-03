defmodule Thor do
  @moduledoc """
  Get a handle on your thundering herd with Thor.
  """

  defmacro __using__(_opts) do
    quote do
      import Thor
      @before_compile Thor

      Module.register_attribute(__MODULE__, :thor_assigns, accumulate: true)
    end
  end

  defmacro cacheable(assign) do
    quote do
      Module.put_attribute(__MODULE__, :thor_assigns, unquote(assign))
    end
  end

  defmacro __before_compile__(_env) do
    quote do
      def __thor_assigns__ do
        @thor_assigns
      end
    end
  end
end

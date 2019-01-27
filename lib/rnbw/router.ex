defmodule Rnbw.Router do
  @moduledoc """
  """

  use Plug.Router

  plug :match
  plug :dispatch

  post "/authorize" do
  end

  get "/:id" do
  end

  post "/" do
  end

  put "/:id" do
  end

  delete "/:id" do
  end
end

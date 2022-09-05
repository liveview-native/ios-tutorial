defmodule LvnTutorialWeb.InitAssigns do
  import Phoenix.LiveView

  def on_mount(:default, _params, _session, socket) do
    case get_connect_params(socket) do
      %{"_platform" => "ios"} -> {:cont, socket |> assign(:platform, :ios)}
      _ -> {:cont, socket |> assign(:platform, :web)}
    end
  end
end

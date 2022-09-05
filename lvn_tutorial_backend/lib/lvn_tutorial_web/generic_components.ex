defmodule LvnTutorialWeb.GenericComponents do
  use Phoenix.Component

  def image(%{platform: :ios} = assigns) do
    ~H"""
    <asyncimage src={@src} frame-width={@width} frame-height={@height} />
    """
  end

  def image(assigns) do
    ~H"""
    <img src={@src} width={@width} height={@height} />
    """
  end

  def link(%{platform: :ios} = assigns) do
    ~H"""
    <navigationlink id={@id} data-phx-href={@href} data-phx-link="redirect" data-phx-link-state="push">
      <%= render_slot(@inner_block) %>
    </navigationlink>
    """
  end
  def link(assigns) do
    ~H"""
    <a id={@id} href={@href} data-phx-link="redirect" data-phx-link-state="push">
      <%= render_slot(@inner_block) %>
    </a>
    """
  end

end

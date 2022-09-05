defmodule LvnTutorialWeb.CatComponents do
  use Phoenix.Component

  def cat_voting(%{platform: :ios} = assigns) do
    ~H"""
    <button phx-click="toggle-favorite" phx-value-name={@name}>
      <image system-name={if @favorite, do: "star.fill", else: "star"} symbol-color={if @favorite, do: "#f3c51a", else: "#000000"} />
    </button>
    """
  end

  def cat_voting(assigns) do
    ~H"""
    <!-- TODO -->
    """
  end

  def cat_rating(%{platform: :ios} = assigns) do
    ~H"""
    <cat-rating score={@score} />
    """
  end

  def cat_rating(assigns) do
    ~H"""
    <!-- TODO -->
    """
  end


end

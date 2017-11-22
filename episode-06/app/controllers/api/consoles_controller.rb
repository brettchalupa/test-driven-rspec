class Api::ConsolesController < ApplicationController
  def index
    if params[:manufacturer].present?
      consoles = Console.where(manufacturer: params[:manufacturer])
    else
      consoles = Console.all
    end

    render(json: { 'consoles' => consoles.map(&:formatted_name) })
  end
end

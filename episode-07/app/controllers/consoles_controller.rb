class ConsolesController < ApplicationController
  def index
    @consoles = Console.all
  end

  def new
    @console = Console.new
  end

  def create
    console = Console.new(console_params)
    console.save
    redirect_to(consoles_path)
  end

  private

  def console_params
    params.require(:console).permit(:name, :manufacturer)
  end
end

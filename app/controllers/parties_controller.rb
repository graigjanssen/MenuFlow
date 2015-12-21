class PartiesController < ApplicationController

  def index
    @party = Party.new
    @parties = Party.all
  end

  def create
    Party.create( party_params )
    redirect_to parties_path
  end

  def destroy
    Party.destroy(params[:id])
    redirect_to parties_path
  end

  private

  def party_params
    params.require(:party).permit(:name, :size, :location, :balance, :paid)
  end

end

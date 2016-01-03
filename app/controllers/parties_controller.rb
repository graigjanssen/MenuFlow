class PartiesController < ApplicationController

  def index
    @party = Party.new
    @active_parties = Party.where(paid: nil)
    @paid_parties = Party.where(paid: 'yes')
  end

  def show
    @current_party = Party.find(params[:id])
  end

  def create
    Party.create( party_params )
    redirect_to parties_path
  end

  def update
    party = Party.find(params[:id])
    party.update (party_params)
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

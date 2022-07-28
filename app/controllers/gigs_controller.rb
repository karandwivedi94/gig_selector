class GigsController < ApplicationController
  #before_action :check_for_admin, only: [:edit, :destroy]
def index 
  @gigs = Gig.all
end

  def new
    @gig = Gig.new
  end

  def create
    gig = Gig.create gig_params
    @current_user.gigs << gig # Give the new gig to the current user
    redirect_to gig # Change this to redirect to gig or somewhere
  end

  def edit
    @gig = Gig.find params[:id]
    # check_for_owner(@gig)
  end

  def update
    gig = Gig.find params[:id]
    gig.update gig_params
    redirect_to gig
  end

  def show
    @gig = Gig.find params[:id]
  end

  def destroy
    gig = Gig.find params[:id]
    gig.destroy
    redirect_to gigs_path
  end


  private
  def gig_params
    params.require(:gig).permit(:name, :location, :image, :eventdate, :tickets_link, :user_id, :genre, :rating, :artist, :artist_ids => [])
  end
end




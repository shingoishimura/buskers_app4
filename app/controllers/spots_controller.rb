class SpotsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
 def index
   @spots = Spot.all
  
  
 end

 def show
   @spot = Spot.find(params[:id])
   @comment = Comment.new 
   @comments = @spot.comments.includes(:user)

 end


 def edit
 @spot = Spot.find(params[:id])
 unless  @spot.user_id == current_user.id
  redirect_to action: :index
  
  end


 end

 def destroy
  spot = Spot.find(params[:id])

  spot.destroy

  redirect_to root_path
 end


 def update
  @spot = Spot.find(params[:id])
     
  if @spot.update(spot_params)

     redirect_to  spot_path

   else
     render :edit

  end


 end

 def new

  @spot = Spot.new

 end

 def create
  @spot = Spot.new(spot_params)
    if @spot.save
      redirect_to root_path
    else
      render :new
    end
    
  end

  


 
 private

 def spot_params
   params.require(:spot).permit(:name,:add,:note,:image).merge(user_id: current_user.id)
 end

end

class SpecialistsController < ApplicationController
  def new
    @specialist = Specialist.new
  end

  def show
    @specialist = Specialist.find(params[:id])
  end

  def create
    @specialist = Specialist.new(specialist_params)
    if @specialist.save
      redirect_to @specialist
      flash[:succes] = "Specialist aangemaakt."

    else
      flash.now[:danger] = @specialist.errors.messages
      render 'new'
    end
  end

private

  def specialist_params
    params.require(:specialist).permit(:id, :name, :bio, :profession)  
  end

end
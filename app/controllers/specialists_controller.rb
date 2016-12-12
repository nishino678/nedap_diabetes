class SpecialistsController < ApplicationController
  def new
    @specialist = Specialist.new
  end

  def show
    @specialist = Specialist.find(params[:id])
  end

  def index
    @specialist = Specialist.all
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

  def edit
    @specialist = Specialist.find(params[:id])
  end

  def destroy
    Specialist.find(params[:id]).destroy
    flash[:success] = "Specialist verwijderd"
    redirect_to specialists_url
  end

  def update
    @specialist = Specialist.find(params[:id])
    if @specialist.update_attributes(specialist_params)
      flash[:succes] = "Specialist bijgewerkt"
      redirect_to @specialist
    else
      render 'edit'
    end
  end

private

  def specialist_params
    params.require(:specialist).permit(:id, :name, :bio, :profession)
  end

end
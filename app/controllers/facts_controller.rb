class FactsController < ApplicationController
  before_action :admin_user,   only: [:edit, :destroy, :update]
  def index
    @fact = Fact.all.order('title ASC')
  end

  def new
    @fact = Fact.new
  end

  def create
    @fact = Fact.new(fact_params)
    if @fact.save
      redirect_to @fact
      flash[:succes] = "Feitje aangemaakt."
    else
      flash.now[:danger] = @fact.errors.messages
      render 'new'
    end
  end

  def show
    @fact = Fact.find(params[:id])
  end

  def edit
    @fact = Fact.find(params[:id])
  end

   def update
    @fact = Fact.find(params[:id])
    if @fact.update_attributes(user_params)
      flash[:success] = "Feitje bijgewerkt"
      redirect_to @feitje
    else
      render 'edit'
    end
  end

  def destroy
    Fact.find(params[:id]).destroy
    flash[:success] = "Feitje verwijderd"
    redirect_to facts_url
  end

private

  def fact_params
    params.require(:fact).permit(:title, :content)
  end

end
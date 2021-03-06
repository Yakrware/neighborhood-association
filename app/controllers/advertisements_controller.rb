class AdvertisementsController < ApplicationController
  before_action :set_advertisement, only: [:show, :edit, :update, :destroy]

  def index
    @advertisements = Advertisement.all
    respond_with(@advertisements)
  end

  def show
    respond_with(@advertisement)
  end

  def new
    @advertisement = Advertisement.new
    respond_with(@advertisement)
  end

  def edit
  end

  def create
    @advertisement = Advertisement.new(advertisement_params)
    @advertisement.save
    respond_with(@advertisement)
  end

  def update
    @advertisement.update(advertisement_params)
    respond_with(@advertisement)
  end

  def destroy
    @advertisement.destroy
    respond_with(@advertisement)
  end

  private
    def set_advertisement
      @advertisement = Advertisement.find(params[:id])
    end

    def advertisement_params
      params[:advertisement]
    end
end

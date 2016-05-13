class DatasetsController < ApplicationController

  def index

    @datasets = Dataset.all

    respond_to do |format|
      format.html do
        render 'index'
      end
      format.json do
        render json: @datasets
      end
      format.xml do
        render xml: @datasets
      end
    end

  end

  def create
  end

  def show
    @dataset = Dataset.find_by(id: params[:id])
    if @dataset == nil
      redirect_to datasets_url
    end
    cookies['dataset_id'] = @dataset.id
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
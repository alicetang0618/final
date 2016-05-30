class DatasetsController < ApplicationController

  before_action :find_dataset, :except => [:index, :create, :new]

  def find_dataset
    @dataset = Dataset.find_by(id: params[:id])
  end

  def index
    @datasets = Dataset.paginate(:page => params[:page], :per_page => 30)
  end

  def create
    @dataset = Dataset.new
    @dataset.database = params[:dataset][:database]
    @dataset.table = params[:dataset][:table]
    @dataset.url = params[:dataset][:url]
    success = @dataset.save
    if success
      redirect_to datasets_url
    else
      flash["notice"] = "Sorry, there's something wrong with the information you entered. Please try again!"
      redirect_to new_dataset_url
    end
  end

  def show
    if @dataset == nil
      redirect_to datasets_url
    end
  end

  def new
    if not session[:user_id]
      redirect_to login_url
    end
    @dataset = Dataset.new
  end

  def edit
    if not (session[:user_id] and User.find_by(id: session[:user_id]).admin)
      redirect_to datasets_url(@dataset)
    end
  end

  def update
    @dataset.database = params[:dataset][:database]
    @dataset.table = params[:dataset][:table]
    @dataset.url = params[:dataset][:url]
    success = @dataset.save
    if success
      redirect_to datasets_url(@dataset)
    else
      flash["notice"] = "Sorry, there's something wrong with the information you entered. Please try again!"
      redirect_to edit_dataset_path(@dataset)
    end
  end

  def destroy
    if not (session[:user_id] and User.find_by(id: session[:user_id]).admin)
      redirect_to datasets_url(@dataset)
    end
    if @dataset
      @dataset.delete
    end
    redirect_to datasets_url
  end

end
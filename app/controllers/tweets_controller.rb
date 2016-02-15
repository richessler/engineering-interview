class TweetsController < ApplicationController

  def show
    @tweet = Tweet.find(params[:id])
  end

  def index
    @tweets = Tweet.all
  end

  def create
    @tweet = Tweet.create(permitted_params)
    redirect_to tweets_path
  end

  private def permitted_params
    params.require(:tweet).permit(:name, :body)
  end

end

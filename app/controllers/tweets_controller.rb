class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def create
    @tweet = Tweet.create(strong_tweet_params)
    redirect_to tweets_path
  end

  private

  def strong_tweet_params
    params.require(:tweet).permit(:name, :content)
  end
end
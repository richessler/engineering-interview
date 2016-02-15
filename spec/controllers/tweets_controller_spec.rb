RSpec.describe TweetsController do
  context 'listing tweets' do
    before :example do
      get :index
    end
    it 'should assign tweets' do
      expect(assigns['tweets']).not_to be_nil
    end
    it 'should render a 200 status code' do
      expect(response.status).to eq(200)
    end
    it 'should render the index template' do
      expect(response).to render_template(:index)
    end
  end

  context 'show a tweet' do
    before :example do
      @t = Tweet.create(name: "Hello World", body: "Hi")
      get :show, id: @t.id
    end

    it 'should assign tweet' do
      expect(assigns['tweet']).not_to be_nil
    end
    it 'should render a 200 status code' do
      expect(response.status).to eq(200)
    end
    it 'should render the show template' do
      expect(response).to render_template(:show)
    end

  end

  context 'create a tweet' do
    before :example do
      post :create, {tweet: {name: "Hello World", body: "Hi"}}
    end

    it 'should assign tweet' do
      expect(assigns['tweet']).not_to be_nil
    end
    it 'should redirect to tweets index' do
      expect(response).to redirect_to(tweets_path)
    end
    it 'should render a 302 status code' do
      expect(response.status).to eq(302)
    end

  end

end

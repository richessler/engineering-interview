RSpec.describe TweetsController do
  before(:all) do
    @tweet = Tweet.create(name: 'Richard Hessler', content: '140 characters is never enough so I\'m going to make this more because I didn\'t add validations for length of a "tweet" #herpderpnerd :D')
  end
  context 'listing tweets' do
    before(:each) do
      get :index
    end

    it 'assigns tweets' do
      expect(assigns(:tweets)).to be_present
    end

    it 'renders a 200 status code' do
      expect(response).to be_success
    end

    it 'renders the index template' do
      expect(response).to render_template(:index)
    end
  end

  context 'show a tweet' do
    before(:each) do
      get :show, id: @tweet.id
    end

    it 'assigns tweet' do
      expect(assigns(:tweet)).to be_present
    end
    it 'renders a 200 status code' do
      expect(response).to be_success
    end
    it 'renders the show template' do
      expect(response).to render_template(:show)
    end

  end

  context 'create a tweet' do
    before(:each) do
      get :create, { tweet: { name: 'Another Richard', content: 'I follow tweet rules' } }
    end
    it 'assigns tweet' do
      expect(assigns(:tweet)).to be_present
    end
    it 'redirects to tweets index' do
      expect(response).to redirect_to(:tweets)
    end
    it 'renders a 302 status code' do
      expect(response.status).to be(302)
    end
  end
end

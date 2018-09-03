# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    let(:post_one) do
      {
        title: 'Hola mundo',
        description: 'descripcion larga para que la validacion pase'
      }
    end

    before :each do
      post :create, post: post_one
    end

    it { expect(response).to have_http_status 200 }

    it 'add post' do
      expect do
        post :create, post: post_one
      end.to change(Post, :count).by(1)
    end
  end
end

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CommentsController, type: :request do
  describe 'POST #create' do
    p = FactoryGirl.create(:post)
    let(:comment) do
      { email: 'vincent@hotmail.com', body: 'muy buen post', post: p }
    end
    before :each do
      post post_comments_path(p.id), comment: comment
    end

    it { expect(response).to have_http_status 200 }
  end
end

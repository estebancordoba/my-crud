# frozen_string_literal: true

require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe 'Static Pages' do
    it 'should get home' do
      get :home
      expect(response).to be_success
    end

    it 'should get help' do
      get :help
      expect(response).to be_success
    end

    it 'should get about' do
      get :about
      expect(response).to be_success
    end
  end
end

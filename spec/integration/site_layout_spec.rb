# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'StaticPagesIntegration' do
  describe 'Site Layout' do
    it 'layout links' do
      get root_path
      # response.status.should be(200)
      assert_select 'a[href=?]', root_path, count: 2
      assert_select 'a[href=?]', help_path
      assert_select 'a[href=?]', about_path
    end
  end
end

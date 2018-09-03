# frozen_string_literal: true

FactoryGirl.define do
  factory :comment do
    email 'vincent@hotmail.com'
    body 'muy buen post!'
    association :post, factory: :post
  end
end

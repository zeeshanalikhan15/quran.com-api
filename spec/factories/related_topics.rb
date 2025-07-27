# frozen_string_literal: true

FactoryBot.define do
  factory :related_topic do
    topic_id { 'MyString' }
    related_topic_id { 'MyString' }
  end
end

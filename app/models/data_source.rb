# frozen_string_literal: true

# == Schema Information
# Schema version: 20230313013539
#
# Table name: data_sources
#
#  id         :integer          not null, primary key
#  name       :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DataSource < ApplicationRecord
  has_many :resource_contents
end

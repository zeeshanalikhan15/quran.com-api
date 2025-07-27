# frozen_string_literal: true

# == Schema Information
#
# Table name: hizbs
#
#  id             :bigint           not null, primary key
#  hizb_number    :integer
#  verse_mapping  :jsonb
#  verses_count   :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  first_verse_id :integer
#  last_verse_id  :integer
#
# Indexes
#
#  index_hizbs_on_first_verse_id_and_last_verse_id  (first_verse_id,last_verse_id)
#  index_hizbs_on_hizb_number                       (hizb_number)
#
require 'rails_helper'

RSpec.describe Hizb, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

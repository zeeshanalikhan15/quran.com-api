# == Schema Information
# Schema version: 20230313013539
#
# Table name: morphology_grammar_patterns
#
#  id         :bigint           not null, primary key
#  arabic     :string
#  english    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_morphology_grammar_patterns_on_arabic   (arabic)
#  index_morphology_grammar_patterns_on_english  (english)
#

class Morphology::GrammarPattern < ApplicationRecord
end

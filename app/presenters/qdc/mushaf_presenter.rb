# frozen_string_literal: true

module Qdc
  class MushafPresenter < BasePresenter
    def approved
      Mushaf.approved.includes(:qirat_type)
    end
  end
end

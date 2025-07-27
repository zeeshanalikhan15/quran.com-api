# frozen_string_literal: true

module Qdc
  module Search
    class NavigationalResults
      def initialize(search)
        @search = search
      end

      def results
        if empty?
          []
        else
          prepare_results
        end
      end

      def empty?
        @search.empty?
      end

      def range?
        false
      end

      def total_count
        @search.response['hits']['total']['value']
      end

      protected
      def prepare_results
        @search.response['hits']['hits'].map do |result|
          result['_source']
        end.sort_by do |result|
          result['priority']
        end
      end
    end
  end
end

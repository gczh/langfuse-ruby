# frozen_string_literal: true

module Langfuse
  module Models
    module API
      module Public
        module Datasets
          class RunRetrieveResponse < Langfuse::Models::API::Public::Datasets::DatasetRun
            # @!attribute dataset_run_items
            #
            #   @return [Array<Langfuse::Models::API::DatasetRunItem>]
            required :dataset_run_items,
                     -> { Langfuse::ArrayOf[Langfuse::Models::API::DatasetRunItem] },
                     api_name: :datasetRunItems

            # @!parse
            #   # @param dataset_run_items [Array<Langfuse::Models::API::DatasetRunItem>]
            #   #
            #   def initialize(dataset_run_items:, **) = super

            # def initialize: (Hash | Langfuse::BaseModel) -> void
          end
        end
      end
    end
  end
end

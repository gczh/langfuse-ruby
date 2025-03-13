# typed: strong

module Langfuse
  module Models
    module API
      module Public
        module V2
          class DatasetRetrieveParams < Langfuse::BaseModel
            extend Langfuse::RequestParameters::Converter
            include Langfuse::RequestParameters

            sig do
              params(request_options: T.any(Langfuse::RequestOptions, T::Hash[Symbol, T.anything]))
                .returns(T.attached_class)
            end
            def self.new(request_options: {})
            end

            sig { override.returns({request_options: Langfuse::RequestOptions}) }
            def to_hash
            end
          end
        end
      end
    end
  end
end

# typed: strong

module Langfuse
  module Models
    module API
      module Public
        class CreateScoreValue < Langfuse::Union
          abstract!

          class << self
            sig { override.returns([[NilClass, Float], [NilClass, String]]) }
            private def variants
            end
          end
        end
      end
    end
  end
end

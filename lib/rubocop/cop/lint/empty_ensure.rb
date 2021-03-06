# encoding: utf-8

module Rubocop
  module Cop
    module Lint
      # This cop checks for empty `ensure` blocks
      class EmptyEnsure < Cop
        MSG = 'Empty ensure block detected.'

        def on_ensure(node)
          _body, ensure_body = *node

          warning(node, :keyword) unless ensure_body
        end
      end
    end
  end
end

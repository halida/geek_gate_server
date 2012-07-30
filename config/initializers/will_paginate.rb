require 'will_paginate/array'

if defined?(WillPaginate)
  module WillPaginate
    module ActiveRecord
      module RelationMethods
        alias_method :per, :per_page
        alias_method :num_pages, :total_pages
        alias_method :total_count, :count

      end

      module Pagination
        alias_method :old_paginate, :paginate
        def paginate options
          # count reverse page
          if (page = options[:page].to_i) < 0
            per_page = options[:per_page] || self.per_page
            total = self.count
            options[:page] = [((total - 1) / per_page) + 2 + page, 1].max
          end
          old_paginate options
        end
      end      

    end
  end
end

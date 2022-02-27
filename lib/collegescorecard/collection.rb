module Collegescorecard
    class Collection
        attr_reader :data, :total, :page, :per_page

        def self.from_response(response, key:, type:)
            body = response.body
            new(
                data: body[key].map { |attrs| type.new(attrs) },
                total: body.dig('metadata', 'total'),
                page: body.dig('metadata', 'page'),
                per_page: body.dig('metadata', 'per_page')
            )
        end

        def initialize(data:, total: , page:, per_page:)
            @data = data
            @total = total
            @page = page
            @per_page = per_page
        end
    end
end
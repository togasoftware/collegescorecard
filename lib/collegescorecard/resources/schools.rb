module Collegescorecard
    class SchoolsResource < Resource
      def list(**params)
        response = get_request("schools", params: params)
        Collection.from_response(response, key: "results", type: School)
      end

      def by_id(id)
        response = get_request("schools", params: {id: id})
        Collection.from_response(response, key: "results", type: School)
      end 
    end
end
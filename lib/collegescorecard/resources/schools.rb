module Collegescorecard
    class SchoolsResource < Resource
      def list(**params)
        response = get_request("schools", params: params)
        Collection.from_response(response, key: "results", type: School)
      end

      def by_id(id, params)
        response = get_request("schools", params: params.merge({id: id}))
        list = Collection.from_response(response, key: "results", type: School)
        list.data[0]
      end 
    end
end
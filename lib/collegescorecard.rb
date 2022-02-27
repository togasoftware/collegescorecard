# frozen_string_literal: true

require_relative "collegescorecard/version"

module Collegescorecard
  autoload :Client, "collegescorecard/client.rb"
  autoload :Error, "collegescorecard/error.rb"
  autoload :Object, "collegescorecard/object.rb"
  autoload :Collection, "collegescorecard/collection.rb"
  autoload :Resource, "collegescorecard/resource.rb"

  autoload :School, "collegescorecard/objects/school.rb"
  autoload :SchoolsResource, "collegescorecard/resources/schools.rb"

end

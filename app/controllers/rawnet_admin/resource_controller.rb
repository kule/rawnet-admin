module RawnetAdmin
  class ResourceController < ApplicationController
    responders :flash, :http_cache, :collection
    respond_to :html, :xml, :json

    include RawnetAdmin::Resource::Helpers
    include RawnetAdmin::Resource::Actions

    helper_method :collection, :resource, :resource_class
  end
end

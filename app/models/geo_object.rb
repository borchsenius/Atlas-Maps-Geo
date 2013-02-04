class GeoObject < ActiveFedora::Base
  has_metadata :name => 'descMetadata', :type => ActiveFedora::SimpleDatastream do |m|
    m.field "description", :string
    m.field "path_to_cop",:string
    m.field "path_to_image", :string
    m.field "publish_year", :date
    m.field "title", :string
    m.field "geo_lat", :string
    m.field "geo_lng", :string
  end

  delegate_to 'descMetadata', [:description, :geo_lat, :geo_lng, :path_to_cop, :path_to_image, :publish_year, :title]
end

class GeoObject < ActiveFedora::Base
  has_metadata :name=>'rightsMetadata', :type=> Hydra::Datastream::RightsMetadata
  has_metadata :name => 'descMetadata', :type => ActiveFedora::SimpleDatastream do |m|
    m.field "description", :string
    m.field "path_to_cop",:string
    m.field "path_to_image", :string
    m.field "publish_year", :integer
    m.field "title", :string
    m.field "geo_lat", :string
    m.field "geo_lng", :string
  end


  def to_solr (solr_doc = {})
    super
    solr_doc['title_t'] = self.title
    solr_doc['location_p']= "#{self.geo_lat},#{self.geo_lng}"

    return solr_doc
  end


  delegate_to 'descMetadata', [:description, :geo_lat, :geo_lng, :path_to_cop, :path_to_image, :publish_year, :title], :unique => true
end

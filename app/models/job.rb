class Job
  include Mongoid::Document
  include Mongoid::Timestamps
  include Tire::Model::Search
  include Tire::Model::Callbacks

  field :title, type: String
  field :description, type: String

  def self.search(params)
    tire.search do
      query { string params[:query]} if params[:query].present?
    end
  end
end
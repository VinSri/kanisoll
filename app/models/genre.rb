class Genre
  include Mongoid::Document
  include Mongoid::Timestamps::Created::Short
  include Mongoid::Timestamps::Updated::Short

  field :genre_id, type: String
  field :genre, type: String
end
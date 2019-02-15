class Author
  include Mongoid::Document
  include Mongoid::Timestamps::Created::Short
  include Mongoid::Timestamps::Updated::Short

  field :author_id, type: String
  field :author_id_lower_case, type: String
  field :given_name, type: String
  field :last_name, type: String
  field :description, type: String
  field :birth_country, type: String
  field :recognition, type: Array

  validates :author_id, :given_name, :last_name, presence: true
end

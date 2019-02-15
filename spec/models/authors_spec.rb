require 'rails_helper'
require 'authors'

describe Author do
  subject { described_class.new() }
   it { should validate_presence_of(:author_id) }
   it { should validate_presence_of(:given_name) }
   it { should validate_presence_of(:last_name) }
   
end
class Agent < ApplicationRecord
  has_many :callbacks, :as => :caller
end

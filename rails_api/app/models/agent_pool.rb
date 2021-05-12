class AgentPool < ApplicationRecord
  has_many :callbacks, :as => :caller
end

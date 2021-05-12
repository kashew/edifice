class Callback < ApplicationRecord
  belongs_to :caller, :polymorphic => true
end

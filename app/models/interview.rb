class Interview < ApplicationRecord
  self.primary_key = 'App_id'
  belongs_to :application, foreign_key: 'App_id', primary_key: 'App_id'
end
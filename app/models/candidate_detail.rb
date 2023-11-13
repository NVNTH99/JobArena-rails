class CandidateDetail < ApplicationRecord
  self.primary_key = 'cand_id'
    has_many :applications, foreign_key: 'cand_id', primary_key: 'cand_id'
  end
  
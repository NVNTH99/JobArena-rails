class Application < ApplicationRecord
  self.primary_key = 'App_id'
  belongs_to :candidate_detail, foreign_key: 'cand_id', primary_key: 'cand_id'
  belongs_to :job, foreign_key: 'job_id', primary_key: 'job_id'
  has_one :interview
end

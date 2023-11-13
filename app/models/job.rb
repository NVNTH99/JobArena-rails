class Job < ApplicationRecord
    self.primary_key = 'job_id'
    has_many :applications, foreign_key: 'job_id', primary_key: 'job_id'
  end
  
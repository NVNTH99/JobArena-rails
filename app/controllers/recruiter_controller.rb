class RecruiterController < ApplicationController
    def home
        @jobs = Job.all.includes(:applications)
    end
end
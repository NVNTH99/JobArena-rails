class JobsController < ApplicationController
    def delete_job
        @job = Job.find_by(job_id: params[:job_id])
        applications = Application.where(job_id: @job.job_id)
        applications.each do |application|
            interview = Interview.find_by(app_id: application.App_id)
            interview.destroy if interview
        end 
        applications.destroy_all
        @job.destroy
        @jobs = Job.all.includes(:applications)
        redirect_to recruiter_home_path, notice: 'Job deleted successfully'
    end

    def job_application
        @job = Job.find_by(job_id: params[:job_id])
        @applications = Application.where(job_id: @job.job_id)
    end
end
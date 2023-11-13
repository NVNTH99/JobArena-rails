class JobsController < ApplicationController
    def add_job
        @job = Job.new()
    end

    def save_job
        puts params.inspect
        @job = Job.new(job_params)
        @job.job_id = Job.last.id + 1
        if @job.save
            redirect_to recruiter_home_path, notice: 'Job added successfully'
        else
            puts @job.errors.full_messages
            render :add_job
        end
    end
    private
    def job_params
        params.require(:job).permit(:Title, :Description, :Responsibility, :Requirements, :Deadline, :Location, :salary, :work_days, :work_hours, :job_type, :category)
    end

    def edit_job
        @job = Job.find_by(job_id: params[:job_id])
        @job.inspect
    end
    
    def update_job
        @job = Job.find_by(job_id: params[:job_id])

        if @job.update(job_params)
            redirect_to recruiter_home_path, notice: 'Job updated successfully'
        else
            puts @job.errors.full_messages
            render :edit_job
        end
    end

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
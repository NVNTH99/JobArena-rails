Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get "/recruiter/home", to: "recruiter#home"
  get "/", to: "recruiter#home"
  delete '/jobs/:job_id/delete', to: 'jobs#delete_job', as: :delete_job
  get '/jobs/:job_id/job_application', to: 'jobs#job_application', as: :job_application
  get 'add_job', to: 'jobs#add_job', as: :add_job
  # get 'save_job', to: 'jobs#save_job', as: :save_jobs
  post '/jobs/save_job', to: 'jobs#save_job', as: :save_job
  get '/jobs/:job_id/edit', to: 'jobs#edit_job', as: :edit_job
  patch '/jobs/:job_id/update', to: 'jobs#update_job', as: :update_job
  # Defines the root path route ("/")
  # root "posts#index"
end

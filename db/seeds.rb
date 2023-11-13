# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Job.create([
  { job_id: 1, Title: 'Software Engineer', Description: 'Developing software', Responsibility: 'Developing software', Requirements: 'B.Tech in Computer Science', Deadline: '2024-05-30 00:00:00', Location: 'Kochi', salary: 50000, work_days: 5, work_hours: '9:00-5:00', job_type: 'Full Time', category: 'Software Development' },
  { job_id: 2, Title: 'Data Analyst', Description: 'Analysing data', Responsibility: 'Analysing data', Requirements: 'B.Tech in Computer Science', Deadline: '2024-05-30 00:00:00', Location: 'Bangalore', salary: 90000, work_days: 5, work_hours: '9:00-5:00', job_type: 'Full Time', category: 'Software Development' },
  { job_id: 3, Title: 'Full Stack Developer', Description: 'Developing and maintaining websites', Responsibility: 'Developing and maintaining websites', Requirements: 'B.Tech in Computer Science', Deadline: '2024-05-30 00:00:00', Location: 'Chennai', salary: 30000, work_days: 5, work_hours: '9:00-5:00', job_type: 'Full Time', category: 'Software Development' },
  { job_id: 4, Title: 'Software Development Engineer', Description: 'Developing software', Responsibility: 'Developing software', Requirements: 'B.Tech in Computer Science', Deadline: '2024-05-30 00:00:00', Location: 'Kochi', salary: 50000, work_days: 5, work_hours: '9:00-5:00', job_type: 'Full Time', category: 'Software Development' },
  { job_id: 5, Title: 'Software Engineer', Description: 'Developing software', Responsibility: 'Developing software', Requirements: 'B.Tech in Computer Science', Deadline: '2024-05-30 00:00:00', Location: 'Kochi', salary: 50000, work_days: 5, work_hours: '9:00-5:00', job_type: 'Full Time', category: 'Software Development' },
  { job_id: 6, Title: 'Data Scientist', Description: 'Analyzing and interpreting complex data', Responsibility: 'Analyzing and interpreting complex data', Requirements: 'M.Sc in Data Science', Deadline: '2024-06-15 00:00:00', Location: 'Mumbai', salary: 70000, work_days: 5, work_hours: '9:00-5:00', job_type: 'Full Time', category: 'Data Science' },
  { job_id: 7, Title: 'UI/UX Designer', Description: 'Designing user interfaces and experiences', Responsibility: 'Designing user interfaces and experiences', Requirements: 'B.Design in Graphic Design', Deadline: '2024-06-15 00:00:00', Location: 'Pune', salary: 55000, work_days: 5, work_hours: '9:00-5:00', job_type: 'Full Time', category: 'Design' },
  { job_id: 8, Title: 'Network Engineer', Description: 'Managing and maintaining computer networks', Responsibility: 'Managing and maintaining computer networks', Requirements: 'B.Tech in Computer Science', Deadline: '2024-06-15 00:00:00', Location: 'Delhi', salary: 48000, work_days: 5, work_hours: '9:00-5:00', job_type: 'Full Time', category: 'Networking' },
  { job_id: 9, Title: 'Machine Learning Engineer', Description: 'Developing machine learning algorithms', Responsibility: 'Developing machine learning algorithms', Requirements: 'M.Tech in Artificial Intelligence', Deadline: '2024-06-15 00:00:00', Location: 'Hyderabad', salary: 75000, work_days: 5, work_hours: '9:00-5:00', job_type: 'Full Time', category: 'Machine Learning' },
  { job_id: 10, Title: 'Web Developer', Description: 'Creating and maintaining websites', Responsibility: 'Creating and maintaining websites', Requirements: 'B.Tech in Computer Science', Deadline: '2024-06-15 00:00:00', Location: 'Chennai', salary: 45000, work_days: 5, work_hours: '9:00-5:00', job_type: 'Full Time', category: 'Web Development' }
])

CandidateDetail.create([
  { cand_id: 1, First_name: 'Amal', Last_name: 'Mani', Gender: 'Male', Disability: 'None', Date_of_Birth: '1990-01-01', Linkedin: 'linkedin.com/amal', Phone: '1234567890', Languages: 'English', Address: '123 Main St, City, Country', Nationality: 'US', Skills: 'Programming, Data Analysis', preference_category: 'Software Development', email: 'amal@gmail.com' },
  { cand_id: 3, First_name: 'Gigil', Last_name: 'James', Gender: 'Male', Disability: 'None', Date_of_Birth: '1985-05-05', Linkedin: 'linkedin.com/gigil', Phone: '9876543210', Languages: 'English', Address: '456 Elm St, City, Country', Nationality: 'Canada', Skills: 'Data Science, Machine Learning', preference_category: 'Data Science', email: 'gigil@gmail.com' },
  { cand_id: 5, First_name: 'Navaneeth', Last_name: 'Shanavasan', Gender: 'Male', Disability: 'None', Date_of_Birth: '1992-10-15', Linkedin: 'linkedin.com/navaneeth', Phone: '1112233445', Languages: 'English', Address: '789 Oak St, City, Country', Nationality: 'UK', Skills: 'Web Development, Frontend Development', preference_category: 'Web Development', email: 'navaneeth@gmail.com' },
  { cand_id: 6, First_name: 'Sreerag', Last_name: 'unnithan', Gender: 'Male', Disability: 'None', Date_of_Birth: '1988-07-20', Linkedin: 'linkedin.com/sreerag', Phone: '9988776655', Languages: 'English', Address: '101 Pine St, City, Country', Nationality: 'Australia', Skills: 'Database Management, SQL', preference_category: 'Database Management', email: 'sreerag@gmail.com' },
  { cand_id: 9, First_name: 'Abhiram', Last_name: 'J', Gender: 'Male', Disability: 'None', Date_of_Birth: '1995-03-12', Linkedin: 'linkedin.com/abhiram', Phone: '1122334455', Languages: 'English', Address: '202 Maple St, City, Country', Nationality: 'India', Skills: 'Networking, Security', preference_category: 'Networking', email: 'abhiram@gmail.com' },
  { cand_id: 11, First_name: 'Vimal', Last_name: 'Vijay', Gender: 'Male', Disability: 'None', Date_of_Birth: '1983-12-30', Linkedin: 'linkedin.com/vimal', Phone: '1122233344', Languages: 'English', Address: '303 Cedar St, City, Country', Nationality: 'India', Skills: 'Project Management, Leadership', preference_category: 'Management', email: 'vimal@gmail.com' },
  { cand_id: 13, First_name: 'Samantha', Last_name: 'Johnson', Gender: 'Female', Disability: 'None', Date_of_Birth: '1991-08-25', Linkedin: 'linkedin.com/samantha', Phone: '9988776655', Languages: 'English', Address: '404 Oak St, City, Country', Nationality: 'US', Skills: 'UI/UX Design, Graphic Design', preference_category: 'Design', email: 'samantha@gmail.com' },
  { cand_id: 15, First_name: 'Priya', Last_name: 'Kumar', Gender: 'Female', Disability: 'None', Date_of_Birth: '1993-07-18', Linkedin: 'linkedin.com/priya', Phone: '1122334455', Languages: 'English', Address: '505 Pine St, City, Country', Nationality: 'India', Skills: 'Mobile App Development, Android, iOS', preference_category: 'Mobile Development', email: 'priya@gmail.com' },
  { cand_id: 17, First_name: 'Anjali', Last_name: 'Ahmed', Gender: 'Female', Disability: 'None', Date_of_Birth: '1994-04-05', Linkedin: 'linkedin.com/anjali', Phone: '9988776655', Languages: 'English', Address: '606 Elm St, City, Country', Nationality: 'UK', Skills: 'Digital Marketing, SEO, SEM', preference_category: 'Marketing', email: 'anjali@gmail.com' },
  { cand_id: 19, First_name: 'Aisha', Last_name: 'Smith', Gender: 'Female', Disability: 'None', Date_of_Birth: '1987-11-11', Linkedin: 'linkedin.com/aisha', Phone: '1122233344', Languages: 'English', Address: '707 Maple St, City, Country', Nationality: 'Canada', Skills: 'Database Management, SQL, NoSQL', preference_category: 'Database Management', email: 'aisha@gmail.com' }
])

# Insert Applications data
Application.create([
  { App_id: 1, cand_id: 1, job_id: 1, status: 'Pending' },
  { App_id: 2, cand_id: 3, job_id: 2, status: 'Pending' },
  { App_id: 3, cand_id: 5, job_id: 3, status: 'Offered' },
  { App_id: 4, cand_id: 6, job_id: 4, status: 'Accepted' },
  { App_id: 5, cand_id: 9, job_id: 5, status: 'Rejected' },
  { App_id: 6, cand_id: 11, job_id: 1, status: 'Pending' },
  { App_id: 7, cand_id: 13, job_id: 2, status: 'Shortlisted' },
  { App_id: 8, cand_id: 15, job_id: 3, status: 'Offered' },
  { App_id: 9, cand_id: 17, job_id: 4, status: 'Accepted' },
  { App_id: 10, cand_id: 19, job_id: 5, status: 'Rejected' }
])

# Insert Interviews data
Interview.create([
  { App_id: 7, DATE_TIME: '2023-10-15 00:00:00', link: 'meet.google.com/def', venue: 'Pune' }
])
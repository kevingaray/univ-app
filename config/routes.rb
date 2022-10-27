Rails.application.routes.draw do
  root 'courses#index'
  get 'courses/new', to: 'courses#new'
  get 'about', to: 'pages#about'
  resources :students
  # login
  get 'login', to: 'logins#new'
  post 'login', to: 'logins#create'
  delete 'logout', to: 'logins#destroy'

  # course-enroll
  post 'course_enroll', to: "student_courses#create"
end

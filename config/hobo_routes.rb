# This is an auto-generated file: don't edit!
# You can add your own routes in the config/routes.rb file
# which will override the routes in this file.

CurriculumVitae::Application.routes.draw do


  # Resource routes for controller personals
  resources :personals, :only => [:index, :new, :edit, :create, :update, :destroy] do
    collection do
      get 'order'
      post 'reorder'
    end
  end


  # Resource routes for controller projects
  resources :projects do
    collection do
      get 'order'
      post 'reorder'
    end
  end


  # Resource routes for controller skills
  resources :skills do
    collection do
      get 'order'
      post 'reorder'
    end
  end


  # Resource routes for controller jobs
  resources :jobs, :only => [:index, :new, :edit, :create, :update, :destroy] do
    collection do
      get 'order'
      post 'reorder'
    end
  end


  # Resource routes for controller tools
  resources :tools do
    collection do
      get 'order'
      post 'reorder'
    end
  end


  # Resource routes for controller languages
  resources :languages, :only => [:index, :new, :edit, :create, :update, :destroy]


  # Resource routes for controller users
  resources :users, :only => [:edit, :show, :create, :update, :destroy] do
    collection do
      post 'signup', :action => 'do_signup'
      get 'signup'
    end
    member do
      get 'account'
      put 'reset_password', :action => 'do_reset_password'
      get 'reset_password'
    end
  end

  # User routes for controller users
  post 'login(.:format)' => 'users#login', :as => 'user_login_post'
  get 'login(.:format)' => 'users#login', :as => 'user_login'
  get 'logout(.:format)' => 'users#logout', :as => 'user_logout'
  get 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password'
  post 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password_post'


  # Resource routes for controller educations
  resources :educations, :only => [:index, :new, :edit, :create, :update, :destroy]

  namespace :concerns do

  end

end

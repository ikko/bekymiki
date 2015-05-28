class PersonalsController < ApplicationController

  hobo_model_controller

  auto_actions :all, except: :show

  index_action :order
end

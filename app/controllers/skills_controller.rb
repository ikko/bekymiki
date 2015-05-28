class SkillsController < ApplicationController

  hobo_model_controller

  auto_actions :all

  index_action :order
end

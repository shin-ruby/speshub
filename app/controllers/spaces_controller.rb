class SpacesController < ApplicationController
  layout "space", :only => :new
  def index

  end

  def show
    @spaces = Space.find(params[:id])

    @space_setting_show_one = SpaceSetting.find(@spaces.space_setting)
    @user_group_show_one = UserGroup.find(@spaces.user_group)
    @rent_env_show_one = RentEnv.find(@spaces.rent_env)
    @num_of_people_show_one = NumOfPeople.find(@spaces.num_of_people)

  end

  def new
    @spacesetting = SpaceSetting.all
    @user_group = UserGroup.all
    @rent_env = RentEnv.all
    @num_of_people = NumOfPeople.all
    @detailed_common = Detailed.where("sort = ?", :common)
    @detailed_extra = Detailed.where("sort = ?", :extra)
    @detailed_special = Detailed.where("sort = ?", :special)

  end
end

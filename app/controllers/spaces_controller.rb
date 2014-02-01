class SpacesController < ApplicationController
  layout "space", :only => :new
  def index

  end

  def show
    @spaces = Space.find(params[:id])

    @space_setting_show_one = @spaces.space_setting.content
    @user_group_show_one = @spaces.user_group.content
    @rent_env_show_one = @spaces.rent_env.content
    @num_of_people_show_one = @spaces.num_of_people.content
    @city_show_one = @spaces.city.content
    @atmosphere_show_one = @spaces.atmosphere.content

  end

  def new
    @space_setting = SpaceSetting.all
    @user_group = UserGroup.all
    @rent_env = RentEnv.all
    @num_of_people = NumOfPeople.all
    @atmosphere = Atmosphere.all
    @city = City.all
    @detailed_common = Detailed.where("sort = ?", :common)
    @detailed_extra = Detailed.where("sort = ?", :extra)
    @detailed_special = Detailed.where("sort = ?", :special)

    @space = Space.new
  end

  def create

  end


end

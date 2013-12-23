class SpacesController < ApplicationController
  layout "space", :only => :new
  def index

  end

  def show
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

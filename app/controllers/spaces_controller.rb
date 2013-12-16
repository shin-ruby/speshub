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

  end
end

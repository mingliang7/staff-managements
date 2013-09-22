class AllController < ApplicationController
	before_filter :authenticate_user!
  def index
  	@staffs=Staff.order_firstname
  end
end

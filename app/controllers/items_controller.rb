class ItemsController < ApplicationController
  def index
    item = { name: "vincent", email:"vc7@gmail.com" }
    @items = [item, item]
    headers['Content-Disposition'] = "attachment; filename=\"user-list.csv\""
    headers['Content-Type'] ||= 'text/csv'
    render :layout => false
  end
end

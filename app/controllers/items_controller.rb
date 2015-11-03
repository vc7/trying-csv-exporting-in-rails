class ItemsController < ApplicationController
  def index
    @columns = ['Name', 'Email']
    item = { name: "vincent", email:"vc7@gmail.com" }
    @items = [item, item]
    headers['Content-Disposition'] = "attachment; filename=\"user-list.csv\""
    headers['Content-Type'] ||= 'text/csv'
    render :layout => false
  end
end

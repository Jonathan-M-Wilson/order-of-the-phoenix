class SearchController < ApplicationController
  def index
    @members = MemberResults.new.find_members
  end
end

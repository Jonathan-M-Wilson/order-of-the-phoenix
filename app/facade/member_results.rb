class MemberResults
  def find_members(house)
    member_data.find_members(house).map do |member_data|
      Member.new(member_data)
    end
  end

  def member_data
    PotterService.new
  end
end

class Member
  attr_reader :name,
              :role,
              :house,
              :patronus

  def initialize(member_params)
    @name = member_params[:name]
    @role = member_params[:role] || nil
    @house = member_params[:house]
    @patronus = member_params[:patronus] || nil
  end
end

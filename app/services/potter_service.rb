class PotterService

  def query
    conn.get("?key=#{ENV['HP-API-KEY']}&house=#{house}&orderOfThePhoenix=true")
  end

  def find_member(house)
    response = conn.get("/v1/characters?#{query}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new 'https://www.potterapi.com/v1/' do |f|
      f.params['api_key'] = ENV['POTTER_API_KEY']
    end
  end
end

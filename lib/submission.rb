class Submission
  attr_reader(:name, :street_address, :city, :state, :zip, :link)

  def initialize(parameters = {})
    @video_title = parameters[:video_title]
    @email = parameters[:email]
    @name = parameters[:name]
    @street_address = parameters[:street_address]
    @city = parameters[:city]
    @state = parameters[:state]
    @zip = parameters[:zip]
    @link = parameters[:link]
  end

  def save_to_database
    DB.exec("INSERT INTO submissions (video_title, email, name, address, link) VALUES ('#{@video_title}', '#{@email}', '#{@name}', '#{@street_address} #{@city} #{@state} #{@zip}', '#{@link}');")
  end
end

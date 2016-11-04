class PasswordChecker
  attr_accessor :password

  def initialize
    @password = password
  end

  def check_charac(password)
    password.length > 7
  end

  def check_let_sym_num(password)
    password.match(/[a-zA-Z]/) != nil && password.match(/\d/) != nil && password.match(/\W/) != nil
  end

end
  
  
#   def status
#     result = (@start_date..@end_date).to_a.include? Date.today
#     result ? "visible" : "invisible"
#   end
  
#   def hashtags
#     @msg.match(/#(\w+)/).to_a
#   end
  
#   def get_image_url
#     @msg.match(/http:\/\/(\w+).(\w{2,3})\/((\w+)\/)*(\w+.(jpg|png))/).to_s
#   end
  
#   def get_image
#     image_url = get_image_url
#     return if image_url == ""
#     image_url.match(/(\w+.(jpg|png))/).to_s
#   end
  
#   def reply?
#     @msg.start_with?('@')
#   end

#   def valid?
#     message = @msg.gsub(get_image_url,"").to_s
#     message.length < 140
#   end
  
#   def special_hashtags
#     if @msg.match(/#(\w+hack)/ || /#(hack+\w)/ || /#(\w+hack+\w)/).to_a
#       @msg = @msg + "#Hackyface"
#     end
#   end
  
#   def load_img(img)
#     allowed_formats = [".jpg",".png",".jpeg"]
#     ext = File.extname(img)
#     return "Unsuported format" unless allowed_formats.include? ext
#     @img = img
#   end
# end
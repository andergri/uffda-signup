class Shareplatfrom < ParseResource::Base
  
  belongs_to :sharePlatfromFrom, :class_name => 'User'
  belongs_to :sharePlatfromMedia, :class_name => 'Media'
  fields :sharePlatfromShortURL, :sharePlatfromTo, :sharePlatfromComment, :sharePlatfromMedia, :sharePlatfromFrom
  
end
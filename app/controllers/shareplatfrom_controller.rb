require 'time'

class ShareplatfromController < ApplicationController

   def show
         @shareplatfrom = Shareplatfrom.find_by_sharePlatfromShortURL(params[:id])
         @media =  @shareplatfrom.sharePlatfromMedia
         @from =  @shareplatfrom.sharePlatfromFrom
         @mediaDate = Time.diff(Time.parse(@media.mediaPublished), Time.now, '%y, %d ago')[:diff]
   end
end

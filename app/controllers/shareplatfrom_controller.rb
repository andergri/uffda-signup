require 'time'

class ShareplatfromController < ApplicationController

   def show
         @shareplatfrom = Shareplatfrom.find_by_sharePlatfromShortURL(params[:id])
         @media =  @shareplatfrom.sharePlatfromMedia
         @from =  @shareplatfrom.sharePlatfromFrom
         begin
          @mediaDate = Time.diff(Time.parse(@media.mediaPublished), Time.now, '%y, %d ago')[:diff]
         rescue
          @mediaDate = Time.diff(Time.at(@media.mediaPublished.to_f), Time.now, '%y, %d ago')[:diff]
         ensure 
         end
   end
end

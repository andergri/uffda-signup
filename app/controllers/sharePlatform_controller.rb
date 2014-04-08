class SharePlatformController < ApplicationController

   def show
         @sharePlatform = SharePlatform.find_by_sharePlatformShortURL(params[:id])
   end

end

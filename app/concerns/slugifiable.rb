
module Slug
   module InstanceMethods

     def slug
       name.downcase.gsub(/ /, "-")
     end

   end


  module ClassMethods

   def find_by_slug(slug) #Taylor Swift
     self.all.find{|a| a.slug == slug}
   end
  end
end

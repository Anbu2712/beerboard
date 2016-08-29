class Search < ActiveRecord::Base
 
  def search_products
     
        products = Product.all
        products = products.where(["name LIKE ?","%#{keywords}%"]) if 		  	   keywords.present?
        products = products.where(["brand_id LIKE ?", brand_id]) if  			   brand_id.present?
        return products
   end

end

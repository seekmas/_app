json.array!(@wishlists) do |wishlist|
  json.extract! wishlist, :id, :name, :job, :company, :phone, :email, :get_from, :message, :user_id
  json.url wishlist_url(wishlist, format: :json)
end

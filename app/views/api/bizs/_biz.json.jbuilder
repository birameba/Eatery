json.extract! biz, :id, :name, :lat, :lng, :hours, :phone, :price
json.img_url asset_path(biz.biz_image.url)

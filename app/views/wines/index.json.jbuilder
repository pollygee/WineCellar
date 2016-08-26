json.wines @wines do |wine|
  json.name wine.name
  json.vintage wine.vintage
  json.date_added wine.date
  json.purchase_date wine.purchase_date
  json.notes wine.notes
  json.country wine.country
  json.region wine.region
  json.cost wine.cost
  json.count wine.count
  json.color wine.color
end
json.extract! review, :id, :review_text, :rating, :created_at, :updated_at
json.url review_url(review, format: :json)

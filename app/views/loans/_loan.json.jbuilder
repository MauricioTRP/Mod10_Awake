json.extract! loan, :id, :user_id, :machine_id, :status, :created_at, :updated_at
json.url loan_url(loan, format: :json)

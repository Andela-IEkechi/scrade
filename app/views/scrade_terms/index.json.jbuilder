json.array!(@scrade_terms) do |scrade_term|
  json.extract! scrade_term, :id, :scrade_session_id, :title, :from, :to
  json.url scrade_term_url(scrade_term, format: :json)
end

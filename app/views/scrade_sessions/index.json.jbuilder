json.array!(@scrade_sessions) do |scrade_session|
  json.extract! scrade_session, :id, :title, :description, :from, :to
  json.url scrade_session_url(scrade_session, format: :json)
end

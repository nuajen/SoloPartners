json.extract! event, :id, :title, :start, :created_at, :updated_at
json.set! :editable, event.editable?
json.url event_url(event, format: :json)
 
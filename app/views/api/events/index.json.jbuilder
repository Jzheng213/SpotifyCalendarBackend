json.set! 'events' do
  json.array! @events.each do |event|
    json.extract! event, :id, :title, :description,
                  :start_time, :end_time, :all_day
  end
end

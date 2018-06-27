json.set! 'event' do
  json.extract! @event, :id, :title, :description,
                :start_time, :end_time, :all_day
end

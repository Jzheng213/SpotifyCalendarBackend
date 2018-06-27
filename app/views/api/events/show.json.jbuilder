json.set! 'events' do
  json.extract! @event, :id, :title, :description,
                :start_time, :end_time, :all_day
end

json.set! 'events' do
  @events.each do |event|
    json.set! event.id do
      json.extract! event, :title, :description, :start_time, :end_time, :all_day
    end
  end
end

post '/create_note' do
  p params
  content_type :json
  {blah: "yay"}.to_json
end

get '/all_notes' do
  #@notes = Note.all
  @notes = ["note1", "note2", "note3"]
end

post '/create_note' do
  if @note = Note.create(params)
  content_type :json
  {note: @note}.to_json
  else
    "uh-oh"
  end
end

get '/all_notes' do
  @notes = Note.all
  # @notes = ["note1", "note2", "note3"]
  erb :all_notes
end

put '/update_note' do
  p params
  note = Note.find_by_id(params[:note_id])
  note.title = params[:title]
  note.author = params[:author]
  note.content = params[:content]
  note.save
  p note


  p note
  p note.id
  # Note.update()
  p params
  p "herrow!"
end
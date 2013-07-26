post '/notes' do
  if @note = Note.create(params)
  content_type :json
  {note: @note}.to_json
  else
    "uh-oh"
  end
end

get '/notes' do
  @notes = Note.all
  erb :notes
end

put '/notes/:id' do
  note = Note.find_by_id(params[:id])
  note.title = params[:title]
  note.author = params[:author]
  note.content = params[:content]
  note.save
  redirect '/notes'
end

delete '/notes/:id' do
  note = Note.find_by_id(params[:id])
  note.destroy
  content_type :json
  {note_id: params[:id]}.to_json
end

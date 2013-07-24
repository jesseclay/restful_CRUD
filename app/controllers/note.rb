post '/create_note' do
  if @note = Note.create(:title => params[:title],
                      :content => params[:content],
                      :author => params[:author])
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


mario = User.create_with(name: "Mario", password: "123456").find_or_create_by!(email: "mario@example.com")
luigi = User.create_with(name: "Luigi", password: "123456").find_or_create_by!(email: "luigi@example.com")

if mario.channels.empty?
  chat = Channel.new(name: "Mario Bros Chat")

  mario.channels << chat
  luigi.channels << chat

  chat.messages.create(body: "Peach is missing! Here we go again 🙄....", author: luigi)
  chat.messages.create(body: "Lets a goooo!", author: mario)
end

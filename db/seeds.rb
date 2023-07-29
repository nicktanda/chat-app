
mario = User.create_with(name: "Mario", password: "123456").find_or_create_by!(email: "mario@example.com")
luigi = User.create_with(name: "Luigi", password: "123456").find_or_create_by!(email: "luigi@example.com")


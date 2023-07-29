
user = User.create_with(name: "Mario Brother", password: "123456").find_or_create_by!(email: "test@example.com")

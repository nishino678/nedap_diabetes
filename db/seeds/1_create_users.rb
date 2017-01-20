User.create!(
  firstname:  "Admin",
  email: "admin@example.com",
  password:              "123123",
  password_confirmation: "123123",
  admin: true
 )

User.create!(
  firstname:  "Example",
  email: "user@example.com",
  password:              "123123",
  password_confirmation: "123123",
  admin: false
 )
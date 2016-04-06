volunteer = Volunteer.new(
  email: "vanderstraeten.thomas@gmail.com",
  password: "testtest",
  sign_in_count: 1,
  confirmation_token: "TB2wPN2FnfCDMqpy_ioF",
  provider: "linkedin",
  uid: "wF4WJR5NjJ",
  first_name: "Thomas",
  last_name: "Vanderstraeten",
  picture:
   "https://media.licdn.com/mpr/mprx/0_yHCbiqUZ_0N_5xrZYehqinHNiVT85VhZYun4in4dpyvKsYc4ratwS9uFDc3x6j3NgI8M2AQk2_uE",
  headline: "Consultant at Bain & Company",
  admin: true
)
volunteer.skip_confirmation!
volunteer.save!


volunteer = Volunteer.new(
  email: "contact@fovento.be",
 password: "testtest",
 sign_in_count: 1,
 confirmation_token: "7MWbRbaU4DQvQQNjHyrb",
 first_name: nil,
 last_name: nil,
 picture: nil,
 headline: nil,
 linkedin_public_profile: nil,
 phone_number: nil,
 skills: nil
)
volunteer.skip_confirmation!
volunteer.save!

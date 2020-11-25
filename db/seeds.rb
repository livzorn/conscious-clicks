# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

positive = MessageSet.create(theme: "Positive Affirmations",
  messages: ["I deserve wonderful things",
  "I am at peace with who I am",
  "I am an amazing person!",
  "All I can do is try my best",
  "There’s no one I’d rather be than me",
  "I choose what I become",
  "I’ll let go of things I can’t control",
  ])

ads = MessageSet.create(theme: "Advertising",
  messages: ["I am too smart to be brainwashed by ads",
  "I won’t be tricked into buying things I don’t need",
  "How are ads trying to affect me today?",
  "What are algorithms assuming about me?",
  "When I see an ad, I take a deep breath and ignore it."])

olivia = User.new(name: "Olivia", email: "olivia@zorn.com", password: "lewagon")

Mood.create(emoji: "😃", name: "happy", happiness_level: 10)
Mood.create(emoji: "🥺", name: "sad", happiness_level: 1)

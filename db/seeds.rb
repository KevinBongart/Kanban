TODOS = [
  "Does it work in IE6?",
  "Does it work in IE7?",
  "Does it work in IE8?",
  "Does it work in IE9?",
  "Does it work on mobile?"
]

def generate_todos
  todos = TODOS.sample rand(0..TODOS.size)
  todos.map { |t| Todo.create title: t, completed: [true, false].sample }
end

board = Board.create title: "Development"

backlog = List.create title: "Backlog"
development = List.create title: "Development", limit: 3
qa = List.create title: "QA", limit: 3
deploy = List.create title: "Deploy"
done = List.create title: "Done"

board.lists = [backlog, development, qa, deploy, done]

batman = User.create name: "Batman"
robin = User.create name: "Robin"
alfred = User.create name: "Alfred"
james = User.create name: "James"
bane = User.create name: "Bane"
harvey = User.create name: "Harvey"
catwoman = User.create name: "Catwoman"
joker = User.create name: "The Joker"
penguin = User.create name: "Penguin"
two_face = User.create name: "Two-Face"

backlog.cards.push Card.create title: "Do this"
backlog.cards.push Card.create title: "Do that"
backlog.cards.push Card.create title: "Do also that"
backlog.cards.push Card.create title: "Don't forget this"
backlog.cards.push Card.create title: "And that"

development.cards.push Card.create title: "Make the logo even bigger", users: [batman]
development.cards.push Card.create title: "Make the site simpler", users: [robin]
development.cards.push Card.create title: "Give the design more 'pop'", users: [alfred]
development.cards.push Card.create title: "Add this picture of my dog", users: [james, bane]

qa.cards.push Card.create title: "Change the background color to blue", users: [harvey]

deploy.cards.push Card.create title: "Change the background color to red", users: [catwoman]

done.cards.push Card.create title: "Change the background color to yellow"
done.cards.push Card.create title: "Change the background color to green"
done.cards.push Card.create title: "Make the logo a little bit bigger"
done.cards.push Card.create title: "Make the logo slightly bigger"
done.cards.push Card.create title: "Make the logo bigger"

Card.find_each { |c| c.todos = generate_todos }

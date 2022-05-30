user = User.create!(email: "teste@teste.com", password: "123123", name: "Dolores Suave Na Nave")
user2 = User.create!(email: "teste2@teste.com", password: "123123", name: "Josephino Da Silva")

Ticket.create!(user: user, event_price: 99.99, event_name: "Evento de testes", event_date: DateTime.now)
Ticket.create!(user: user, event_price: 199.99, event_name: "Evento de testes2", event_date: DateTime.now)
Ticket.create!(user: user, event_price: 229.99, event_name: "Evento de testes3", event_date: DateTime.now)
Ticket.create!(user: user, event_price: 339.99, event_name: "Evento de testes4", event_date: DateTime.now)
Ticket.create!(user: user, event_price: 459.99, event_name: "Evento de testes5", event_date: DateTime.now)

Ticket.create!(user: user2, event_price: 99.99, event_name: "Evento de testes", event_date: DateTime.now)
Ticket.create!(user: user2, event_price: 199.99, event_name: "Evento de testes2", event_date: DateTime.now)
Ticket.create!(user: user2, event_price: 229.99, event_name: "Evento de testes3", event_date: DateTime.now)
Ticket.create!(user: user2, event_price: 339.99, event_name: "Evento de testes4", event_date: DateTime.now)
Ticket.create!(user: user2, event_price: 459.99, event_name: "Evento de testes5", event_date: DateTime.now)

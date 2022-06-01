# User.destroy_all
# Ticket.destroy_all

User.create!(email: "teste@teste.com", password: "123123", name: "Le Wagon teste")
# user2 = User.create!(email: "teste2@teste.com", password: "123123", name: "Josephino Da Silva")

# Ticket.create!(user: user, event_price: 99.99, event_name: "Evento de testes", event_date: DateTime.now)
# Ticket.create!(user: user, event_price: 199.99, event_name: "Evento de testes2", event_date: DateTime.now)

# Ticket.create!(user: user2, event_price: 99.99, event_name: "Evento de testes", event_date: DateTime.now)
# Ticket.create!(user: user2, event_price: 199.99, event_name: "Evento de testes2", event_date: DateTime.now)

# tickets = Ticket.all

# tickets.each do |ticket|
#   ticket.description = 'Mussum Ipsum, cacilds vidis litro abertis. Aenean aliquam molestie leo, vitae iaculis nisl.Nullam volutpat risus nec leo commodo, ut interdum diam laoreet. Sed non consequat odio.Delegadis gente finis, bibendum egestas augue arcu ut est.Mé faiz elementum girarzis, nisi eros vermeio.

#   Nullam volutpat risus nec leo commodo, ut interdum diam laoreet. Sed non consequat odio.Viva Forevis aptent taciti sociosqu ad litora torquent.Posuere libero varius. Nullam a nisl ut ante blandit hendrerit. Aenean sit amet nisi.Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose.'
#   ticket.save
# end

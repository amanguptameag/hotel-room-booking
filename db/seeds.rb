user1 = User.create(name: "Aman", username: "amangupta", password: "password", phone_number: "9999999999", email: "abc@gmail.com", status: :active)

hotel1 = Hotel.create(name: "Hotel A", location: "Gurgaon", status: :active)
hotel2 = Hotel.create(name: "Hotel B", location: "Gurgaon", status: :active)
hotel3 = Hotel.create(name: "Hotel C", location: "Delhi", status: :active)

rooms1 = Room.create(hotel_id: hotel1.id, room_number: "101", room_type: :deluxe, price: 200.0, status: :active)
rooms2 = Room.create(hotel_id: hotel1.id, room_number: "102", room_type: :standard, price: 150.0, status: :active)
rooms3 = Room.create(hotel_id: hotel2.id, room_number: "201", room_type: :deluxe, price: 300.0, status: :active)
rooms4 = Room.create(hotel_id: hotel3.id, room_number: "101", room_type: :standard, price: 200.0, status: :active)
rooms5 = Room.create(hotel_id: hotel3.id, room_number: "201", room_type: :deluxe, price: 200.0, status: :active)

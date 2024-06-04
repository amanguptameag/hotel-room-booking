* Ruby version - 3.0.0

* System dependencies

* Configuration

* Database creation

* Database initialization

# APIS

1. List all hotels with feature to filter by location.
```
get  http://127.0.0.1:3000/hotels?location=gurgaon
```

2. Allow users to book a room in a hotel by choosing no of rooms, check-in date, check-out date etc.
```
post  http://127.0.0.1:3000/bookings
  {
    "user_id": 1,
    "room_id": 1,
    "check_in": "2024-06-13",
    "check_out": "2024-06-15"
  }
```

3. Display the booked rooms to the user.
```
get  http://127.0.0.1:3000/bookings?user_id=1
```

4. Allow users to modify the booking details (check-in, checkout dates etc.)
```
patch  http://127.0.0.1:3000/bookings/1
```

5. Allow user to cancel the booking.
```
patch  http://127.0.0.1:3000/bookings/12/cancel_booking
```

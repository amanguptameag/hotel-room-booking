* Ruby version - 3.0.0

* System dependencies

* Configuration

* Database creation

* Database initialization

# APIS

1. List all hotels with feature to filter by location.
```
  http://127.0.0.1:3000/hotels?location=gurgaon
```

2. Allow users to book a room in a hotel by choosing no of rooms, check-in date, check-out date etc.
```
  http://127.0.0.1:3000/bookings
  {
    "user_id": 1,
    "room_id": 1,
    "check_in": "2024-06-13",
    "check_out": "2024-06-15"
  }
```
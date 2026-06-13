-- Users table
CREATE TABLE
    Users (
        user_id serial PRIMARY KEY,
        full_name varchar(100),
        email varchar(100) UNIQUE NOT NULL,
        role varchar(50) CHECK (role IN ('Football Fan', 'Ticket Manager')),
        phone_number varchar(25)
    );

-- Matches table
CREATE TABLE
    Matches (
        match_id serial PRIMARY KEY,
        fixture varchar(100),
        tournament_category varchar(50),
        base_ticket_price decimal(10, 2) CHECK (base_ticket_price >= 0),
        match_status varchar(20) CHECK (
            match_status IN (
                'Available',
                'Selling Fast',
                'Sold Out',
                'Postponed'
            )
        )
    );

-- Bookings table
CREATE TABLE
    Bookings (
        booking_id serial PRIMARY KEY,
        user_id int REFERENCES Users (user_id),
        match_id int REFERENCES Matches (match_id),
        seat_number varchar(20),
        payment_status varchar(20) CHECK (
            payment_status IN ('Pending', 'Confirmed', 'Cancelled', 'Refunded')
        ),
        total_cost decimal(10, 2) CHECK (total_cost >= 0)
    );
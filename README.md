# Football Ticket Booking System - Database Design & SQL Queries

## Overview
This project is a relational database system for a **Football Ticket Booking platform**.
It manages users, football matches, and ticket bookings with proper relationships and constraints.  
The system demonstrates ERD design and intermediate SQL queries using real-world scenarios.

---

## Objectives
- Design a proper relational database structure
- Implement ERD with correct relationships
- Apply Primary Key (PK) and Foreign Key (FK) constraints
- Write SQL queries using JOIN, subquery, aggregation, and filtering techniques
- Handle NULL values and pagination logic

---

## ERD (Entity Relationship Diagram)

### Relationships
- One User → Many Bookings  
- One Match → Many Bookings  
- Bookings table links Users and Matches

### ERD Design
DrawSQL: **[https://drawsql.app/teams/saifullah-kabir/diagrams/football-ticket-booking-system]**

### ERD Notes
The ERD includes:
- Primary Keys (PK)
- Foreign Keys (FK)
- Proper relationship mapping (Crow’s Foot notation)
- Referential integrity between tables

---

## SQL Queries

### Query 1: Available Champions League Matches
Filter matches by tournament and status.

### Query 2: Search Users (LIKE / ILIKE)
Find users by name pattern matching.

### Query 3: Handle NULL Payment Status
Use COALESCE to replace NULL values.

### Query 4: User Booking Details (INNER JOIN)
Combine Users, Bookings, and Matches.

### Query 5: All Users with Bookings (LEFT JOIN)
Include users even without bookings.

### Query 6: Above Average Booking Cost
Use subquery with AVG() function.

### Query 7: Top Expensive Matches
Use ORDER BY, OFFSET, LIMIT.

---

## Conclusion
This project demonstrates relational database design, ERD modeling, and SQL query skills for a real-world ticket booking system.

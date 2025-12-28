# Vehicle Rental System Database

This project implements a SQL-based database for a Vehicle Rental System. It includes scripts for creating the schema, inserting sample data, and performing common queries.

## Database Design

The database `vehicle_rental_system` consists of three main tables:

### 1. Users
Stores customer and admin information.
- `user_id`: Primary Key
- `email`: Unique constraint
- `role`: Enum ('Admin', 'Customer')

### 2. Vehicles
Stores vehicle details.
- `vehicle_id`: Primary Key
- `registration_number`: Unique constraint
- `type`: Enum ('car', 'bike', 'truck')
- `status`: Enum ('available', 'rented', 'maintenance')

### 3. Bookings
Stores rental transactions.
- `booking_id`: Primary Key
- `user_id`: Foreign Key referencing Users
- `vehicle_id`: Foreign Key referencing Vehicles
- `status`: Enum ('pending', 'confirmed', 'completed', 'cancelled')

## Relationships
- **Users to Bookings**: One-to-Many (One user can have multiple bookings).
- **Vehicles to Bookings**: One-to-Many (One vehicle can have multiple bookings).

## Files Description

- `schema.sql`: Contains the DDL commands to create the database and tables with all necessary constraints.
- `insert_data.sql`: Populates the tables with sample dummy data for testing.
- `queries.sql`: Contains SQL queries including JOINs, subqueries (EXISTS), filtering (WHERE), and aggregation (GROUP BY + HAVING).

## How to Run

1. **Create Database & Tables**:
   ```sql
   source schema.sql;
   ```

2. **Insert Data**:
   ```sql
   source insert_data.sql;
   ```

3. **Run Queries**:
   ```sql
   source queries.sql;
   ```




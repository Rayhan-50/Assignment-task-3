USE vehicle_rental_system;

-- Insert into Users
INSERT INTO Users (name, email, phone, role) VALUES
('John Doe', 'john@example.com', '1234567890', 'Admin'),
('Jane Smith', 'jane@example.com', '0987654321', 'Customer'),
('Alice Johnson', 'alice@example.com', '1122334455', 'Customer'),
('Bob Brown', 'bob@example.com', '5566778899', 'Customer');

-- Insert into Vehicles
INSERT INTO Vehicles (name, type, model, registration_number, rental_price, status) VALUES
('Toyota Camry', 'car', '2022', 'ABC-123', 50.00, 'available'),
('Honda Civic', 'car', '2021', 'XYZ-789', 45.00, 'rented'),
('Yamaha R15', 'bike', '2023', 'BKE-001', 20.00, 'available'),
('Ford F-150', 'truck', '2020', 'TRK-999', 80.00, 'maintenance'),
('Tesla Model 3', 'car', '2023', 'TSL-456', 100.00, 'available');

-- Insert into Bookings
INSERT INTO Bookings (user_id, vehicle_id, start_date, end_date, total_cost, status) VALUES
(2, 2, '2024-01-10', '2024-01-15', 225.00, 'confirmed'),
(3, 1, '2024-02-01', '2024-02-03', 100.00, 'completed'),
(2, 3, '2024-03-05', '2024-03-05', 20.00, 'pending'),
(4, 5, '2024-04-12', '2024-04-14', 200.00, 'cancelled');

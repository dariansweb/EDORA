DROP TABLE IF EXISTS Clients;

CREATE TABLE Clients (
    ClientID INTEGER PRIMARY KEY AUTOINCREMENT, -- Unique identifier for the client
    FirstName TEXT NOT NULL, -- First name
    LastName TEXT NOT NULL, -- Last name
    DOB TEXT, -- Date of birth
    Gender TEXT, -- Gender of the client
    Phone TEXT, -- Phone number
    Email TEXT, -- Email address
    Address TEXT, -- Physical address
    City TEXT, -- City
    State TEXT, -- State
    ZipCode TEXT, -- Zip/postal code
    EmergencyContact TEXT, -- Emergency contact name
    EmergencyContactPhone TEXT, -- Emergency contact phone number
    Notes TEXT -- Additional notes about the client
);

-- Insert seed data
INSERT INTO Clients (
    FirstName, LastName, DOB, Gender, Phone, Email, Address, City, State, ZipCode,
    EmergencyContact, EmergencyContactPhone, Notes
) VALUES
    ('John', 'Doe', '1990-05-15', 'Male', '555-123-4567', 'johndoe@example.com', '123 Main St', 'Metropolis', 'AR', '72201',
     'Jane Doe', '555-987-6543', 'John is an exemplary client with a strong commitment to personal growth.'),
    ('Jane', 'Smith', '1985-11-20', 'Female', '555-234-5678', 'janesmith@example.com', '456 Elm St', 'Gotham', 'AR', '72202',
     'John Smith', '555-876-5432', 'Jane has recently joined the program and is adjusting well to the new environment.');

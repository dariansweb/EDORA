DROP TABLE IF EXISTS Providers;

CREATE TABLE Providers (
    ProviderID INTEGER PRIMARY KEY AUTOINCREMENT, -- Unique identifier for the provider
    Name TEXT NOT NULL, -- Name of the provider
    ServicesProvided TEXT NOT NULL, -- JSON-encoded list of services offered
    Capacity INTEGER NOT NULL -- Maximum capacity for service fulfillment
);

-- Example entries
INSERT INTO Providers (Name, ServicesProvided, Capacity)
VALUES
    ('Safe Haven Shelter', '["Emergency Housing", "Counseling"]', 201),
    ('TheraCare Clinic', '["Therapy Sessions", "Family Counseling"]', 202);

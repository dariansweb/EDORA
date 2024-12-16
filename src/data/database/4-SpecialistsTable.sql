DROP TABLE IF EXISTS Specialists;

CREATE TABLE Specialists ( 
    SpecialistID INTEGER PRIMARY KEY AUTOINCREMENT, -- Unique identifier for the specialist
    Name TEXT NOT NULL, -- Name of the specialist
    Specialization TEXT NOT NULL, -- Area of expertise (e.g., Housing, Therapy)
    AvailabilityStatus TEXT CHECK (AvailabilityStatus IN ('Available', 'Unavailable')) NOT NULL, -- Availability status
    ProviderID INTEGER NOT NULL, -- References the provider employing the specialist
    FOREIGN KEY (ProviderID) REFERENCES Providers(ProviderID) ON DELETE CASCADE -- Ensures valid provider linkage
);

-- Example entries
INSERT INTO Specialists (Name, Specialization, AvailabilityStatus, ProviderID)
VALUES
    ('Dr. Jane Smith', 'Therapy Services', 'Available', 1),
    ('Ms. John Doe', 'Housing Services', 'Unavailable', 2);

DROP TABLE IF EXISTS SpecialistAssignments;

CREATE TABLE SpecialistAssignments (
    AssignmentID INTEGER PRIMARY KEY AUTOINCREMENT, -- Unique identifier for the assignment
    SpecialistID INTEGER NOT NULL, -- References the assigned specialist
    ProviderID INTEGER NOT NULL, -- References the provider overseeing the assignment
    ClientID INTEGER NOT NULL, -- References the associated client
    NeedID INTEGER NOT NULL, -- References the associated "Need"
    StartDate TEXT NOT NULL, -- Date the assignment began
    EndDate TEXT, -- Date the assignment ended or is expected to end
    FOREIGN KEY (SpecialistID) REFERENCES Specialists(SpecialistID) ON DELETE CASCADE, -- Links to specialists
    FOREIGN KEY (ProviderID) REFERENCES Providers(ProviderID) ON DELETE CASCADE, -- Links to providers
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID) ON DELETE CASCADE, -- Links to clients
    FOREIGN KEY (NeedID) REFERENCES Needs(NeedID) ON DELETE CASCADE -- Links to needs
);

-- Example entries
INSERT INTO SpecialistAssignments (SpecialistID, ProviderID, ClientID, NeedID, StartDate, EndDate)
VALUES
    (1, 1, 1, 1, '2024-12-02', '2024-12-15'),
    (2, 2, 2, 2, '2024-12-03', NULL);

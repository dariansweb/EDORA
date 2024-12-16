DROP TABLE IF EXISTS ResourceTracking;

CREATE TABLE ResourceTracking (
    ResourceID INTEGER PRIMARY KEY AUTOINCREMENT, -- Unique identifier for the resource record
    NeedID INTEGER NOT NULL, -- References the associated "Need"
    ProviderID INTEGER NOT NULL, -- References the associated provider (future Providers table)
    ResourceType TEXT NOT NULL, -- Type of resource (e.g., Housing Slot)
    Description TEXT NOT NULL, -- Detailed explanation of the resource
    Capacity INTEGER NOT NULL, -- Maximum capacity available
    Utilized INTEGER NOT NULL, -- Number of resources currently utilized
    AvailabilityStatus TEXT CHECK (AvailabilityStatus IN ('Available', 'Limited', 'Unavailable')) NOT NULL, -- Status of the resource
    LastChecked TEXT NOT NULL, -- Timestamp for when availability was last verified
    Remarks TEXT, -- Additional comments or notes
    FOREIGN KEY (NeedID) REFERENCES Needs(NeedID) ON DELETE CASCADE, -- Ensures resources are tied to valid needs
    FOREIGN KEY (ProviderID) REFERENCES Providers(ProviderID) ON DELETE CASCADE -- Ensures valid provider linkage
);

-- Example entries
INSERT INTO ResourceTracking (NeedID, ProviderID, ResourceType, Description, Capacity, Utilized, AvailabilityStatus, LastChecked, Remarks)
VALUES
    (1, 1, 'Emergency Housing', '3 beds in a safe, temporary housing facility.', 10, 7, 'Limited', '2024-12-11 09:00:00', 'Two slots opening by the weekend.'),
    (2, 2, 'Therapy Session', '5 weekly therapy session slots.', 5, 5, 'Unavailable', '2024-12-10 15:30:00', 'All slots are currently booked.');

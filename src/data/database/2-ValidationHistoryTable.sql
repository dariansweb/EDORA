DROP TABLE IF EXISTS ValidationHistory;

CREATE TABLE ValidationHistory (
    ValidationID INTEGER PRIMARY KEY AUTOINCREMENT, -- Unique identifier
    NeedID INTEGER NOT NULL, -- References the associated "Need"
    ValidationTimestamp TEXT NOT NULL, -- When the validation was attempted
    Validator TEXT, -- Entity performing the validation (e.g., System)
    ValidationStatus TEXT CHECK (ValidationStatus IN ('Passed', 'Failed')) NOT NULL, -- Outcome
    Notes TEXT, -- Additional details or reasons for failure
    FOREIGN KEY (NeedID) REFERENCES Needs (NeedID) ON DELETE CASCADE
);

-- Example entries
INSERT INTO ValidationHistory (NeedID, ValidationTimestamp, Validator, ValidationStatus, Notes)
VALUES
    (1, '2024-12-01 08:30:00', 'System', 'Passed', 'All checks passed successfully.'),
    (2, '2024-12-02 10:15:00', 'Admin', 'Failed', 'Income documentation missing.');

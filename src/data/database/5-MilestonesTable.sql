DROP TABLE IF EXISTS Milestones;

CREATE TABLE Milestones (
    MilestoneID INTEGER PRIMARY KEY AUTOINCREMENT, -- Unique identifier for each milestone
    NeedID INTEGER NOT NULL, -- References the associated "Need"
    Description TEXT NOT NULL, -- Description of the milestone
    Status TEXT CHECK (Status IN ('Pending', 'Completed')) NOT NULL, -- Status of the milestone
    DueDate TEXT, -- Expected completion date
    CompletedDate TEXT, -- Actual completion date
    AssignedEntityID INTEGER, -- Entity responsible for the milestone
    Remarks TEXT, -- Additional comments or notes
    FOREIGN KEY (NeedID) REFERENCES Needs(NeedID) ON DELETE CASCADE, -- Ensures valid Need linkage
    FOREIGN KEY (AssignedEntityID) REFERENCES Specialists(SpecialistID) ON DELETE SET NULL -- Assignments to entities
);

-- Example entries
INSERT INTO Milestones (NeedID, Description, Status, DueDate, CompletedDate, AssignedEntityID, Remarks)
VALUES
    (1, 'Initial Assessment Completed', 'Completed', '2024-12-05', '2024-12-04', 1, 'Assessment successfully passed.'),
    (2, 'Follow-Up Review', 'Pending', '2024-12-10', NULL, 2, 'Pending review from assigned therapist.');

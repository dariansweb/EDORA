-- Create the Needs table
CREATE TABLE IF NOT EXISTS Needs (
    NeedID INTEGER PRIMARY KEY AUTOINCREMENT, -- Unique identifier
    Type TEXT NOT NULL, -- Category of the Need
    Priority TEXT CHECK (Priority IN ('High', 'Medium', 'Low')) NOT NULL, -- Urgency level
    Status TEXT CHECK (Status IN ('Open', 'Validated', 'Fulfilled')) NOT NULL, -- Current state
    EligibilityRules TEXT, -- Criteria required for validation
    ResourcesRequired TEXT, -- Specific resources needed
    MilestonesStarted BOOLEAN DEFAULT 0 -- Tracks if milestones are being tracked
);

-- Example entries
INSERT INTO Needs (Type, Priority, Status, EligibilityRules, ResourcesRequired, MilestonesStarted)
VALUES
    ('Housing', 'High', 'Open', 'Income eligibility required', 'Beds, funding', 0),
    ('Therapy', 'Medium', 'Validated', 'Mental health assessment', 'Licensed therapist, session slots', 1);

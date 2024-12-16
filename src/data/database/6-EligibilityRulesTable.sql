DROP TABLE IF EXISTS EligibilityRules;

CREATE TABLE EligibilityRules (
    RuleID INTEGER PRIMARY KEY AUTOINCREMENT, -- Unique identifier for the eligibility rule
    NeedType TEXT NOT NULL, -- Category of the "Need" (e.g., Housing, Therapy)
    Criteria TEXT NOT NULL, -- Specific conditions for eligibility
    CreatedAt TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP, -- When the rule was created
    UpdatedAt TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP -- Last update timestamp
);

-- Example entries
INSERT INTO EligibilityRules (NeedType, Criteria, CreatedAt, UpdatedAt)
VALUES
    ('Housing Assistance', 'Income ≤ $30,000; Residency in County A.', '2024-01-01 12:00:00', '2024-06-15 14:30:00'),
    ('Therapy Services', 'Must have referral from primary physician.', '2024-02-10 09:00:00', '2024-06-20 10:45:00');

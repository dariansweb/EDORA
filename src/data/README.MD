# Database Setup with `setupDatabase.js`

## **Introduction**
This project includes an automated database setup script (`setupDatabase.js`) designed to execute SQL files in order, ensuring your database schema and seed data are consistently applied. While the current implementation is tailored for SQLite, the approach can be adapted for other relational databases like PostgreSQL or MySQL with minimal changes.

---

## **How It Works**
The `setupDatabase.js` script:
1. Reads SQL files from the `database/` directory.
2. Executes each file in numerical order (e.g., `0-ClientsTable.sql`, `1-NeedsTable.sql`).
3. Ensures schema and relationships are created without dependency issues (e.g., foreign keys).
4. Provides sample seed data to quickly bootstrap your database for testing and development.

---

## **Directory Structure**
```plaintext
database/
├── 0-ClientsTable.sql       # Creates the Clients table
├── 1-NeedsTable.sql         # Defines the Needs table
├── 2-ValidationHistoryTable.sql # Tracks validation attempts
├── 3-ProvidersTable.sql     # Stores service providers
├── 4-SpecialistsTable.sql   # Logs specialist details
├── 5-MilestonesTable.sql    # Tracks progress checkpoints
├── 6-EligibilityRulesTable.sql  # Defines eligibility rules
├── 7-ResourceTrackingTable.sql  # Monitors resource availability
├── 8-SpecialistAssignmentsTable.sql # Links specialists to clients
├── automation/              # Placeholder for advanced automation tools
└── README.MD                # Documentation for this directory
setupDatabase.js             # The script that automates database setup


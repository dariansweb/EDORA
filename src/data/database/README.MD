
# EDORA Database Schema

This directory contains SQL scripts for setting up the EDORA case management system database.

## Table List and Descriptions

1. **ClientsTable.sql**: Tracks core client information.
2. **NeedsTable.sql**: Logs client needs, their priorities, and statuses.
3. **ValidationHistoryTable.sql**: Captures validation attempts for needs.
4. **ProvidersTable.sql**: Stores service provider details.
5. **SpecialistsTable.sql**: Tracks specialists and their areas of expertise.
6. **MilestonesTable.sql**: Defines progress checkpoints for needs.
7. **EligibilityRulesTable.sql**: Stores program-specific eligibility criteria.
8. **ResourceTrackingTable.sql**: Monitors real-time resource availability.
9. **SpecialistAssignmentsTable.sql**: Links specialists to specific needs, clients, and providers.

## Setup Instructions

1. Run the setup script:
   ```bash
   node setupDatabase.js

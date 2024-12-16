import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import Database from 'better-sqlite3';

// Get the directory name of the current module
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

// Connect to the database
const db = new Database('database.sqlite', { verbose: console.log });

try {
    console.log('Starting database setup...');

    // Path to the directory containing SQL files
    const schemaDir = path.join(__dirname, 'database');

    // Read and sort all .sql files in the directory
    const schemaFiles = fs.readdirSync(schemaDir)
        .filter(file => file.endsWith('.sql')) // Only process .sql files
        .sort(); // Ensure correct order of execution

    // Execute each SQL file
    for (const file of schemaFiles) {
        const filePath = path.join(schemaDir, file);
        const sql = fs.readFileSync(filePath, 'utf8'); // Read SQL file contents
        console.log(`Executing ${file}...`);
        db.exec(sql); // Execute SQL commands
    }

    console.log('Database setup completed successfully.');
} catch (err) {
    console.error('Error setting up database:', err.message);
    process.exit(1);
}

// Export the database instance for use in other parts of the app
export default db;

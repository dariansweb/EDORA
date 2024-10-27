
## Project Structure - Atomic Design

This project follows the **Atomic Design** methodology to create reusable, scalable, and modular components for a maintainable codebase. The idea is to break down the interface into smaller, self-contained pieces (Atoms) and build them into larger, more complex components (Molecules, Organisms, etc.). Below is a detailed explanation of each level in the Atomic Design structure and the corresponding naming convention we use in this project.

| **Atomic Design** | **Alternative Names**  | **Description**                                                                                                                                           |
|-------------------|------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Atoms**         | Elements               | Basic UI elements that cannot be broken down further. Examples include buttons, icons, text inputs, etc. These are the fundamental building blocks of the UI. |
| **Molecules**     | Components             | Groups of Atoms working together. For instance, a form field might include a label, input, and error message. Molecules are still fairly simple but serve a distinct function in the UI. |
| **Organisms**     | Layouts or Sections     | More complex components composed of Molecules and Atoms. Examples include navigation bars, cards, or content sections. Organisms represent distinct sections of the interface. |
| **Templates**     | Templates              | Page layouts that define the structure but don't contain real data. Templates serve as blueprints for pages, providing placeholders for content and components. |
| **Pages**         | Pages                  | Complete, fully-rendered pages with actual data, content, and functional components. Pages combine Templates with data to create the final view.             |

### Usage

This structure allows for a **separation of concerns** and promotes reusability across the project. By breaking down the UI into smaller pieces and reusing them, we adhere to the **DRY (Don't Repeat Yourself)** principle, making the codebase easier to maintain, test, and scale. Below is a quick guide on where different types of components should live within the project:

- **Atoms** (Basic elements like buttons, inputs) → `src/components/Atoms`
- **Molecules** (Grouped elements like form fields) → `src/components/Molecules`
- **Organisms** (Larger sections like NavBars or SideBars) → `src/components/Organisms`
- **Templates** (Page structures) → `src/components/Templates`
- **Pages** (Complete pages) → `src/pages/`

### Example

- **Atom**: `Button.jsx` → A single button with styling and click events.
- **Molecule**: `LoginForm.jsx` → A form containing labeled inputs and buttons.
- **Organism**: `Header.jsx` → A header containing a logo, navigation links, and a search bar.
- **Template**: `HomeTemplate.jsx` → A layout for the homepage without actual data.
- **Page**: `HomePage.jsx` → The homepage fully populated with dynamic content and using the `HomeTemplate`.

### Why Atomic Design?

The use of Atomic Design ensures that:
1. **Consistency**: Every UI element behaves and looks consistently throughout the application.
2. **Reusability**: Components built as Atoms, Molecules, and Organisms can be reused across the app, reducing duplication of effort.
3. **Maintainability**: The structure makes it easier to maintain the code as changes to a specific UI component affect all areas where it's used.
4. **Scalability**: As the project grows, this modular structure helps in scaling the application without creating a mess of interdependent code.

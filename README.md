# Virtual Reality Training Environment for Emergency Services

## Overview
This project provides a virtual reality training environment designed specifically for users in police, fire, and ambulance roles. The training environment allows users to engage in realistic training scenarios to enhance their skills and preparedness for real-life situations.

## Project Structure
The project consists of the following files:

- **client/main.lua**: Handles client-side logic, user interactions, VR training sessions, and UI elements.
- **server/main.lua**: Manages server-side logic, including training sessions, user permissions, and client communication.
- **shared/config.lua**: Contains configuration settings, role permissions, and shared constants for both client and server.
- **fxmanifest.lua**: Defines resource metadata, including scripts, dependencies, and versioning information.
- **README.md**: Documentation for setup, usage, and information about the training environment.

## Setup Instructions
1. **Download the Project**: Clone or download the repository to your local machine.
2. **Install Dependencies**: Ensure that you have the necessary dependencies installed for the Qbcore framework.
3. **Add to Resources**: Place the `qb-vrtraining` folder into your server's resources directory.
4. **Update `server.cfg`**: Add `start qb-vrtraining` to your `server.cfg` file to ensure the resource loads on server start.
5. **Permissions**: Configure user permissions in `shared/config.lua` to allow access to the training environment based on roles.

## Usage Guidelines
- Users with police, fire, or ambulance roles can access the virtual reality training environment.
- Interact with the UI to select training scenarios and begin sessions.
- Follow the prompts and instructions provided during training to maximize learning outcomes.

## Contributing
Contributions to enhance the training environment are welcome. Please submit a pull request or open an issue for discussion.

## License
This project is licensed under the MIT License. See the LICENSE file for more details.
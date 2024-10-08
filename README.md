# provider_get_it


![Flutter](https://img.shields.io/badge/Flutter-v2.8.0-blue)
![Dart](https://img.shields.io/badge/Dart-v2.14.0-00BFFF)
![License](https://img.shields.io/badge/License-MIT-green)

## 📖 Overview

This is a demo project showcasing an API implementation in Flutter using the Provider package for state management and GetIt for dependency injection, all structured under the Clean Architecture pattern. The goal of this project is to demonstrate best practices in Flutter development while ensuring code maintainability and scalability.

## 📦 Features

- **Clean Architecture**: The project is structured to separate concerns and improve testability.
- **Provider & GetIt**: Efficient state management and dependency injection.
- **REST API Integration**: Communicate with a RESTful API to fetch and display data.
- **Responsive Design**: Built with a mobile-first approach for a seamless user experience.

## ⚙️ Getting Started

To get a local copy of the project up and running, follow these steps.

### Prerequisites

- Flutter SDK (v2.8.0 or higher)
- Dart SDK (v2.14.0 or higher)
- An IDE (like VSCode or Android Studio)


### 📂 Project Structure
- **services/**: Contains services that interact with external APIs or other integrations.
- **userlist/**: Feature-specific folder related to user listing.
  - **data/**: Responsible for data management, including models and repository implementations.
    - **entities/**: Contains data entities, such as `userEntity.dart`.
    - **repo_impl/**: Contains implementations of the repository interfaces.
  - **domain/**: Contains the core business logic.
    - **repository/**: Holds repository interfaces like `user_repo.dart`.
    - **usecase/**: Defines application-specific logic, such as `user_usecase.dart`.
  - **presentation/**: Handles the UI and state management.
    - **provider/**: Contains state management classes, such as `user_provider.dart`.
    - **ui/**: Contains UI components, such as `user_page.dart`.
- **main.dart**: Entry point of the application.
### Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/Abhaykumarbhumihar/provider_getit_flutter.git


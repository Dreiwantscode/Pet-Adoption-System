🐾 Pet Adoption System - Development Environment Setup
📌 Project Description
The Pet Adoption System is a cross-platform application that allows pet seekers to find adoptable pets while enabling shelters and independent rescuers to manage adoptions efficiently. The system consists of:
• **Web Application (Laravel)** - For managing pet listings, adoption requests, and user accounts.
• **Mobile Application (Flutter)** - For users to browse and apply for pet adoptions on their smartphones.
• **Desktop Application (Flutter)** - A desktop version for shelters to manage pet adoptions conveniently.
✨ Key Features
✅ Browse available pets with filters (age, breed, location, etc.)
✅ Submit & track adoption applications
✅ Admin dashboard for pet owners
✅ Secure authentication & user roles (Adopters, Admins)
✅ Cross-platform support (Web, Mobile, Desktop)
🔧 Technologies Used
• **Development Tools**
  - IDE: Visual Studio Code (VS Code), Android Studio
  - Version Control: Git & GitHub
• **Backend (Web API)**
  - Framework: Laravel (PHP)
  - Database: MySQL
  - Authentication: Laravel Breeze
  - Real-time Features: Laravel WebSockets
• **Frontend (Mobile & Desktop)**
  - Framework: Flutter
  - State Management: Provider / Riverpod
  - Networking: HTTP & Laravel API integration
🚀 Setup Instructions
1️⃣ Clone the Repository
Open your terminal and run:
git clone https://github.com/ Dreiwantscode/Pet-Adoption-System.git
cd Pet-Adoption-System
🛠 Setting Up Laravel Backend
2️⃣ Install Laravel and Dependencies
Install PHP, Composer, and MySQL if not already installed.
Run the following command to install Laravel dependencies:
composer install
Copy the environment file:
cp .env.example .env
Generate an application key:
php artisan key:generate
Set up the database in `.env` file:
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=pet_adoption_db
DB_USERNAME=root
DB_PASSWORD=your_password
Run database migrations and seeders:
php artisan migrate --seed
Serve the application:
php artisan serve
📱 Setting Up Flutter (Android & Desktop)
3️⃣ Install Flutter for Android
Download and install Flutter from the official website: https://flutter.dev.

**Download the SDK:**
• Go to the Flutter website and select your OS.
• Download the latest stable Flutter SDK archive.

**Extract the Archive:**
• **Windows:** Extract to a suitable location (e.g., `C:\src\flutter`).

**Update Environment Variables (Windows):**
• Open *System Properties > Advanced > Environment Variables*.
• Under 'User variables' or 'System variables,' find and update the PATH variable to include Flutter.

**Verify Flutter Installation:**
Run the following command in the terminal:
flutter doctor
4️⃣ Install Flutter for Desktop
Enable desktop support for Flutter by running:
flutter config --enable-windows-desktop
flutter config --enable-macos-desktop
Verify Flutter installation:
flutter doctor
Install dependencies:
flutter pub get
Connect Flutter with Android Studio:
• Open Android Studio
• Go to Plugins > Install Flutter & Dart plugins
• Restart Android Studio
5️⃣ Running Flutter Apps
Run the mobile app (Android/iOS):
flutter run
Run the desktop app (Windows/Mac):
flutter run -d windows  # For Windows
flutter run -d macos    # For macOS
🔄 API Integration – Postman
🛠 Setting Up Postman for Pet Adoption System API
Install Postman
•	Download and install Postman.
•	Create a free account (optional, but recommended).
________________________________________
Create a New Collection
•	Open Postman.
•	Click on "New" > Collection.
•	Name the collection "Pet Adoption API".
________________________________________
Set Base URL in Postman
•	Open Postman and go to Settings.
•	Click Add a new variable in the Globals tab:
o	Variable Name: base_url
o	Initial Value: http://127.0.0.1:8000/api/
o	Current Value: http://127.0.0.1:8000/api/
•	Click Save.


6️⃣ Configuring API Base URL in Flutter
Open `lib/config.dart` (create if not available).
Set your API base URL:
const String BASE_URL = "http://127.0.0.1:8000/api/";
Restart the Flutter app to apply changes:
flutter clean
flutter pub get
flutter run
🛡 Git Version Control Commands
7️⃣ Pull Latest Changes
git pull origin main
8️⃣ Commit & Push Changes
git add .
git commit -m "Initial setup for Pet Adoption System"
git push origin main
📂 Project Structure
/PetAdoptionSystem
│── /backend        # Laravel API (Backend)
│── /mobile_app     # Flutter Mobile App
│── /desktop_app    # Flutter Desktop App
│── /docs           # Documentation
│── /config         # Configuration files
│── .gitignore      # Git ignore file
│── README.md       # Project Overview
👥 Team Members
-	Efhan David [Android Flutter]
-	Ralph Kerby Suela [Desktop]
-	Von Andrei S. Roda [Web]


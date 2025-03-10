# ShopyWell - Flutter E-commerce App
ShopyWell is a Flutter-based e-commerce application designed for Android. It features Firebase Authentication for secure user login, Stripe as the payment gateway, and Firestore as the database for managing data efficiently.
### Video of the work
https://github.com/user-attachments/assets/a78398ea-77e3-4114-aace-9387014e2e18

## Features

User Authentication: Secure login and registration using Firebase Authentication.

Checkout & Payment: Seamless payment processing using Stripe.

Real-time Database: Data stored and managed in Firestore.

Responsive UI: Adaptive design for various screen sizes.

## Tech Stack

Flutter: Frontend framework for cross-platform development.

Firebase Authentication: Secure user authentication.

Stripe Payment Gateway: For processing payments securely.

Firestore Database: NoSQL database for real-time data handling.

Provider/GetX: State management (whichever is applicable).

## Installation

Clone the repository:

git clone https://github.com/yourusername/shopywell.git
cd shopywell

## Install dependencies:

installing get: flutter pub get

Configure Firebase: 

Set up Firebase in your Flutter project.

Download google-services.json and place it in the android/app directory.

### installing firebase: 

flutter pub add firebase_core

flutter pub add firebase_auth

flutter pub add cloud_firestore

for hive used for locally storing 

### hive

hive: ^2.2.3

hive_flutter: ^1.1.0

hive_generator: ^2.0.1

path_provider: ^2.1.5

### Stripe(payment gateway)

flutter_stripe: ^11.4.0

dio: ^5.8.0+1

### other dependencies

smooth_page_indicator: ^1.2.1

google_fonts: ^6.2.1

line_icons: ^2.0.3

awesome_snackbar_content: ^0.1.4

cached_network_image: ^3.4.1

flutter_keyboard_visibility: ^5.0.0

### Run the app:

flutter run

Configuration

Stripe Setup:

Add your Stripe API keys in a secure manner.

Follow Stripe documentation for setting up payment integration.

Firestore Rules:

Ensure appropriate Firestore security rules are set for data protection.

Contributing

Feel free to fork the repository, create a new branch, and submit a pull request.

License

This project is licensed under the MIT License.

Contact

For queries or suggestions, reach out via [clevitamerinepereira21@gmail.com].

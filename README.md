# BookVerse 📚

BookVerse is a Flutter-based mobile application designed for book lovers to discover, explore, and get details about a wide range of books. It fetches data from the Google Books API to provide an extensive library for users to browse.

## 🌟 Features

* **Splash Screen:** Engaging entry point to the application.
* **Home Page:**
    * Displays a list of "Featured Books".
    * Showcases a list of the "Newest Books".
* **Book Details:**
    * View comprehensive details for each book, including title, author(s), publisher, published date, description, and cover image.
    * Display average rating and ratings count.
    * Option to preview the book (if a preview link is available).
    * Shows a section for "You can also like" (similar books).
* **Search Functionality:**
    * Allows users to search for books.
    * Displays search results in a list.
* **Error Handling & Loading States:**
    * Custom widgets for loading indicators and error messages for a better user experience.
* **Responsive UI Elements:** Custom buttons and styled text for a consistent look and feel.

## 🛠️ Tech Stack & Architecture

* **Framework:** Flutter
* **Programming Language:** Dart
* **State Management:** Flutter Bloc (Cubit)
* **API Integration:**
    * Google Books API
    * Dio for HTTP requests
* **Navigation:** GoRouter
* **Dependency Injection:** GetIt
* **Image Handling:** CachedNetworkImage
* **Font Management:** Google Fonts
* **Local Storage (Potentially):** PathProvider (often used for caching or local data, though direct usage isn't explicitly detailed for core features in provided files).
* **Architecture:** The project follows a feature-first approach with a clean architecture pattern (implied by `data`, `domain` (though not explicitly shown), `presentation` layers within features), likely MVVM (Model-View-ViewModel) given the use of Cubits for state management which act like ViewModels.
* **Code Quality:**
    * Equatable for value equality.
    * Flutter Lints for code analysis.

## 🖼️ Screenshots

Here's a glimpse of BookVerse:

### 1. Splash View
![Screenshot_٢٠٢٥٠٥٢٨-١٨٤٦٠٧](https://github.com/user-attachments/assets/b974879b-93b1-4ef0-a35d-3a649869bba0)


### 2. Home View
![Screenshot_٢٠٢٥٠٥٢٨-١٨٤٦١٣](https://github.com/user-attachments/assets/eb14507b-f38a-41da-b2a1-8dd7b0d647b5)


### 3. Book Details View
![Screenshot_٢٠٢٥٠٥٢٨-١٨٤٦٢٣](https://github.com/user-attachments/assets/d463d21d-74d7-485b-9856-4c38c2418518)


### 4. Search View
![Screenshot_٢٠٢٥٠٥٢٨-١٨٤٧٢٨](https://github.com/user-attachments/assets/1100f9b8-26c9-4d87-8c84-ad1b6a2ef02d)



## 🚀 Getting Started

This project is a standard Flutter application. To get started:

1.  **Prerequisites:**
    * Ensure you have Flutter SDK installed.
    * An editor like VS Code or Android Studio with Flutter plugins.

2.  **Clone the repository:**
    ```bash
    git clone [https://github.com/mu7ammad-3issa/book-verse.git](https://github.com/mu7ammad-3issa/book-verse.git)
    cd BookVerse
    ```

3.  **Install dependencies:**
    ```bash
    flutter pub get
    ```

4.  **Run the application:**
    ```bash
    flutter run
    ```

## 📁 Project Structure

The project follows a feature-driven directory structure:

```
bookverse/
├── android/                      # Android specific files
├── ios/                          # iOS specific files
├── lib/
│   ├── main.dart                 # Main application entry point
│   ├── constants.dart            # Application-wide constants
│   ├── core/                     # Core utilities, services, errors
│   │   ├── utils/                # Utility functions, classes (API service, router, styles etc.)
│   │   ├── errors/               # Failure classes
│   ├── features/                 # Feature-based modules
│   │   ├── splash/
│   │   │   └── presentation/
│   │   ├── home/
│   │   │   ├── data/             # Data layer (models, repos, data sources)
│   │   │   ├── presentation/     # Presentation layer (views, widgets, cubits)
│   │   ├── search/
│   │   │   └── presentation/
│   └── ...
├── linux/                        # Linux specific files
├── macos/                        # macOS specific files
├── web/                          # Web specific files
├── windows/                      # Windows specific files
├── pubspec.yaml                  # Project dependencies and metadata
└── README.md
```

## API Reference

This project uses the [Google Books API v1](https://developers.google.com/books/docs/v1/using) to fetch book data.

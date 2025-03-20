<<<<<<< HEAD
# zylentrix

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
=======
# zylentrix-intern-

## 🛠 Technologies Used
- **Flutter** (Dart)
- **HTTP Package** (API calls)
- **FutureBuilder** (Handling asynchronous operations)
- **StatefulWidget** (Managing state)

 ## 🎨 User Interface (UI)
- Displays a list of posts using **ListView.builder**.
- Uses **Card Widgets** for better UI.
- Shows **CircularProgressIndicator** while loading data.
- Displays an **error message** if API fails.

## 🔗 API Service Implementation
- The app uses a separate `ApiService` class to handle API requests.
- It fetches data from `https://jsonplaceholder.typicode.com/posts` and converts JSON into Dart models (`PostModel`).
- `FutureBuilder` is used to manage the API response efficiently.

## 📷 App Screenshot
![Screenshot 2025-03-20 194142](https://github.com/user-attachments/assets/cad396e6-a3ce-46b6-b842-69ca17aa1cae)


## 🚀 Future Improvements
- Add a **search feature** to filter posts.
- Implement **pagination** for better performance.
- Improve UI with **better styling and animations**.
>>>>>>> 7835fd54a69962fea79fcfb1901f1124d3667c41

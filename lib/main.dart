import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:list_app/api_service.dart';
import 'package:list_app/home_screen.dart';
import 'package:list_app/user.dart';
import 'package:provider/provider.dart'; // Optional, for state management

// Import your screens and models (user.dart, api_service.dart, home_screen.dart, user_details_screen.dart)

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // Optional, for state management
      providers: [
        ChangeNotifierProvider(create: (context) => UserListProvider()),
      ],
      child: MaterialApp(
        title: 'User List App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}

// UserListProvider class (defined in a separate file - user_list_provider.dart)

class UserListProvider extends ChangeNotifier {
  List<User> users = [];

  Future<void> fetchUsers() async {
    users = await ApiService.getUsers();
    notifyListeners();
  }
}

// Rest of your code for screens and models (refer to previous code examples)

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:real_e_comm_dashboard/core/Services/get_it_service.dart';
import 'package:real_e_comm_dashboard/core/helper_function/on_generate_routes.dart';
import 'package:real_e_comm_dashboard/features/dashboard/views/dashboard_view.dart';
import 'package:real_e_comm_dashboard/firebase_options.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://tzshqyqoojgrhkhirddh.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR6c2hxeXFvb2pncmhraGlyZGRoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwOTUzMDYsImV4cCI6MjA1NjY3MTMwNn0.k-rA-TItq457sLu4XEcB3IFXAPiZZAO6GB-lN0PYzhE',
  );

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupGetit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: DashboardView.routeName,
      onGenerateRoute: onGenerateRoute,
    );
  }
}

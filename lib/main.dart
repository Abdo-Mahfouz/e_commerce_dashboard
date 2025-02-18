import 'package:e_commerce_dashboard/core/services/storage_service/supabase_storage_service.dart';
import 'package:e_commerce_dashboard/features/dashboard/presentation/views/dash_board_home_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/helper_functions/on_generate_routes.dart';
import 'core/di/get_it.dart';
import 'core/services/bloc_observer/custom_bloc_observer.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CustomBlocObserver();
  await SupabaseStorageService.initSupaBase();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupDI();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: DashBoardHomeView.routeName,
    );
  }
}

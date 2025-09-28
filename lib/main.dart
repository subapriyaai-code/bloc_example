import 'package:bloc_example/data/repositories/user_repo_impl.dart';
import 'package:bloc_example/di/injection.dart';
import 'package:bloc_example/domain/repositories/user_repo.dart';
import 'package:bloc_example/domain/use_cases/get_user_use_case.dart';
import 'package:bloc_example/presentation/dasbhoard/dashboard_bloc.dart';
import 'package:bloc_example/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async{
  await setUpDependencies();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BlocProvider(
        create: (context) => getIt<DashboardBloc>(),
        // DashboardBloc(),
        child: const HomePage(),
      ),
    );
  }
}

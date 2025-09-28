import 'package:bloc_example/presentation/dasbhoard/dashboard_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // BlocProvider / MultiBlocProvider
  // BlocBuilder
  // BlocListener
  // BlocConsumer

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    return BlocBuilder<DashboardBloc, DashboardState>(
      buildWhen: (previous, current) => previous.isGettingUser != current.isGettingUser,
      builder: (context, state) {
        return state.isGettingUser ? 
        Center(child: CircularProgressIndicator()) :
        Scaffold(
          body: Column(
            children: [
              Text(
                "User has Loggedin, Navigated to Dashboard,\n 1. Get User Profile,\n 2. Display User's business content",
              ),
              Text("Current UserId: ${state.userId}"),
              SizedBox(
                width: 600,
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                  controller: emailController,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<DashboardBloc>().add(Init(emailController.text));
                },
                child: Text("Trigger Bloc Event To Get User"),
              ),
            ],
          ),
        );
      },
    );
  }
}

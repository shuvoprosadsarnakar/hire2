import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body:
            // TODO: use state management solution to effeciently change state
            // TODO: show assets/loading_new.riv animation while loadin data from the web, show no data text on app initial load
            Center(
                child: Container(
          color: Colors.grey,
          height: 300,
          width: 300,
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                // TODO: use avatar field from json
                "https://placehold.co/200x200.png",
                width: 150,
                height: 150,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.error),
              ),
              const SizedBox(height: 40),
              // TODO: use first_name & last_name fields from json 
              Text(" Salman khan", style: ThemeData().textTheme.labelLarge),
              // TODO: phone_number 
              Text(" 017xxxx ", style: ThemeData().textTheme.labelLarge),
              // TODO: format date_of_birth properly
              Text(" Jan 24, 1990", style: ThemeData().textTheme.labelLarge),
            ],
          ),
        )),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () {
            // TODO: trigger fetch random data from api
          },
        ),
      ),
    );
  }
}

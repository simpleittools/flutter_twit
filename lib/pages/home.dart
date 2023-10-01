import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/user_provider.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          TextButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              ref.read(userProvider.notifier).logout();
            },
            child: const Text(
              "Sign Out",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Text(ref.watch(userProvider).user.email),
        ],
      ),
    );
  }
}

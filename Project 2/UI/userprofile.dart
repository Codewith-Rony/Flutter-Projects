import 'package:demo_project/block/mainbloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Userprofile extends StatefulWidget {
  final String? id;
  const Userprofile({super.key, required this.id});

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  @override
  void initState() {
    super.initState();
    context.read<MainBloc>().add(ViewProfile(id: widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
        backgroundColor: Color.fromARGB(255, 91, 169, 237), // Updated color
      ),
      body: BlocBuilder<MainBloc, MainState>(
        buildWhen: (previous, current) =>
            current is ProfileFetchSuccess || current is ProfileFetchFailed,
        builder: (context, state) {
          if (state is ProfileFetchSuccess) {
            final profileModel = state.profileModel;
            final profile = profileModel.data;

            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color:
                          const Color(0xFFCAF4FF), // Updated background color
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF5AB2FF)
                              .withOpacity(0.2), // Updated shadow color
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name: ${profile?.firstname} ${profile?.lastname}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(
                                255, 6, 105, 185), // Updated text color
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Email: ${profile?.email}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(
                                255, 24, 133, 228), // Updated text color
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Phone Number: ${profile?.phoneNumber}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(
                                255, 24, 133, 228), // Updated text color
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Status: ${profile?.status}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(
                                255, 24, 133, 228), // Updated text color
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Role: ${profile?.role}',
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(
                                255, 24, 133, 228), // Updated text color
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else if (state is ProfileFetchFailed) {
            return Center(
              child: Text(
                'Failed to fetch profile',
                style: TextStyle(
                  color: const Color(0xFF5AB2FF), // Updated text color
                  fontSize: 18,
                ),
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

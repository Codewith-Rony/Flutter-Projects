import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo_project/UI/splash.dart';
import 'package:demo_project/UI/userprofile.dart';
import 'package:demo_project/block/mainbloc.dart';
import 'package:demo_project/localstorage/localstorage.dart';
import 'package:demo_project/server/ServerHelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Main Home Page
class Homepg extends StatefulWidget {
  const Homepg({super.key});

  @override
  State<Homepg> createState() => _HomepgState();
}

class _HomepgState extends State<Homepg> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    context.read<MainBloc>().add(DoGetImages());
  }

  static const List<Widget> _widgetOptions = <Widget>[
    HomeContent(),
    Text("Search Page"),
    Text('Profile Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DrawerHeader(
              padding: EdgeInsets.only(top: 50, left: 20),
              child: Text(
                "Settings",
                style: TextStyle(fontSize: 20, color: Color(0xFF5AB2FF)),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Color(0xFF5AB2FF)),
              title: const Text("Home",
                  style: TextStyle(color: Color(0xFF5AB2FF))),
              onTap: () {
                Navigator.of(context).pop();
                _onItemTapped(0);
              },
            ),
            ListTile(
              leading: const Icon(Icons.search, color: Color(0xFF5AB2FF)),
              title: const Text("Search",
                  style: TextStyle(color: Color(0xFF5AB2FF))),
              onTap: () {
                Navigator.of(context).pop();
                _onItemTapped(1);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Color(0xFF5AB2FF)),
              title: const Text("Profile",
                  style: TextStyle(color: Color(0xFF5AB2FF))),
              onTap: () {
                Navigator.of(context).pop();
                _onItemTapped(2);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Color(0xFF5AB2FF)),
              title: const Text("Logout",
                  style: TextStyle(color: Color(0xFF5AB2FF))),
              onTap: () async {
                await LocalStorage.clearAll();
                Navigator.of(context).pop();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SplashScreen()));
              },
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFCAF4FF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFA0DEFF),
        title: const Text("Home Page",
            style: TextStyle(color: Color.fromARGB(255, 33, 49, 61))),
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 19, 19, 19)),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color.fromARGB(255, 55, 158, 248)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Color.fromARGB(255, 55, 158, 248)),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color.fromARGB(255, 55, 158, 248)),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF5AB2FF),
        onTap: _onItemTapped,
        backgroundColor: const Color(0xFFA0DEFF),
      ),
    );
  }
}

// Home Content Widget
class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              BlocBuilder<MainBloc, MainState>(
                buildWhen: (previous, current) =>
                    current is ImageLoadSucess || current is ImageLoadFailed,
                builder: (context, state) {
                  if (state is ImageLoadSucess) {
                    return CarouselSlider.builder(
                      itemCount: state.imageModel.data!.length,
                      itemBuilder: (context, ind, realIndex) {
                        return InkWell(
                          onTap: () {
                            // Handle onTap event
                          },
                          child: Image.network(
                            '${ServerHelper.imageip}/${state.imageModel.data![ind].image}',
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                            height: 400.0,
                          ),
                        );
                      },
                      options: CarouselOptions(
                        autoPlay: true,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: true,
                        autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                      ),
                    );
                  } else if (state is ImageLoadFailed) {
                    return const Text('Failed to load images');
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
              const SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                children: [
                  HomeButton(
                    icon: Icons.list,
                    label: 'User List',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UserListPage()));
                    },
                  ),
                  HomeButton(
                    icon: Icons.info,
                    label: 'About App',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AboutAppPage()));
                    },
                  ),
                  HomeButton(
                    icon: Icons.photo,
                    label: 'Gallery',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GalleryPage()));
                    },
                  ),
                  HomeButton(
                    icon: Icons.search,
                    label: 'Search',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const SearchPage())); // Adjust as needed
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Button Widget
class HomeButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const HomeButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: const Color(0xFF5AB2FF)),
            const SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(fontSize: 16, color: Color(0xFF5AB2FF)),
            ),
          ],
        ),
      ),
    );
  }
}

// User List Page
class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
        backgroundColor: const Color(0xFFA0DEFF),
      ),
      body: BlocBuilder<MainBloc, MainState>(
        buildWhen: (previous, current) =>
            current is ListSuccess || current is ListFailed,
        builder: (context, state) {
          if (state is ListSuccess) {
            final userList = state.userList;
            return ListView.builder(
              itemCount: userList.data?.length,
              itemBuilder: (BuildContext context, int index) {
                final user = userList.data![index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Userprofile(id: user.sId)));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 101, 199, 253)
                                .withOpacity(.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFCAF4FF),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name:\t${user.firstname!} ${user.lastname!}",
                              style: const TextStyle(
                                color: Color.fromARGB(255, 24, 133, 228),
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(width: 15),
                            Text(
                              "Email:\t${user.email!}",
                              style: const TextStyle(
                                color: Color.fromARGB(255, 24, 133, 228),
                                fontSize: 18.0,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "Phone Number:\t${user.phoneNumber!}",
                              style: const TextStyle(
                                color: Color.fromARGB(255, 24, 133, 228),
                                fontSize: 18.0,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          } else if (state is ListFailed) {
            return const Center(child: Text('Failed to load data'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

// Placeholder pages for navigation
class AboutAppPage extends StatelessWidget {
  const AboutAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About App'),
      ),
      body: Center(child: Text('About App Content')),
    );
  }
}

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: Center(child: Text('Gallery Content')),
    );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Center(child: Text('Search Content')),
    );
  }
}

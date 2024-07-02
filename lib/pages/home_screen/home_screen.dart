
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Budget Tracker',
        style: TextStyle(color: Colors.white,),),
        centerTitle: true,
        elevation: 1,
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_outlined,
          color: Colors.white,))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            _buildMenuCard(icon: Icons.add, onTap: () {}),
            _buildMenuCard(icon: Icons.list, onTap: () {}),
            _buildMenuCard(icon: Icons.settings, onTap: () {}),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard({required IconData icon, required VoidCallback onTap}){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                offset: Offset(3, 3),
                spreadRadius: -8,
                blurRadius: 10,
                color: Color.fromRGBO(137, 137, 137, 1),
              ),
            ]
          ),
          child: Center(
            child: Icon(icon,
            size: 80,),
          ),
        ),
      ),
    );
  }
}

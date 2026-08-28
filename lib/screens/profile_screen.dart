import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/menu_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 60, bottom: 30),
            decoration: const BoxDecoration(
              color: AppColors.primaryBlue,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/user.png')),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: const Icon(Icons.camera_alt,
                            color: AppColors.primaryBlue, size: 20),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                const Text("Abdallah Enshasi",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
                const Text("Abdallah@email.com",
                    style: TextStyle(color: Colors.white70, fontSize: 16)),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                MenuItem(
                  icon: Icons.inventory_2_outlined,
                  title: "My Orders",
                  onTap: () {},
                ),
                MenuItem(
                  icon: Icons.notifications_none,
                  title: "Notifications",
                  onTap: () {},
                ),
                MenuItem(
                  icon: Icons.location_on_outlined,
                  title: "Shipping Addresses",
                  onTap: () {},
                ),
                MenuItem(
                  icon: Icons.payment_outlined,
                  title: "Payment Methods",
                  onTap: () {},
                ),
                MenuItem(
                  icon: Icons.settings_outlined,
                  title: "Settings",
                  onTap: () {},
                ),
                MenuItem(
                  icon: Icons.help_outline,
                  title: "Help & Support",
                  onTap: () {},
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.logout, color: AppColors.red),
                  title: const Text(
                    "Logout",
                    style: TextStyle(
                        color: AppColors.red, fontWeight: FontWeight.bold),
                  ),
                  onTap: () => Navigator.pushReplacementNamed(context, '/'),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 3,
        onTap: (index) {
          if (index == 0) Navigator.pushReplacementNamed(context, '/home');
          if (index == 1) Navigator.pushReplacementNamed(context, '/categories');
          if (index == 2) Navigator.pushReplacementNamed(context, '/favorites');
        },
      ),
    );
  }
}

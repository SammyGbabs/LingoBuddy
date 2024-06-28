import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:screens/widget/SectionTile.dart';
import 'package:screens/widget/SettingSection.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 50.0),
            child: Text(
              'Settings',
              style: TextStyle(
                fontFamily: 'Manrope',
                fontWeight: FontWeight.bold,
                color: Color(0xFF000000),
              ),
            ),
          ),
        ),
        backgroundColor: const Color(0xFFFFFFFF),
        iconTheme: const IconThemeData(color: Color(0xFF000000)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            // Navigate back or perform other actions
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          SettingsSection(
            title: 'Account',
            tiles: [
              SettingsTile(
                icon: Icons.person_outline,
                title: 'Edit profile',
              ),
              SettingsTile(
                icon: Icons.security,
                title: 'Security',
              ),
              SettingsTile(
                icon: Icons.notifications_outlined,
                title: 'Notifications',
              ),
              SettingsTile(
                icon: Icons.lock_outline,
                title: 'Privacy',
              ),
            ],
          ),
          SettingsSection(
            title: 'Support & About',
            tiles: [
              SettingsTile(
                icon: Icons.subscriptions_outlined,
                title: 'My Subscription',
              ),
              SettingsTile(
                icon: Icons.help_outline,
                title: 'Help & Support',
              ),
              SettingsTile(
                icon: Icons.info_outline,
                title: 'Terms and Policies',
              ),
            ],
          ),
          SettingsSection(
            title: 'Cache & Cellular',
            tiles: [
              SettingsTile(
                icon: Icons.delete_outline,
                title: 'Free up space',
              ),
              SettingsTile(
                icon: Icons.data_usage,
                title: 'Data Saver',
              ),
            ],
          ),
          SettingsSection(
            title: 'Actions',
            tiles: [
              SettingsTile(
                icon: Icons.flag_outlined,
                title: 'Report a problem',
              ),
              SettingsTile(
                icon: Icons.person_add_outlined,
                title: 'Add account',
              ),
              SettingsTile(
                icon: Icons.logout,
                title: 'Log out',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

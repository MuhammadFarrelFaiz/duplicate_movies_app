import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notificationsEnabled = true;
  bool _downloadOnWifiOnly = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Settings',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        children: [
          _buildSectionHeader('Notifications'),
          _buildSwitchTile(
            'Push Notifications',
            'Receive notifications about new movies',
            _notificationsEnabled,
            (value) {
              setState(() {
                _notificationsEnabled = value;
              });
            },
          ),
          const Divider(color: Colors.grey, height: 1),

          _buildSectionHeader('Downloads'),
          _buildSwitchTile(
            'Wi-Fi Only',
            'Download content only on Wi-Fi',
            _downloadOnWifiOnly,
            (value) {
              setState(() {
                _downloadOnWifiOnly = value;
              });
            },
          ),
          const Divider(color: Colors.grey, height: 1),

          _buildSectionHeader('About'),
          _buildListTile('App Version', '1.0.0', Icons.info_outline, null),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 8),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 12,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  Widget _buildSwitchTile(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
  ) {
    return Container(
      color: Colors.grey[900],
      child: SwitchListTile(
        title: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: Colors.grey[400], fontSize: 13),
        ),
        value: value,
        onChanged: onChanged,
        activeThumbColor: Colors.red[700],
      ),
    );
  }

  Widget _buildListTile(
    String title,
    String trailing,
    IconData icon,
    VoidCallback? onTap,
  ) {
    return Container(
      color: Colors.grey[900],
      child: ListTile(
        leading: Icon(icon, color: Colors.white, size: 24),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
        trailing: trailing.isNotEmpty
            ? Text(
                trailing,
                style: TextStyle(color: Colors.grey[400], fontSize: 14),
              )
            : (onTap != null
                  ? Icon(Icons.chevron_right, color: Colors.grey[600])
                  : null),
        onTap: onTap,
      ),
    );
  }
}

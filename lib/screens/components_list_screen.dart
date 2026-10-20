import 'package:flutter/material.dart';
import 'text_detail_screen.dart';
import 'image_detail_screen.dart';
import 'textfield_detail_screen.dart';
import 'password_field_screen.dart';
import 'toggle_screen.dart';
import 'slider_screen.dart';
import 'date_picker_screen.dart';
import 'button_screen.dart';
import 'checkbox_screen.dart';
import 'radio_button_screen.dart';
import 'picker_screen.dart';
import 'column_layout_screen.dart';
import 'row_layout_screen.dart';
import 'navigation_view_screen.dart';
import 'tab_bar_screen.dart';
import 'menu_screen.dart';
import 'list_screen.dart';
import 'card_screen.dart';
import 'divider_screen.dart';

class ComponentsListScreen extends StatelessWidget {
  const ComponentsListScreen({super.key});

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0, left: 16.0),
      child: Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildComponentItem(BuildContext context, String title, String subtitle, Color bgColor, Widget targetScreen) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => targetScreen)),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(8.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 4),
            Text(subtitle, style: const TextStyle(fontSize: 14, color: Colors.black87)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Color blueBg = Colors.blue[100]!;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('UI Components List', style: TextStyle(color: Colors.blue)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionHeader('Display'),
            _buildComponentItem(context, 'Text', 'Displays text', blueBg, const TextDetailScreen()),
            _buildComponentItem(context, 'Image', 'Displays an image', blueBg, const ImageDetailScreen()),

            _buildSectionHeader('Input'),
            _buildComponentItem(context, 'TextField', 'Input field for text', blueBg, const TextFieldDetailScreen()),
            _buildComponentItem(context, 'PasswordField', 'Input field for passwords', blueBg, const PasswordFieldScreen()),
            _buildComponentItem(context, 'Toggle', 'On/off switch', blueBg, const ToggleScreen()),
            _buildComponentItem(context, 'Slider', 'Selects a value from a range', blueBg, const SliderScreen()),
            _buildComponentItem(context, 'DatePicker', 'Selects a date and time', blueBg, const DatePickerScreen()),

            _buildSectionHeader('Selection'),
            _buildComponentItem(context, 'Button', 'Triggers an action when tapped', blueBg, const ButtonScreen()),
            _buildComponentItem(context, 'Checkbox', 'Selects one or multiple options', blueBg, const CheckboxScreen()),
            _buildComponentItem(context, 'RadioButton', 'Selects a single option', blueBg, const RadioButtonScreen()),
            _buildComponentItem(context, 'Picker', 'Selects a value from a list', blueBg, const PickerScreen()),

            _buildSectionHeader('Layout'),
            _buildComponentItem(context, 'Column', 'Arranges elements vertically', blueBg, const ColumnLayoutScreen()),
            _buildComponentItem(context, 'Row', 'Arranges elements horizontally', blueBg, const RowLayoutScreen()),

            _buildSectionHeader('Navigation'),
            _buildComponentItem(context, 'NavigationView', 'Navigation container with back button', blueBg, const NavigationViewScreen()),
            _buildComponentItem(context, 'TabBar', 'Switches between main sections', blueBg, const TabBarScreen()),
            _buildComponentItem(context, 'Menu', 'Shows a menu with multiple actions', blueBg, const MenuScreen()),

            _buildSectionHeader('Content'),
            _buildComponentItem(context, 'List', 'Displays a list of items', blueBg, const ListScreen()),
            _buildComponentItem(context, 'Card', 'Container with content and style', blueBg, const CardScreen()),
            _buildComponentItem(context, 'Divider', 'Separates content into sections', blueBg, const DividerScreen()),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
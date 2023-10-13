import 'package:app_shared/widgets/my_drawer_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences App"),
      ),
      drawer: MyDrawerWidget(),
      body: Padding(
        padding: EdgeInsets.all(14),
        child: Column(
          children: [
            Text(
              "Configuración General",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Nombre completo",
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Dirección actual",
              ),
            ),
            SizedBox(
              height: 12,
            ),
            SwitchListTile(
                title: Text("Modo oscuro"),
                value: isDarkMode,
                onChanged: (bool value) {}),
          ],
        ),
      ),
    );
  }
}
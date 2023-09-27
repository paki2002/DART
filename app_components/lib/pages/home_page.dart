import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  //color: Colors.redAccent,
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://malditopaparazzo.com.ar/wp-content/uploads/2021/05/David-Chicle-768x770.jpg"),
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(5, 5),
                      blurRadius: 12.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Flutter Components",
                style: GoogleFonts.poppins(
                  fontSize: 20.0,
                  letterSpacing: 1,
                ),
              ),
              SizedBox(
                width: 160.0,
                child: Divider(),
              ),
              ItemComponentWidget(),
              ItemComponentWidget(),
              ItemComponentWidget(),
              ItemComponentWidget(),
              ItemComponentWidget(),
              ItemComponentWidget(),
              ItemComponentWidget(),
              ItemComponentWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  const ItemComponentWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 5.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: Offset(5, 5),
            blurRadius: 12.0,
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          "Avatar",
          style: GoogleFonts.poppins(),
        ),
        subtitle: Text("Ir a detalle del Avatar"),
        leading: Icon(
          Icons.check_circle_outline,
          color: Colors.black,
        ),
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}
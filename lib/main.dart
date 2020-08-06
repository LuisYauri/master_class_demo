import 'package:flutter/material.dart';

import 'pages/home-page.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(fontFamily: 'Sansation'),
      debugShowCheckedModeBanner: false,
      title: 'Demo Flutter',
      home: HomePage(),
    ));

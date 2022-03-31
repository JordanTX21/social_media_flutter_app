// ignore: file_names
import 'package:flutter/material.dart';


class IconString {
  static const String gps = "gps";
  static const String home = "home";
  static const String screnshare = 'screnshare';
  static const String photofilterrounded = 'photo_filter_rounded';
  static const String person = 'person';
  // ignore: constant_identifier_names
  static const String person_outline = 'person_outline';
  static const String download = 'download';
  static const String camion = 'local_shipping';
  static const String payment = 'payment';
  static const String calendar = 'calendar_today';
  // ignore: constant_identifier_names
  static const String file_download = 'file_download';
  static const String pdf = 'picture_as_pdf';
  static const String save = 'save';
  // ignore: constant_identifier_names
  static const String box_outline = 'check_box_outline_blank';
  // ignore: constant_identifier_names
  static const String library_books = 'library_books';
  static const String message = 'message';
  static const String payment2 = 'payment';

  static const _icons = <String, IconData>{
    screnshare: Icons.screen_share_outlined,
    "accessibility": Icons.accessibility,
    photofilterrounded: Icons.photo_filter_rounded,
    person: Icons.person,
    person_outline: Icons.person_outline,
    "input": Icons.input,
    "tune": Icons.tune,
    "list": Icons.list,
    home: Icons.home,
    gps: Icons.location_on_sharp,
    download: Icons.download,
    camion: Icons.local_shipping,
    payment: Icons.payment,
    calendar: Icons.calendar_today,
    file_download: Icons.file_download,
    pdf: Icons.picture_as_pdf,
    save: Icons.save,
    box_outline: Icons.check_box_outline_blank,
    library_books: Icons.library_books,
    message: Icons.message,
    "search": Icons.search,
    "favorite": Icons.favorite,
    "settings": Icons.settings,
    "exit_to_app": Icons.exit_to_app,
  };

  static Icon getIcon(String nombreIcono) {
    return Icon(
      _icons[nombreIcono]
    );
  }
}

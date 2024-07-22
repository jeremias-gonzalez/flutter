import 'package:flutter/material.dart';


const Color _customColor = Color(0xFF5C11D4);
const List <Color> _colorThemes = [
_customColor,
Colors.blue,
Colors.teal,
Colors.red,
];
class AppTheme{
  final int selectedColor;
  AppTheme({
    this.selectedColor = 2,
  }):assert(selectedColor >= 0 , 'colors must be between 0 and ${_colorThemes.length}');
  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed:_colorThemes[selectedColor] 
    );
  }
}
import 'package:flutter/material.dart';

// GRADIENTS
LinearGradient bgGradient = grad([Color(0xFFE5DDF5), Color(0xFFEEF2F5), Color(0xFFEEF4F4)]);
LinearGradient mainGradient = grad([Color(0xFFF7786B), Color(0xFFFA69A6)]);
LinearGradient msgGradient = grad([Color(0xFF16A085), Color(0xFF16A085)]);
LinearGradient grad(List<Color> colors) {
  return LinearGradient(
    tileMode: TileMode.clamp,
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: colors,
  );
}

// COLORS
const Color transparent = Color(0x00000000);
const Color white = Color(0xFFFFFFFF);
const Color red = Color(0xFFF44336);
const Color green = Colors.green;
const Color textColor = Color(0xFF646464);
const Color secondMainColor = Color(0xFFBD6CBB);
const Color inactiveColor = Color(0xFFBDB5CD);

// TYPOGRAPHY
Text h1(String value) {
  return Text(
    value,
    style: TextStyle(
      color: textColor,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),
  );
}

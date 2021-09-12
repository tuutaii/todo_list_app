import 'package:flutter/material.dart';

class ColorPicker extends StatefulWidget {
  final Function
      onSelectColor; // This function sends the selected color to outside

  ColorPicker({required this.onSelectColor});

  @override
  _ColorPickerState createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  // This variable used to determine where the checkmark will be
  late int _pickedColor;

  final List<int> availableColors = [
    0xFF6074F9,
    0xFFE42B6A,
    0xFF5ABB56,
    0xFF3D3A62,
    0xFFF4CA8F
  ];

  @override
  void initState() {
    _pickedColor = 0xFF6074F9;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 50,
          crossAxisSpacing: 12,
        ),
        itemCount: availableColors.length,
        itemBuilder: (context, index) {
          final itemColor = availableColors[index];
          return InkWell(
            onTap: () {
              widget.onSelectColor(itemColor);
              setState(() {
                _pickedColor = (itemColor);
              });
            },
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Color(itemColor),
                borderRadius: BorderRadius.circular(5),
              ),
              child: itemColor == _pickedColor
                  ? const Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    )
                  : Container(),
            ),
          );
        },
      ),
    );
  }
}

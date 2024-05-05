import 'package:flutter/material.dart';
import 'package:neobis_flutter_auth/core/app/io_ui.dart';
import 'package:neobis_flutter_auth/gen/strings.g.dart';

class ValidationStringWidget extends StatefulWidget {
  final bool? specChar;
  final bool? upperCase;
  final bool? number;
  final bool? length;

  const ValidationStringWidget({
    this.specChar,
    this.upperCase,
    this.number,
    this.length,
    Key? key,
  }) : super(key: key);

  @override
  State<ValidationStringWidget> createState() => _ValidationStringWidgetState();
}

class _ValidationStringWidgetState extends State<ValidationStringWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildString(t.symbols, widget.length),
          _buildString(t.letter, widget.upperCase),
          _buildString(t.number, widget.number),
          _buildString(t.specSymbol, widget.specChar)
        ],
      ),
    );
  }

  Text _buildString(String text, bool? boolean) {
    return Text(boolean == null ? text : (boolean == false ? '$text ❌' : '$text ✅'),
        style: TextStyle(
            color: boolean == null ? AppColors.greyMediumDark : (boolean == false ? AppColors.error : AppColors.green),
            fontSize: 14.0));
  }
}

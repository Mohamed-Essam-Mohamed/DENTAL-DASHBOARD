import 'package:dental_dashboard/src/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class DateField extends StatefulWidget {
  const DateField({Key? key}) : super(key: key);

  @override
  _DateFieldState createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        _textEditingController.text =
            DateFormat('dd/MM/yyyy').format(pickedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
      child: TextFormField(
        readOnly: true,
        style: TextStyle(fontSize: 5.sp, color: Colors.white),
        controller: _textEditingController,
        textAlignVertical: TextAlignVertical.center,
        onTap: () => _selectDate(context),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 20, right: 20, bottom: 3),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          hintText: 'DD/MM/YYYY',
          suffixIcon: const Icon(Icons.calendar_today),
          hintStyle: TextStyle(fontSize: 5.sp, color: AppColors.whitePureColor),
        ),
      ),
    );
  }
}

class PrimaryContainer extends StatelessWidget {
  final Widget child;
  final Color? color;
  const PrimaryContainer({
    Key? key,
    this.color,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: const [
          BoxShadow(
            color: AppColors.priamryColor,
          ),
        ],
      ),
      child: child,
    );
  }
}

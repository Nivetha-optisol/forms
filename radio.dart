import 'package:flutter/material.dart';

class RadioFormField extends StatefulWidget {
  final Function callback;
  const RadioFormField({Key? key, required this.callback}) : super(key: key);

  @override
  _RadioFormFieldState createState() => _RadioFormFieldState();
}

class _RadioFormFieldState extends State<RadioFormField> {
  String radioValue = 'Male';

  @override
  Widget build(BuildContext context) {
    return FormField(
      builder: (state) {
        return Column(
          children: [
            ListTile(
              title: Text('MALE'),
              leading: Radio<String>(

                  value: 'Male',
                  groupValue: radioValue,
                  onChanged: (String? value) {
                    setState(() {
                      radioValue = value!;
                    });
                  }),
            ),
            ListTile(
              title: Text('FEMALE'),
              leading: Radio<String>(
                  value: 'Female',
                  groupValue: radioValue,
                  onChanged: (String? value) {
                    setState(() {
                      radioValue = value!;
                    });
                  }),
            ),
            Text(
              state.errorText ?? '',
              style: TextStyle(
                color: Theme
                    .of(context)
                    .errorColor,
              ),
            ),
          ],
        );
      },

      onSaved: (value) {
        widget.callback('Radio', radioValue);
      },
    );
  }
}
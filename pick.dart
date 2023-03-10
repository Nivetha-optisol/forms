import 'package:flutter/material.dart';
class pick extends StatefulWidget {


  @override
  _pickState createState() => _pickState();
}

class _pickState extends State<pick> {
  late DateTime pickedDate;
  @override
  void initState(){
    super.initState();
    pickedDate = DateTime.now();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('date'),
      ),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              ListTile(
                title: Text("Date:${pickedDate.year},${pickedDate.month},${pickedDate.day} " ),
                trailing: Icon(Icons.keyboard_arrow_down),
                onTap: _pickDate,

              )

            ],
          )
      ),
    );

  }
  _pickDate() async{

    DateTime? date = await showDatePicker(
      context: context,
      firstDate: DateTime(DateTime.now().year-5),
      lastDate: DateTime(DateTime.now().year+5),
      initialDate: pickedDate,
    );
    if(date != null)
      setState(() {
        pickedDate=date;
      });

  }
}


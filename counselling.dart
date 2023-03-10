import 'package:flutter/material.dart';
class counselling extends StatefulWidget {
  const counselling({Key? key}) : super(key: key);

  @override
  _counsellingState createState() => _counsellingState();
}

class _counsellingState extends State<counselling> {

  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String dropdownValue = '';
  TextEditingController controller=new TextEditingController();
  Map<String, String> fieldValues = {};

  DateTime pickedDate = new DateTime.now();
  // @override
  // void initState(){
  //   super.initState();
  //   pickedDate = DateTime.now();
  // }

  setFieldValue(label, value) {
    fieldValues[label] = value;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title: Text("COUNSELING FORM",
          style: TextStyle(
              color: Colors.deepPurple
          ),
        ),


        backgroundColor: Colors.yellow,

      ),
      body: SingleChildScrollView(
        child: Form(
          key: _key,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Name',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Field is required.';
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        fieldValues['Name'] = value!;
                      });
                    }),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),

                      labelText: 'Mobile Number',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Field is required.';
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        fieldValues['Mobile number'] = value!;
                      });
                    }),
              ),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Department',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Field is required.';
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        fieldValues['Department'] = value!;
                      });
                    }),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),

                      labelText: 'College',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Field is required.';
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        fieldValues['College'] = value!;
                      });

                    }),
              ),


              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Place"
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Field is required.';
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        fieldValues["Place"] = value!;
                      });

                    }),
              ),


              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Batch Enrolled For"
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Field is required.';
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        fieldValues["Batch Enrolled For"] = value!;
                      });

                    }),
              ),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "How do you know about"
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Field is required.';
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        fieldValues["How do you know about"] = value!;
                      });

                    }),
              ),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),

                        labelText: "Remarks"
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Field is required.';
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        fieldValues["Remarks"] = value!;
                      });

                    }),
              ),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: () {
          if (_key.currentState!.validate()) {
            _key.currentState!.save();
            fieldValues.forEach((label, value) => print('$label = $value'));
          }
        },
      ),
    );
  }
}

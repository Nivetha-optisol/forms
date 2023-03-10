import 'package:flutter/material.dart';
import 'package:aram_forms/radio.dart';
class registration extends StatefulWidget {
  const registration({Key? key}) : super(key: key);

  @override
  _registrationState createState() => _registrationState();
}

class _registrationState extends State<registration> {
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

        title: Text("REGISTRATION FORM",
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
              DropdownButtonFormField(
                  value: dropdownValue,
                  items: const [
                    DropdownMenuItem<String>(
                        child: Text('ENROLLMENT FOR THE COURSE'), value: ''),
                    DropdownMenuItem<String>(child: Text('PCM'), value: 'PCM'),
                    DropdownMenuItem<String>(
                        child: Text('MAINS'), value: 'MAINS'),
                    DropdownMenuItem<String>(
                        child: Text('INTERVIEW'), value: 'INTERVIEW'),
                    DropdownMenuItem<String>(child: Text('OPT'), value: 'OPT'),
                    DropdownMenuItem<String>(child: Text('PTS'), value: 'PTS'),
                    DropdownMenuItem<String>(child: Text('MTS'), value: 'MTS'),
                    DropdownMenuItem<String>(
                        child: Text('CSAT'), value: 'CSAT'),
                  ],
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  validator: (value) {
                    if (dropdownValue == '')
                      return 'You must select any one of the field.';
                    return null;
                  },
                  onSaved: (value) {
                    setState(() {
                      fieldValues['Drop Down'] = value.toString();
                    });
                  }),
              GestureDetector(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white10,
                    hintText: 'Date of Birth',



                  ),
                  onTap: (){
                    _pickDate();

                  },
                ),
              ),
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
                      labelText: 'Email',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Field is required.';
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        fieldValues['Email'] = value!;
                      });
                    }),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),

                      labelText: 'Reservation Category',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Field is required.';
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        fieldValues['Reservation Category'] = value!;
                      });

                    }),
              ),


              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Father's Name"
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Field is required.';
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        fieldValues["Father's Name"] = value!;
                      });

                    }),
              ),


              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Father's Mobile No"
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Field is required.';
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        fieldValues["Father's Mobile No"] = value!;
                      });

                    }),
              ),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Mother's Name"
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Field is required.';
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        fieldValues["Mother's Name"] = value!;
                      });

                    }),
              ),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),

                        labelText: "Mother's Mobile No"
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Field is required.';
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        fieldValues["Mother's Mobile No"] = value!;
                      });

                    }),
              ),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Father's Occupation"
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Field is required.';
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        fieldValues["Father's Occupation"] = value!;
                      });

                    }),
              ),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Mother's Occupation"
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Field is required.';
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        fieldValues["Mother's Occupation"] = value!;
                      });

                    }),
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: " House Address"
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty)
                        return 'Field is required.';
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        fieldValues["House Address"] = value!;
                      });

                    }),
              ),
              RadioFormField(callback: setFieldValue),








              /*Text(
                '${dateTime.day} -${dateTime.month}-${dateTime.year}',
                style: const TextStyle(fontSize: 50),
              ),
              ElevatedButton(
                  onPressed: () {
                    showDatePicker(
                        context: context,
                        initialDate: dateTime,
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2300));
                  },

                  child: const Text("Choose Date")) */


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

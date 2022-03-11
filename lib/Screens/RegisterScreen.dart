import 'package:flutter/material.dart';
import 'package:task4/enums/gender.dart';
import 'package:task4/size_config.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final _formKey = GlobalKey<FormState>();
  Gender selectedGender= Gender.male;

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [

            SizedBox(height: 10*10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Name',

                  border: OutlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.person,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10*2,),            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: 'Age',
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(
                    Icons.calendar_today,
                  ),
                ),
              ),
            ),

            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                       selectedGender=Gender.male;
                      });
                      print('he is male');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 10  *15,
                        decoration: BoxDecoration(
                            color: selectedGender==Gender.male? Colors.blue : Colors.blue.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text('Male',
                          style: TextStyle(fontSize: 10*2,

                          ),
                        ),

                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedGender=Gender.female;
                      });
                      print('she is female');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 150,
                        decoration: BoxDecoration(
                            color: selectedGender==Gender.female? Colors.purpleAccent.withOpacity(0.6):Colors.purpleAccent.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text('Female',
                          style: TextStyle(fontSize: 24,

                          ),
                        ),

                      ),
                    ),
                  ),
                )
              ],
            ),



            ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit'),
            ),


          ],
        ),
      ),
    );
  }
}

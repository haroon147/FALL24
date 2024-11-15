import 'package:classweek2/Dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Tabbar2 extends StatelessWidget {
  const Tabbar2({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordlController = TextEditingController();

    final muhammadmkey = GlobalKey<FormState>();

    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: muhammadmkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value){
                  MultiValidator(
                      [
                    EmailValidator(errorText: "Hello Iam error"),
                        MinLengthValidator(7, errorText: 'enter at least 7 digit')

                  ]
                  );
                },
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: const Text('EMail'),
                  hintText: 'Enter Something',
                  suffixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                       color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value){
                  if(value!.isEmpty){
                    return 'Must give some value';
                                      }
                },
                keyboardType: TextInputType.text,
                obscureText: true ,
                decoration: InputDecoration(

                  label: const Text('Password'),
                  hintText: 'Enter Something',
                  suffixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

              ),
              const SizedBox(
                height: 20,
              ),
    ElevatedButton(onPressed: (){
    (muhammadmkey.currentState!.validate());
    },
    child: const Text("Button"))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class LiveTest extends StatelessWidget {
   LiveTest({super.key});
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController salaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Add Employee',style: TextStyle(fontSize: 25),),
    ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
        child: Column(
          children: [
            SizedBox(height: 10,),
            TextFormField(
              controller: nameController,
              style: TextStyle(fontSize: 25),
              decoration: const InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(fontSize: 20),
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15,),
            TextFormField(
              controller: ageController,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 25),
              decoration: const InputDecoration(
                labelText: 'Age',
                labelStyle: TextStyle(fontSize: 20),
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15,),
            TextFormField(
              controller: salaryController,
              style: TextStyle(fontSize: 25),
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Salary',
                labelStyle: TextStyle(fontSize: 20),
                border: UnderlineInputBorder(),
              ),
            ),
            const SizedBox(height: 40,),
            SizedBox(
                height: 50,
                width: 160,
                child: ElevatedButton(onPressed: (){
                  String name = nameController.text.trim();
                  String age = ageController.text.trim();
                  String salary = salaryController.text.trim();

                  if (name.isNotEmpty && age.isNotEmpty && salary.isNotEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("✅ Employee Added")),
                    );

                    print('Name: $name');
                    print('Age: $age');
                    print('Salary: $salary');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("⚠️ Please fill all fields")),
                    );
                  }
                }, child: Text('Add Employee',style:
                TextStyle(fontSize: 16),)))
          ],
        ),
      ),
    );
  }
}

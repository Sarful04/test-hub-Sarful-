import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:test_hub/shared/constants/device_Dimensions.dart';

class AddQuestionScreen extends StatefulWidget {
  const AddQuestionScreen({super.key});

  @override
  State<AddQuestionScreen> createState() => _AddQuestionScreenState();
}

class _AddQuestionScreenState extends State<AddQuestionScreen> {
  late FormGroup form;
  static TextEditingController ans1 = TextEditingController();
  static TextEditingController ans2 = TextEditingController();
  static TextEditingController ans3 = TextEditingController();
  static TextEditingController ans4 = TextEditingController();
  List<Map> checkboxes = [
    {
      'isCheck': false,
      'controller': ans1,
      'fcname': 'answer1',
      'hinttext': 'Answer 1'
    },
    {
      'isCheck': false,
      'controller': ans2,
      'fcname': 'answer2',
      'hinttext': 'Answer 2'
    },
    {
      'isCheck': false,
      'controller': ans3,
      'fcname': 'answer3',
      'hinttext': 'Answer 3'
    },
    {
      'isCheck': false,
      'controller': ans4,
      'fcname': 'answer4',
      'hinttext': 'Answer 4'
    }
  ];
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _createform();
  }

  _createform() {
    form = FormGroup({
      'question': FormControl(validators: [Validators.required]),
      'answer1': FormControl(validators: [Validators.required]),
      'answer2': FormControl(validators: [Validators.required]),
      'answer3': FormControl(validators: [Validators.required]),
      'answer4': FormControl(validators: [Validators.required]),
      'add more': FormArray([])
    });
  }

  _addAnswer() {
    FormArray fm = form.control('add more') as FormArray;
    fm.add(FormGroup({
      'answer5': FormControl(validators: [Validators.required]),
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
          elevation: 5,
          backgroundColor: const Color.fromARGB(255, 132, 195, 250),
          child: const Text(
            '+',
            style: TextStyle(fontSize: 30),
          ),
          onPressed: () {
            _addAnswer();
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: ReactiveForm(
        formGroup: form,
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: DeviceDimensions.deviceHeight(context) / 3,
                  child: ReactiveTextField(
                    maxLines: 15,
                    minLines: 10,
                    formControlName: 'question',
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(width: 5, color: Colors.blue)),
                        hintText: 'Add a question'),
                  ),
                ),
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.white60,
                      Colors.white,
                    ],
                  )),
                  height: DeviceDimensions.deviceHeight(context) / 2.5,
                  child: SingleChildScrollView(
                    child: Column(
                        children: checkboxes.map((ck) {
                      return Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: CheckboxListTile(
                            title: ReactiveTextField(
                              formControlName: ck['fcname'],
                              controller: ck['controller'],
                              decoration: InputDecoration(
                                  hintText: ck['hinttext'],
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                            value: ck['isCheck'],
                            onChanged: (newValue) {
                              setState(() {
                                ck['isCheck'] = newValue;
                              });
                            }),
                      );
                    }).toList()
                        //   ReactiveFormArray(
                        //       formArrayName: 'add more',
                        //       builder: (context, formArray, child) {
                        //         FormArray answer =
                        //             form.control('add more') as FormArray;
                        //         final list = answer.controls
                        //             .map((control) => control as FormGroup)
                        //             .map((currentForm) {
                        //           return ReactiveForm(
                        //               formGroup: currentForm,
                        //               child: Column(
                        //                 children: [
                        //                   Padding(
                        //                     padding: const EdgeInsets.all(8.0),
                        //                     child: Row(
                        //                       children: [
                        //                         ReactiveTextField(
                        //                           formControlName: 'answer5',
                        //                           decoration: InputDecoration(
                        //                               suffixIcon: GestureDetector(
                        //                                   onTap: () {
                        //                                     answer
                        //                                         .remove(currentForm);
                        //                                   },
                        //                                   child: const Icon(
                        //                                     Icons.delete,
                        //                                     color: Colors.black,
                        //                                   )),
                        //                               border:
                        //                                   const OutlineInputBorder(
                        //                                       borderRadius:
                        //                                           BorderRadius.all(
                        //                                               Radius.circular(
                        //                                                   10))),
                        //                               hintText: 'Add New Answer'),
                        //                         ),
                        //                       ],
                        //                     ),
                        //                   )
                        //                 ],
                        //               ));
                        //         });
                        //         return Wrap(
                        //           children: list.toList(),
                        //         );
                        //       }),
                        // ],
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 132, 195, 250),
                          fixedSize: const Size(55, 55),
                          shape: const CircleBorder(), //<-- SEE HERE
                          // padding: const EdgeInsets.all(20),
                        ),
                        onPressed: () {},
                        child: const Icon(Icons.send)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

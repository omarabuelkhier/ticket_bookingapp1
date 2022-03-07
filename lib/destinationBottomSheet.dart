import 'package:flutter/material.dart';

TextEditingController? controller;

class destinationBottomSheet extends StatefulWidget {
  destinationBottomSheet(TextEditingController? _cont) {
    controller = _cont;
  }

  @override
  State<destinationBottomSheet> createState() =>
      _destinationBottomSheetState(controller);
}

String valuet = "";

Object? st;

void setval(String _value) {
  controller?.text = _value;
}

class _destinationBottomSheetState extends State<destinationBottomSheet> {
  _destinationBottomSheetState(TextEditingController? con) {
  }

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      return Container(
        color: Colors.grey[600],
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: SingleChildScrollView(
            child: Column(
              children: [
                RadioListTile(
                  value: 1,
                  groupValue: st,
                  title: Text("Cairo"),
                  onChanged: (val) {
                    setval("Cairo");
                    setState(() {
                      if (st != val) {
                        st = val;
                      }

                    });
                  },
                  activeColor: Colors.red,
                ),
                RadioListTile(
                  value: 2,
                  groupValue: st,
                  title: Text("Banha"),
                  onChanged: (val) {
                    setval("Banha");
                    setState(() {
                      if (st != val) {
                        st = val;
                      }

                    });
                  },
                  activeColor: Colors.red,
                ),
                RadioListTile(
                  value: 3,
                  groupValue: st,
                  title: Text("Aleaxandria"),
                  // subtitle: Text("Radio 1 Subtitle"),
                  onChanged: (val) {
                    setval("Aleaxandria");

                    setState(() {
                      if (st != val) {
                        st = val;
                      }

                    });
                  },
                  activeColor: Colors.red,
                ),
                RadioListTile(
                  value: 4,
                  groupValue: st,
                  title: Text("Matrouh"),
                  onChanged: (val) {
                    setval("Matrouh");

                    setState(() {
                      if (st != val) {
                        st = val;
                      }
                    });
                  },
                  activeColor: Colors.red,
                ),
                RadioListTile(
                  value: 5,
                  groupValue: st,
                  title: Text("Port Said"),
                  onChanged: (val) {

                    setval("Port Said");

                    setState(() {
                      if (st != val) {
                        st = val;
                      }
                    });
                  },
                  activeColor: Colors.red,
                ),
                RadioListTile(
                  value: 6,
                  groupValue: st,
                  title: Text("Mansoura"),
                  onChanged: (val) {
                    setval("Mansoura");

                    setState(() {
                      if (st != val) {
                        st = val;
                      }
                    });
                  },
                  activeColor: Colors.red,
                ),
                RadioListTile(
                  value: 7,
                  groupValue: st,
                  title: Text("Louxor"),
                  // subtitle: Text("Radio 1 Subtitle"),
                  onChanged: (val) {
                    setval("Louxor");

                    setState(() {
                      if (st != val) {
                        st = val;
                      }
                    });
                  },
                  activeColor: Colors.red,
                ),
                ListTile(
                    title: Text(
                      'Submit',
                      textAlign: TextAlign.center,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    }),
              ],
            ),
          ),
        ),
      );
    });
  }
}

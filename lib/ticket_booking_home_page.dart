import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trainticket_booking_app/all_upcomingtrains.dart';
import 'package:trainticket_booking_app/drinks_list.dart';
import 'package:trainticket_booking_app/food_list.dart';
import 'package:launch_review/launch_review.dart';
import 'package:trainticket_booking_app/login_screen.dart';
import 'package:trainticket_booking_app/schedule_Item.dart';
import 'package:trainticket_booking_app/schedule_Item_Container.dart';
import 'package:trainticket_booking_app/sourceBottomSheet.dart';
import 'package:trainticket_booking_app/typeBottomSheet.dart';

import 'booking_train_qr.dart';

class ticketbookinghomepage extends StatefulWidget {
  @override
  _ticketbookinghomepageState createState() => _ticketbookinghomepageState();
}

class _ticketbookinghomepageState extends State<ticketbookinghomepage> {
  int pageindex = 0;
  late PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  bool visible = false;
  int numOfVisibleScheduled = 0;
  var valuechoose;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  final TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();


  schedule_item schedule = schedule_item();
  TextField departureText = TextField();
  TextField arriveText = TextField();
  TextField storeText = TextField();
  TextField typeText = TextField();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: PageView(controller: pageController, children: [
          SingleChildScrollView(
            child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  color: Color(0xff3c4cad),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 4.5,
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.only(left: 16, right: 16, top: 8),
                child: Column(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 64,
                                  width: 64,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border:
                                          Border.all(color: Color(0xffe7e7e7))),
                                  child: Center(
                                    child: Icon(
                                      Icons.fastfood,
                                      color: Color(0xfff9c449),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => foodlist()));
                                  },
                                  child: Text("Food",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black)),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 64,
                                  width: 64,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border:
                                          Border.all(color: Color(0xffe7e7e7))),
                                  child: Center(
                                    child: Icon(
                                      Icons.emoji_food_beverage,
                                      color: Color(0xfff04393),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                drinkslist()));
                                  },
                                  child: Text("Drinks",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black)),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 64,
                                  width: 64,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border:
                                          Border.all(color: Color(0xffe7e7e7))),
                                  child: Center(
                                    child: Icon(
                                      Icons.personal_injury,
                                      color: Color(0xff240e8b),
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => foodlist()));
                                  },
                                  child: Text("Emergency",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black)),
                                ),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.fromLTRB(16, 8, 0, 8),
                child: Column(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Upcoming Train',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    'you have 2 upcoming tickets',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              Container(
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                upcomingtrains()));
                                  },
                                  child: Text("See All",
                                      style:
                                          TextStyle(color: Color(0xff240e8b))),
                                ),
                              ),
                            ],
                          ),
                        )),
                    Expanded(
                      flex: 7,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 1.5,
                            margin: EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffE7E7E7)),
                                borderRadius: BorderRadius.circular(6)),
                            padding: EdgeInsets.all(2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.train,
                                      color: Color(0xfff9c449),
                                    ),
                                    Spacer(),
                                    Text(
                                      '3 Seats',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xfff9c449)),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey[300],
                                  thickness: 1,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Cairo ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text('6 jan 21',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text('3:20',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Color(0xfff9c449),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          " Alexandria",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('6 jan 21',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text('5:45',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.5,
                            margin: EdgeInsets.only(right: 15),
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffE7E7E7)),
                                borderRadius: BorderRadius.circular(6)),
                            padding: EdgeInsets.all(2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.train,
                                      color: Color(0xfff9c449),
                                    ),
                                    Spacer(),
                                    Text(
                                      '3 Seats',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xfff9c449)),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: Colors.grey[300],
                                  thickness: 1,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Cairo ",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text('6 jan 21',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text('3:20',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Color(0xfff9c449),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          " Alexandria",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('6 jan 21',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        Text('5:45',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Top destinations',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text('Recommendations',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Color(0xff240e8b))),
                          ],
                        )),
                    Expanded(
                        flex: 10,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 160,
                                margin: EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                  color: Color(0xff240e8b),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              );
                            })),
                  ],
                ),
              ),
            ]),
          ),
          Scaffold(
            backgroundColor: Colors.grey[300],
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ticketbookinghomepage()));
                },
              ),
              backgroundColor: Color(0xff240e8b),
              title: Text('Search By Station'),
              centerTitle: true,
                actions: <Widget>[
                  PopupMenuButton(
                    // add icon, by default "3 dot" icon
                      icon: Icon(Icons.circle_notifications),
                      itemBuilder: (context){
                        return [
                          PopupMenuItem<int>(
                            value: 0,
                            child:shedule_Item_Container(depart1: controller1.text,arrive1:controller2.text,type1: controller3.text,visible1: true),
                          ),

                        ];
                      },
                      onSelected:(value){
                        if(value == 0){
                          MaterialPageRoute(
                              builder: (context) => booking_train_qr());
                        }
                      }
                  ),
                ]
            ),
            body: ListView(
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text('Departure Station'),
                        Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: departureText = TextField(
                              controller: controller1,
                              autocorrect: true,
                              decoration: InputDecoration(
                                  labelText: '-Select Station',
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  filled: true,
                                  fillColor: Colors.white,
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      showSourceBottomSheet(
                                          context, controller1);
                                      setState(() {
                                        // controller.text= bs.value;
                                      });
                                    },
                                    child: Icon(
                                      Icons.arrow_drop_down_circle_outlined,
                                      color: Colors.black,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30)))),
                            ))
                      ],
                    )),
                SizedBox(height: 2),
                IconButton(
                  icon: Icon(Icons.wifi_protected_setup_rounded),
                  color: Colors.black,
                  onPressed: () {
                    setState(() {
                      if(departureText==departureText&&arriveText==arriveText){
                      storeText=departureText;
                      departureText=arriveText;
                      arriveText=storeText;
                      controller4=controller1;
                      controller1=controller2;
                      controller2=controller4;

                      }
                    });
                  },
                ),
                SizedBox(height: 2),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text('ِِِArrival Station'),
                        Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: arriveText = TextField(
                              controller: controller2,
                              autocorrect: true,
                              decoration: InputDecoration(
                                  labelText: '-Select Station',
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.never,
                                  filled: true,
                                  fillColor: Colors.white,
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      showDestinationBottomSheet(
                                          context, controller2);

                                      setState(() {
                                        //  controller.text= bs.value;
                                      });
                                    },
                                    child: Icon(
                                      Icons.arrow_drop_down_circle_outlined,
                                      color: Colors.black,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30)))),
                            ))
                      ],
                    ),
                ),
                SizedBox(height: 5),

                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text('ِِِTrain Type'),
                      Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: typeText = TextField(
                            controller: controller3,
                            autocorrect: true,
                            decoration: InputDecoration(
                                labelText: '-Select type',
                                floatingLabelBehavior:
                                FloatingLabelBehavior.never,
                                filled: true,
                                fillColor: Colors.white,
                                suffixIcon: InkWell(
                                  onTap: () {
                                    showTypeBottomSheet(
                                        context, controller3);

                                    setState(() {
                                      //  controller.text= bs.value;
                                    });
                                  },
                                  child: Icon(
                                    Icons.arrow_drop_down_circle_outlined,
                                    color: Colors.black,
                                  ),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30)))),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: SizedBox(
                    height: 80,
                    width: 10,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amberAccent),
                          padding:
                              MaterialStateProperty.all(EdgeInsets.all(15)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(600)))),
                      onPressed: () {
                        if (numOfVisibleScheduled == 0) {
                          visible = true;
                          setState(() {
                            schedule = schedule_item(
                                depart: controller1.text,
                                arrive: controller2.text,
                                type: controller3.text,
                                visible: true);
                          });
                        }
                      },
                      child: Icon(
                        Icons.train,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                schedule,
              ],
            ),
          ),
          Scaffold(
            appBar: AppBar(
              leading:IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ticketbookinghomepage()));
                },
              ),
              title: Text(
                'Notifications',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              backgroundColor: Color(0xff240e8b),

            ),
              backgroundColor: Colors.grey[300],
              body: Container(
                width: double.infinity,
                child: ListView(
                    children: [schedule_item(depart: controller1.text,visible: true,)]),
              )),
          Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.privacy_tip_outlined),
                onPressed: () {},
              ),
              backgroundColor: Color(0xff240e8b),
              title: Text(
                'Settings',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
            ),
            backgroundColor: Colors.grey[300],
            body: Column(
              children: [
                Card(
                  child: ListTile(
                    leading: Icon(Icons.format_align_center_outlined),
                    title: Text('Sign Up'),
                    trailing: IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => loginscreen()));
                      },
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.format_align_center_outlined),
                    title: Text('Sign out'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
                Card(
                  child: ListTile(
                    onTap: () {
                      SystemNavigator.pop();
                    },
                    leading: Icon(Icons.exit_to_app),
                    title: Text('Exit'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: IconButton(
                      icon: Icon(Icons.rate_review_outlined),
                      onPressed: () {
                        LaunchReview.launch(
                            androidAppId: "com.example.testapp",
                            iOSAppId: '33443434');
                      },
                    ),
                    title: Text('Give Us Your Feedback'),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageindex,
          onTap: (idx) {
            setState(() {
              pageindex = idx;
            });
            pageController.jumpToPage(idx);
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.confirmation_num_rounded),
                label: " my Ticket"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "Notifications"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "settings"),
          ]),
    );
  }
}

void showSourceBottomSheet(BuildContext context, TextEditingController _cont) {
  sourceBottomSheet bs = sourceBottomSheet(_cont);
  //bs.sourceBottomSheet1(_cont);
  showModalBottomSheet(
      context: context,
      builder: (buildContext) {
        return bs;
        //    return sourceBottomSheet();
      });
}

void showDestinationBottomSheet(
    BuildContext context, TextEditingController _cont) {
  sourceBottomSheet bs = sourceBottomSheet(_cont);
  //bs.sourceBottomSheet1(_cont);
  showModalBottomSheet(
      context: context,
      builder: (buildContext) {
        return bs;
        //    return sourceBottomSheet();
      });
}
void showTypeBottomSheet(
    BuildContext context, TextEditingController _cont) {
  typeBottomSheet bs = typeBottomSheet(_cont);
  //bs.sourceBottomSheet1(_cont);
  showModalBottomSheet(
      context: context,
      builder: (buildContext) {
        return bs;
        //    return sourceBottomSheet();
      });
}

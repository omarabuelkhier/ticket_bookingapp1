import 'package:flutter/material.dart';
import 'package:trainticket_booking_app/booking_train_qr.dart';
import 'package:trainticket_booking_app/departure_station.dart';
import 'package:trainticket_booking_app/schedule_Item_Container.dart';
class schedule_item extends StatefulWidget {
String depart;
String arrive;
String type;
bool visible;
schedule_item({Key? key, this.depart='',this.arrive='',this.type='',this.visible=false}) : super(key: key);
  @override
  State<schedule_item> createState() => _schedule_itemState();
}

class _schedule_itemState extends State<schedule_item> {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.visible,
      child: ListView(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          shedule_Item_Container(depart1: widget.depart,arrive1: widget.arrive,type1: widget.type,visible1: widget.visible),
          shedule_Item_Container(depart1: widget.depart,arrive1: widget.arrive,type1: widget.type,visible1: widget.visible),
          shedule_Item_Container(depart1: widget.depart,arrive1: widget.arrive,type1: widget.type,visible1: widget.visible),
          shedule_Item_Container(depart1: widget.depart,arrive1: widget.arrive,type1: widget.type,visible1: widget.visible),
          shedule_Item_Container(depart1: widget.depart,arrive1: widget.arrive,type1: widget.type,visible1: widget.visible),
        ],
      ),
    );
  }
}

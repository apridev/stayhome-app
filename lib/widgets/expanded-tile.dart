import 'package:flutter/material.dart';
import 'package:homestay_app/template.dart';

class Expandedtile extends StatefulWidget {

  final String text;
  Expandedtile({required this.text});

  @override
  State<Expandedtile> createState() => _ExpandedtileState();
}

class _ExpandedtileState extends State<Expandedtile> {

  late String firstHalf;
  late String secondHalf;
  bool flag = true;

  @override
  void initState(){
    super.initState();
    if(widget.text.length>200){
      firstHalf=widget.text.substring(0, 200);
      secondHalf=widget.text.substring(151, widget.text.length);
    } else {
      firstHalf=widget.text;
      secondHalf="";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.length == ""  ? Text(
        widget.text
      ): Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            flag? firstHalf: widget.text, style: subBlackTextStyle.copyWith(
              fontSize: 12,
              fontWeight: medium,
              height: 1.5
            ),
          ),
          SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: (){
              setState(() {
                flag = !flag;
              });
            },
            child: Row(
              children: [
                Text(
              flag? 'See More' : 'Close Description',
              style: blackTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semiBold
              )
            ),
            Icon(flag? Icons.keyboard_arrow_down_outlined : Icons.keyboard_arrow_up_rounded, color: blackColor,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
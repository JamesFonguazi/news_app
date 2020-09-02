import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 0),
      child: Row(
//        mainAxisAlignment: MainAxisAlignment.center,
//        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(38.0),
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        offset: const Offset(0, 2),
                        blurRadius: 8.0),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 4, bottom: 4),
                  child: TextField(
                    onChanged: (String txt) {},
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search Anything',
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF008080),
              borderRadius: const BorderRadius.all(
                Radius.circular(38.0),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    offset: const Offset(0, 2),
                    blurRadius: 8.0),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: const BorderRadius.all(
                  Radius.circular(32.0),
                ),
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(Icons.search, size: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
//    return Row(
//      mainAxisAlignment: MainAxisAlignment.center,
//      crossAxisAlignment: CrossAxisAlignment.start,
//      children: <Widget>[
//        Container(
//          width: MediaQuery.of(context).size.width * 0.75,
//          height: 64,
//          child: Padding(
//            padding: const EdgeInsets.only(top: 8, bottom: 8),
//            child: Container(
//              decoration: BoxDecoration(
//                color: Colors.white,
//                borderRadius: const BorderRadius.only(
//                  bottomRight: Radius.circular(13.0),
//                  bottomLeft: Radius.circular(13.0),
//                  topLeft: Radius.circular(13.0),
//                  topRight: Radius.circular(13.0),
//                ),
//              ),
//              child: Row(
//                children: <Widget>[
//                  Expanded(
//                    child: Container(
//                      padding: const EdgeInsets.only(left: 16, right: 16),
//                      child: TextFormField(
//                        style: TextStyle(
//                          fontFamily: 'WorkSans',
//                          fontWeight: FontWeight.bold,
//                          fontSize: 16,
////                            color: Colors.blueAccent,
//                        ),
//                        keyboardType: TextInputType.text,
//                        decoration: InputDecoration(
//                          labelText: 'Search for anything',
//                          border: InputBorder.none,
//                          helperStyle: TextStyle(
//                            fontWeight: FontWeight.bold,
//                            fontSize: 16,
//                            color: Colors.grey,
//                          ),
//                          labelStyle: TextStyle(
//                            fontWeight: FontWeight.w600,
//                            fontSize: 16,
//                            letterSpacing: 0.2,
//                            color: Colors.grey,
//                          ),
//                        ),
//                        onEditingComplete: () {},
//                      ),
//                    ),
//                  ),
////                  SizedBox(
////                    width: 60,
////                    height: 60,
////                    child: Icon(Icons.search, color: Colors.grey),
////                  ),
//                ],
//              ),
//            ),
//          ),
//        ),
//        Material(
//          elevation: 5.0,
//          borderRadius: BorderRadius.circular(10.0),
//          child: Icon(
//            Icons.search,
//            color: Colors.black,
//          ),
//        ),
////        const Expanded(
////          child: SizedBox(),
////        )
//      ],
//    );
  }
}

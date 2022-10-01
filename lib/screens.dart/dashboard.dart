import 'package:flutter/material.dart';
import 'package:job_app/screens.dart/profile_details.dart';
import 'package:job_app/widgets/bottom_navigation_bar.dart';


class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Dashboard',
            style: TextStyle(
              color: Color(0xFFFABA52),
              fontSize: 20.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.menu,
                color: Color(0xFFFABA52),
                size: 30.0,
              ),
            )
          ],
          elevation: 0.0,
          backgroundColor: Color(0xFFf3f3f3),
        ),
        extendBody: true,
        backgroundColor: Color(0xFFf3f3f3),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: h * 0.18,
                    width: w * 0.31,
                    child: Column(
                      children: [
                        Container(
                          height: h * 0.13,
                          width: w * 0.25,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/profile_img.png'),
                          )),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Stndard Account',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFFcf1818),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    height: h * 0.18,
                    width: w * 0.33,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'John Doe',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0),
                              ),
                            ),
                            SizedBox(
                              width: 3.0,
                            ),
                            Icon(
                              Icons.check_circle_outline,
                              size: 13,
                            ),
                          ],
                        ),
                        TextButton.icon(
                          // <-- TextButton
                          onPressed: () {},
                          icon: Icon(
                            Icons.laptop,
                            color: Colors.black,
                            size: 13.0,
                          ),
                          label: Text(
                            'Accountant',
                            style:
                                TextStyle(color: Colors.black, fontSize: 10.0),
                          ),
                        ),
                        TextButton.icon(
                          // <-- TextButton
                          onPressed: () {},
                          icon: Icon(
                            Icons.mail,
                            color: Colors.black,
                            size: 13.0,
                          ),
                          label: Text('John@gmail.com',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.0,
                              )),
                        ),
                        TextButton.icon(
                          // <-- TextButton
                          onPressed: () {},
                          icon: Icon(
                            Icons.phone,
                            color: Colors.black,
                            size: 13.0,
                          ),
                          label: Text(
                            '+900000064566',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                        TextButton.icon(
                          // <-- TextButton
                          onPressed: () {},
                          icon: Icon(
                            Icons.location_pin,
                            color: Colors.black,
                            size: 13.0,
                          ),
                          label: Text(
                            'Lagos, California',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //3rd Row
                  Container(
                    height: h * 0.18,
                    width: w * 0.29,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/bag.png',
                                width: w * 0.03,
                                height: h * 0.02,
                                fit: BoxFit.fill,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Job Status',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/available.png',

                          //fit: BoxFit.fill,
                        ),
                        Image.asset(
                          'assets/premium.png',
                          //fit: BoxFit.fill,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                top: 5,
                bottom: 5,
                left: 15,
                right: 15,
              ),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: h * 0.3,
                    width: w * 0.35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.black,
                    ),
                    //color: Colors.black,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.0,
                        ),
                        Icon(
                          Icons.badge_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          'Congratulations',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Micheal!',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: h * 0.05,
                          width: w * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Color(0xFFCF1818),
                          ),
                          child: Center(
                            child: Text(
                              'Complete Profile',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Next Step:',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Add Employment History',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 13.0,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: h * 0.01,
                                width: w * 0.07,
                                //color: Colors.red,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomLeft: Radius.circular(5)),
                                  color: Color(0xFFCF1818),
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                height: h * 0.01,
                                width: w * 0.07,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                height: h * 0.01,
                                width: w * 0.07,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                height: h * 0.01,
                                width: w * 0.07,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      bottomRight: Radius.circular(5)),
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      children: [
                        Container(
                          height: h * 0.147,
                          width: w * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Color(0xFFFFA00A),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 15.0,
                              left: 7.0,
                              right: 7.0,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.account_box,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Jobs',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.0,
                                      ),
                                    ),
                                    Text(
                                      '50',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          height: h * 0.147,
                          width: w * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Color(0xFFCF1818),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 15.0,
                              left: 7.0,
                              right: 7.0,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.message_outlined,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        'Interviews',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10.0,
                                        ),
                                      ),
                                      Text(
                                        '20',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: h * 0.3,
                    width: w * 0.23,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.green,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Column(children: [
                        Icon(
                          Icons.real_estate_agent,
                          color: Colors.white,
                          size: 40.0,
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          'Companies',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          '45',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 17.0,
                right: 30.0,
                top: 10,
                bottom: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended Jobs',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Image.asset(
                    'assets/show_more.png',
                    width: w * 0.15,
                    height: h * 0.05,
                    //fit: BoxFit.fill,
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: h * 0.25,
              width: w * 0.93,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 7.0),
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'UX UI Designer',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(
                              height: 7.0,
                            ),
                            Text(
                              'Intuit',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: h * 0.11,
                                  width: w * 0.009,
                                  color: Colors.orange,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '\$30,000 to \$40,000',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                    Text(
                                      'Permanent, full-time',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                    Text(
                                      'Lagos',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: h * 0.22,
                        width: w * 0.30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.lightBlue,
                        ),
                        child: Center(
                          child: Text(
                            'intuit.',
                            style: TextStyle(
                                fontSize: 30,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w900,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ]),
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Padding(
              padding: const EdgeInsets.only(
                left: 17.0,
                right: 30.0,
                top: 10,
                bottom: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Scheduled Interview',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Image.asset(
                    'assets/show_more.png',
                    width: w * 0.15,
                    height: h * 0.05,
                    //fit: BoxFit.fill,
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: h * 0.33,
              width: w * 0.93,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 7.0),
                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'UX UI Designer',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(
                                  height: 7.0,
                                ),
                                Text(
                                  'Intuit',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: h * 0.14,
                                      width: w * 0.009,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(
                                      width: 5.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Saturday 26 Oct 2021',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 6.0,
                                        ),
                                        Text(
                                          '10:00 AM - 5:00 PM',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 6.0,
                                        ),
                                        Text(
                                          'Google Meetings',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 6.0,
                                        ),
                                        Text(
                                          'meet.google.com/jht-gvv',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: h * 0.22,
                            width: w * 0.30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.lightBlue,
                            ),
                            child: Center(
                              child: Text(
                                'intuit.',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ]),
                    Row(
                      children: [
                        TextButton.icon(
                          // <-- TextButton
                          onPressed: () {},
                          icon: Icon(
                            Icons.check,
                            color: Colors.green,
                            size: 22.0,
                          ),
                          label: Text(
                            'Interested',
                            style:
                                TextStyle(color: Colors.black, fontSize: 14.0),
                          ),
                        ),
                        TextButton.icon(
                          // <-- TextButton
                          onPressed: () {},
                          icon: Icon(
                            Icons.cancel_presentation_sharp,
                            color: Colors.red,
                            size: 20.0,
                          ),
                          label: Text(
                            'Not Interested',
                            style:
                                TextStyle(color: Colors.black, fontSize: 14.0),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profile_details()));
              },
              child: Image.asset(
                'assets/job_alerts.png',
                height: h * 0.13,
                width: w * 0.5,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: h * 0.1,
            ),
          ]),
        ),
        bottomNavigationBar: Bottom_bar());
  }
}

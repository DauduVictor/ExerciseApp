import 'package:flutter/material.dart';
import 'package:untitled1/components/profile_textfield_divider.dart';
import 'package:untitled1/components/round_box_icon.dart';
import 'refactoredWidgets.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class Profile extends StatefulWidget {

  static const String id = 'profile';
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            padding: const EdgeInsets.fromLTRB(25, 22.9, 0.0, 8.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_outlined,
                          color: Colors.black,
                          size: 31.0,
                        ),
                      ),
                      Container(
                        width: 50.0,
                        height: 50.0,
                        child: const Icon(
                          Icons.done_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF01B8FF),
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF91B8FF),
                              blurRadius: 1.0,
                            )
                          ]
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///account text
                      const Text(
                        'Account',
                        style: TextStyle(
                          fontSize: 44.7,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      ///photo
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Photo',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.8,
                              ),
                            ),
                            const SizedBox(width: 73),
                            Column(
                              children: [
                                ReusableRoundedIcon(
                                  size: 50.0,
                                  height: 87.0,
                                  width: 90.0,
                                  boxColor: const Color(0xFFF5F4F7),
                                  iconColor: const Color(0xFFB7BCC9),
                                  boxIcon: IconlyBold.profile,
                                ),
                                const SizedBox(height: 22.5,),
                                const Text(
                                  'Upload Image',
                                  style: TextStyle(
                                    color: Color(0xFF01B8FF),
                                    fontSize: 21,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      ///name
                      Container(
                        child: Column(
                          children: [
                            ReuseableField(
                              fieldTitle: 'Name',
                              fieldLeading: 'Daudu',
                            ),
                            const SizedBox(height: 10.0),
                            ReusableDivider(),
                          ],
                        ),
                      ),
                      ///gender
                      Row(
                        children: [
                          const Text(
                            'Gender',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.8,
                            ),
                          ),
                          SizedBox(width: 53,),
                          Row(
                            children: [
                              Column(
                                children: [
                                  ReusableRoundedIcon(
                                    size: 30.0,
                                    boxColor: const Color(0xFF551EFE),
                                    iconColor: Colors.white,
                                    boxIcon: Icons.male_sharp,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 4.5),
                                    child: Text(
                                      'male',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 20.0),
                              Column(
                                children: [
                                  ReusableRoundedIcon(
                                    size: 30.0,
                                    boxColor: const Color(0xFFF6F5F8),
                                    iconColor: const Color(0xFFB7BCC9),
                                    boxIcon: Icons.female_sharp,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 4.5),
                                    child: Text(
                                      'female',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      ///age
                      Container(
                        child: Column(
                          children: [
                            ReuseableField(
                              fieldTitle: 'Age',
                              fieldLeading: '   28',
                            ),
                            const SizedBox(height: 10.0),
                            ReusableDivider(),
                          ],
                        ),
                      ),
                      ///email
                      Container(
                        child: Column(
                          children: [
                            ReuseableField(
                              fieldTitle: 'Email',
                              fieldLeading: 'Daudu.victor173@gmail.com',
                            ),
                            const SizedBox(height: 10.0,),
                            ReusableDivider(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}

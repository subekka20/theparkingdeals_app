import 'package:flutter/material.dart';
import 'package:theparkingdeals/core/theme_data/color_theme.dart';
import 'package:theparkingdeals/modules/more_screen/widgets/list_title.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

// logout() {
//     // authDataSources.clearUserData();
//     CustomNavigationHelper.router
//         .pushReplacement(CustomNavigationHelper.loginPath);
//   }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF000080), // Navy blue background
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 16, top: 100),
              child: Row(
                children: [
                  // Circle Avatar with Image
                  const CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                          'assets/images/generic-avatar.svg'), // Use your image path
                    ),
                  ),
                  const SizedBox(
                      width: 12), // Adjust spacing between avatar and text
                  // Message Container with text
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 10), // Padding for text inside container
                        decoration: BoxDecoration(
                          color: Colors.grey
                              .shade300, // Set container background color similar to surfaceDisabled
                          borderRadius: BorderRadius.circular(
                              20), // Adjust corner radius to match the screenshot
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                  text: 'Hi  ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: Colors
                                            .black, // Text color, adjust as needed
                                      ),
                                  children: const [
                                    TextSpan(
                                      text: 'Shaki',
                                      style: TextStyle(color: primaryDefault),
                                    ),
                                  ],
                                ),

                                overflow: TextOverflow
                                    .ellipsis, // Ensures text doesn't overflow
                              ),
                            ), // Space between text and emoji
                            const Icon(
                              Icons
                                  .waving_hand, // Use Flutter's built-in icons or an emoji
                              color: Colors.amber, // Adjust emoji color
                              size: 20, // Adjust size to match the screenshot
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTiles(
              iconPath: 'assets/icons/Home.svg',
              name: 'Home',
              onTap: () {
                Navigator.pushNamed(context, '/getQuote');
              },
            ),
            ListTiles(
              iconPath: 'assets/images/Shape.svg',
              name: 'Profile',
              onTap: () {
                Navigator.pushNamed(context, '/myProfile');
              },
            ),
            ListTiles(
              iconPath: 'assets/icons/List.svg',
              name: 'My Bookings',
              onTap: () {
                Navigator.pushNamed(context, '/myBooking');
              },
            ),
            ListTiles(
              iconPath: 'assets/icons/Home.svg',
              name: 'Contact',
              onTap: () {
                Navigator.pushNamed(context, '/contact-screen');
              },
            ),
            ListTiles(
              iconPath: 'assets/icons/Log out.svg',
              name: 'Log Out',
              onTap: () {
                Navigator.pushNamed(context, '/signIn');
                // BottomAlertPopup.popup(
                //   context: context,
                //   options: [
                //     PopupOption(
                //       label: 'Logout',
                //       labelColor: const Color.fromRGBO(255, 59, 48, 1),
                //       onTap: () {
                //         logout();
                //       },
                //     ),
                //   ],
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}

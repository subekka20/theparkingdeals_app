import 'package:flutter/material.dart';

class BottomAlertPopup {
  static void popup({
    required BuildContext context,
    required List<PopupOption> options,
    VoidCallback? onCancel,
  }) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
      ),
      builder: (BuildContext context) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Container for options
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:  const Color.fromARGB(255, 72, 72, 72),
                          borderRadius: BorderRadius.circular(14.0),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4.0,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            for (var option in options)
                              Column(
                                children: [
                                  ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    title: Text(
                                      option.label,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: option.labelColor ??
                                              const Color(0xFF027aff),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                    onTap: () {
                                      // CustomNavigationHelper.router.pop();
                                      // option.onTap();
                                    },
                                  ),
                                  if (option != options.last)
                                    const Divider(
                                      height: 0.1,
                                      color:Color.fromARGB(
                                              255, 72, 72, 72),
                                    ), // Add Divider except for the last item
                                ],
                              ),
                          ],
                        )),
                    const SizedBox(height: 10.0),
                    // Container for cancel
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 72, 72, 72),
                        borderRadius: BorderRadius.circular(14.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4.0,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: const Center(
                          child: Text(
                            'Cancel',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xFF027aff),
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ),
                        onTap: () {
                          // AppRoute.router.pop();
                          // if (onCancel != null) {
                          //   onCancel();
                          // }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }
  }

class PopupOption {
  final String label;
  final VoidCallback onTap;
  final Color? labelColor;

  PopupOption({required this.label, required this.onTap, this.labelColor});
}

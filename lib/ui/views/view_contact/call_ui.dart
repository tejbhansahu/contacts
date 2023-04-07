import 'package:contacts/core/constant/colors.dart';
import 'package:contacts/core/constant/styles.dart';
import 'package:flutter/material.dart';

class CallUi extends StatelessWidget {
  const CallUi({super.key, required this.contact, required this.name});

  final String name, contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
              top: 80.0,
              left: 0.0,
              right: 0.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      height: 100.0,
                      width: 100.0,
                      margin: const EdgeInsets.only(bottom: 20.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              Theme.of(context).colorScheme.secondaryContainer),
                      child: const Center(
                        child: Icon(Icons.person, size: 40.0),
                      )),
                  Text(name, style: Styles.tsBlackRegular24),
                  Text(contact, style: Styles.tsBlackRegular14)
                ],
              )),
          Positioned(
              bottom: 60,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.mic)),
                          Text('Mic',
                              style: Styles.tsGreyRegular14.copyWith(
                                  fontSize: 16,
                                  color: AppColors.backgroundColor,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.volume_mute)),
                          Text('Speaker',
                              style: Styles.tsGreyRegular14.copyWith(
                                  fontSize: 16,
                                  color: AppColors.backgroundColor,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.videocam)),
                          Text('Video',
                              style: Styles.tsGreyRegular14.copyWith(
                                  fontSize: 16,
                                  color: AppColors.backgroundColor,
                                  fontWeight: FontWeight.w500))
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.message)),
                          Text('Chat',
                              style: Styles.tsGreyRegular14.copyWith(
                                  fontSize: 16,
                                  color: AppColors.backgroundColor,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.person_add)),
                          Text('Contact',
                              style: Styles.tsGreyRegular14.copyWith(
                                  fontSize: 16,
                                  color: AppColors.backgroundColor,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.mail)),
                          Text('Mail',
                              style: Styles.tsGreyRegular14.copyWith(
                                  fontSize: 16,
                                  color: AppColors.backgroundColor,
                                  fontWeight: FontWeight.w500))
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                        height: 70.0,
                        width: 70.0,
                        margin: const EdgeInsets.only(bottom: 20.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.redAccent.withOpacity(0.9)),
                        child: const Center(
                          child: Icon(
                            Icons.call_end,
                            size: 40.0,
                            color: AppColors.white,
                          ),
                        )),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

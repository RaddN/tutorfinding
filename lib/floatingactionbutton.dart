import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FloatingActionbutton extends StatefulWidget {
  const FloatingActionbutton({super.key});

  @override
  State<FloatingActionbutton> createState() => _FloatingActionbuttonState();
}

class _FloatingActionbuttonState extends State<FloatingActionbutton> with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;

  @override
  void initState(){

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 260),
    );

    final curvedAnimation = CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);
    super.initState();


  }
  @override
  Widget build(BuildContext context) {
    return FloatingActionBubble(
      // Menu items
      items: <Bubble>[
        // Floating action menu item
        Bubble(
          title:"Settings",
          iconColor :Colors.white,
          bubbleColor : Colors.blue,
          icon:Icons.settings,
          titleStyle:const TextStyle(fontSize: 16 , color: Colors.white),
          onPress: () {
            _animationController.reverse();
          },
        ),
        // Floating action menu item
        Bubble(
          title:"Profile",
          iconColor :Colors.white,
          bubbleColor : Colors.blue,
          icon:Icons.people,
          titleStyle:const TextStyle(fontSize: 16 , color: Colors.white),
          onPress: () {
            _animationController.reverse();
          },
        ),
        //Floating action menu item
        Bubble(
          title:"Home",
          iconColor :Colors.white,
          bubbleColor : Colors.blue,
          icon:Icons.home,
          titleStyle:const TextStyle(fontSize: 16 , color: Colors.white),
          onPress: () {
            _animationController.reverse();
          },
        ),
      ],

      // animation controller
      animation: _animation,

      // On pressed change animation state
      onPress: () => _animationController.isCompleted
          ? _animationController.reverse()
          : _animationController.forward(),

      // Floating Action button Icon color
      iconColor: Colors.white,

      // Flaoting Action button Icon
      iconData: Icons.add,
      backGroundColor: Colors.teal,
    );
  }
}
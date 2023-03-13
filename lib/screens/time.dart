import 'package:flutter/material.dart';
import 'package:chatbot_app_2/utilities/color.dart';

class Time extends StatefulWidget {
  const Time({super.key});

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {
  late String selectedRadioTile;
  @override
  void initState() {
    super.initState();
    selectedRadioTile = '';
  }
setSelectedRadioTile( String val){
setState((){
  selectedRadioTile=val;
  }

  );
}
@override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('CHOOSE A CHECK-IN TIME',
            style: TextStyle(color: AppColors.buttonText)),
        const Text('A chat a day keeps the mind free',
            style: TextStyle(color: AppColors.buttonText)),
        RadioListTile(
          value: 'Morning',
          groupValue: selectedRadioTile,
          onChanged: (val) => {
          setSelectedRadioTile(val!),
          print('Time: $val')
          },
          title: const Text('Morning',
              style: TextStyle(color: AppColors.buttonText)),

          subtitle: const Text('6:00 AM - 10: AM',
              style: TextStyle(color: AppColors.buttonText)),
          selected:true,

          // activeColor: Colors.blue,
        ),
        RadioListTile(
          value: 'Day',
          groupValue: selectedRadioTile,
          onChanged: (val) => {
          setSelectedRadioTile(val!),
                    print('Time: $val')
},
          title:
              const Text('Day', style: TextStyle(color: AppColors.buttonText)),
          subtitle: const Text('10:00 AM - 5:00 PM',
              style: TextStyle(color: AppColors.buttonText)),
          // activeColor: Colors.blue,
                    selected:false,

        ),
        RadioListTile(
          value: 'Evening',
          groupValue: selectedRadioTile,
          onChanged: (val) => {
          setSelectedRadioTile(val!),
                    print('Time: $val')
},
          title: const Text('Evening',
              style: TextStyle(color: AppColors.buttonText)),
          subtitle: const Text('5:00 PM - 8:00 PM',
              style: TextStyle(color: AppColors.buttonText)),
          selected:false,

          // activeColor: Colors.blue,
        ),
        RadioListTile(
          value: 'Night',
          groupValue: selectedRadioTile,
          onChanged: (val) => {
          setSelectedRadioTile(val!),
                    print('Time: $val')
},
          title: const Text('Night',
              style: TextStyle(color: AppColors.buttonText)),
          subtitle: const Text('8:00 PM - 11: PM',
              style: TextStyle(color: AppColors.buttonText)),
          // activeColor: Colors.blue,
                    selected:false,

        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              // ignore: avoid_print
              onPressed: () async => print('Yey!'),
              style: TextButton.styleFrom(
                  backgroundColor: AppColors.button,
                  fixedSize: const Size(227, 61),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),

              child: const Text('Next',
                  style: TextStyle(color: AppColors.buttonText)),
            )),
      ],
    ));
  }
}

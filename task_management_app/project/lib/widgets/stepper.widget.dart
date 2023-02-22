import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample_flutter_project/widgets/cards/wide-card.widget.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({super.key});

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _index = 0;
  final List<Map<String, dynamic>> data = [
    {
      "title": "Meeting",
      "time": "09:00 AM",
      "subtitle": "Edit icons for Navi Project",
      "participants": [
        "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
        "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
        "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
        "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
        "https://images.unsplash.com/photo-1658932447775-dd78d1e7c369?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG11Z3Nob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=2000&q=60"
      ],
    },
    {
      "title": "Icon Set",
      "time": "11:00 AM",
      "subtitle": "Discuss team tasks for the day",
      "participants": [
        "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
        "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
        "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
        "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
        "https://images.unsplash.com/photo-1658932447775-dd78d1e7c369?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG11Z3Nob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=2000&q=60"
      ],
    },
    {
      "title": "Make prototypes",
      "time": "12:00 PM",
      "subtitle": "Make and send prototypes to the client.",
      "participants": [
        "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
        "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
        "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
        "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
        "https://images.unsplash.com/photo-1658932447775-dd78d1e7c369?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG11Z3Nob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=2000&q=60"
      ],
    },
    {
      "title": "Check work",
      "time": "02:00 PM",
      "subtitle": "Check out the work of the new junior designer.",
      "participants": [
        "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
        "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
        "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
        "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
        "https://images.unsplash.com/photo-1658932447775-dd78d1e7c369?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG11Z3Nob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=2000&q=60"
      ],
    },
    {
      "title": "Landing page",
      "time": "02:50 PM",
      "subtitle": "Start work on landing page Covid-19.",
      "participants": [
        "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
        "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
        "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
        "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
        "https://images.unsplash.com/photo-1658932447775-dd78d1e7c369?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG11Z3Nob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=2000&q=60"
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: index == _index ? 28.sp : 18.sp,
                        padding: EdgeInsets.all(3.sp),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 3.sp,
                              style: BorderStyle.solid),
                        ),
                        child: index == _index
                            ? Container(
                                height: 16.sp,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                ),
                              )
                            : Container(),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Expanded(
                        child: Container(
                          // height: 100.sp,
                          width: 3.sp,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      SizedBox(
                        height: 10.sp,
                      ),
                    ],
                  )),
              Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.only(bottom: 60.sp),
                  child: GestureDetector(
                    onTap: () => setState(() {
                      _index = index;
                    }),
                    child: WideCardWidget(
                      cardData: data[index],
                      isActive: index == _index,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      itemCount: data.length,
    );
  }
}

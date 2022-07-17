import 'package:flutter/material.dart';
import 'package:web_app/pages/dashboard/widgets/table_header.dart';
import 'package:web_app/shared/app_colors.dart';
import 'package:web_app/shared/app_responsive.dart';

/*
  * Table & TableRow
  * Irreqular row lenght? all cells should have same nums of items
*/

class TableOfEmpData extends StatefulWidget {
  TableOfEmpData({Key? key}) : super(key: key);

  @override
  State<TableOfEmpData> createState() => _TableOfEmpDataState();
}

class _TableOfEmpDataState extends State<TableOfEmpData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Employees Data',
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 22,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColor.mainColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  'Go To Table',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColor.black,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              // table head
              TableRow(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                ),
                children: [
                  TableHeader(
                    text: 'Emp Name',
                  ),
                  //Responsive
                  if (!AppResponsive.isMobile(context))
                    TableHeader(
                      text: 'Position',
                    ),
                  TableHeader(
                    text: 'Status',
                  ),
                  // Responcive
                  if (AppResponsive.isDesktop(context))
                    TableHeader(
                      text: '',
                    ),
                ],
              ),

              // table data
              // make it as method, call it with context to work
              tableRaw(
                context,
                name: 'M.Elrayah',
                image: 'assets/user2.jpg',
                position: 'Programmed',
                status: 'Active',
              ),
              tableRaw(
                context,
                name: 'M.Elrayah',
                image: 'assets/user2.jpg',
                position: 'Programmed',
                status: 'Active',
              ),
              tableRaw(
                context,
                name: 'M.Elrayah',
                image: 'assets/user2.jpg',
                position: 'Programmed',
                status: 'Active',
              ),
              tableRaw(
                context,
                name: 'M.Elrayah',
                image: 'assets/user2.jpg',
                position: 'Programmed',
                status: 'Active',
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('View 4 from 40'),
                  Text(
                    'View All',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
          )
        ],
      ),
    );
  }

// we extract it as method, just give it variables
// we should start with context & call it also
  TableRow tableRaw(context, {name, image, position, status}) {
    return TableRow(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image.asset(
                  image,
                  width: 30,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(name),
            ],
          ),
        ),
        //Responsive
        if (!AppResponsive.isMobile(context)) Text(position),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.mainColor,
              ),
              height: 10,
              width: 10,
            ),
            SizedBox(
              width: 10,
            ),
            Text(status),
          ],
        ),
        //Responsive
        if (AppResponsive.isDesktop(context))
          Image.asset(
            'assets/more.png',
            color: Colors.grey,
            height: 30,
          ),
      ],
    );
  }
}

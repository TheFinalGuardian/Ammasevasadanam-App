/*
class LogPageNoScroll extends StatelessWidget {
  const LogPageNoScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Log Page"))),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(width: 20),
              Text("Select Type of Log: "),
              SizedBox(
                width: 10,
              ),
              DropDownMenuTypeOfLog(),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0),
            child: Category(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0),
            child: Particulars(),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10.0),
                child: Text("VCH Type: "),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10.0),
                child: VchType(),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 48.0, top: 10.0),
            child: VchNum(),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10.0),
                child: Text("₹"),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, top: 10.0),
                child: Amount(),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 25.0),
              child: Submit(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0),
            child: Text("Edit Added Entries:"),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0),
            child: AddedMonthlyEntriesList(),
          ),
        ],
      ),
    );
  }
}
*/
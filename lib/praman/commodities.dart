import 'package:flutter/material.dart';

class Commoditiy extends StatefulWidget {
  const Commoditiy({Key? key}) : super(key: key);

  @override
  State<Commoditiy> createState() => _CommoditiyState();
}

class _CommoditiyState extends State<Commoditiy> {
  List<bool>? _value;

  @override
  void initState() {
    super.initState();
    _value = List<bool>.filled(itemDetails.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            productTitle(),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Vegetables",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                      fontSize: 20)),
            ),
            Expanded(child: productGrid()),
          ],
        ),
      ),
    );
  }

  Widget productTitle() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                iconSize: 20,
                color: Colors.blue,
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {},
              ),
              const SizedBox(width: 50),
              const Text("Select Your Commodities",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.blue,
                      fontSize: 20))
            ],
          ),
          const SizedBox(height: 20),
          const Text("You can select more than one commodity",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey)),
          const SizedBox(height: 10),
          SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(
                    color: Color(0xffDAEAF1),
                    width: 1.0,
                  ),
                ),
                hintText: 'Avocada',
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget productGrid() {
    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(25),
        crossAxisSpacing: 25,
        mainAxisSpacing: 25,
        crossAxisCount: 2,
        children: List.generate(itemDetails.length, (index) {
          ItemDetails itemDetailsData = itemDetails[index];
          return itemData(itemDetailsData, index);
        }));
  }

  Widget itemData(ItemDetails itemDetailsData, int index) {
    return Container(
      decoration: BoxDecoration(
        color: _value![index] ? const Color(0xffE8F9FD) : Colors.white,
        border: Border.all(
            color: _value![index] ? Colors.lightBlue : Colors.transparent),
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(3, 3),
            blurRadius: 5,
          )
        ],
      ),
      child: Theme(
        data: ThemeData(
          checkboxTheme: CheckboxThemeData(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
          ),
        ),
        child: ListTileTheme(
          contentPadding: EdgeInsets.zero,
          child: CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            autofocus: false,
            activeColor: Colors.blue,
            checkColor: Colors.white,
            selected: _value![index],
            value: _value![index],
            onChanged: (bool? value) {
              setState(() {
                _value![index] = value!;
              });
            },
            title: Container(
              padding: const EdgeInsets.only(top: 50, right: 40),
              child: Image(
                height: 40,
                image: AssetImage(itemDetailsData.image ?? ''),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                itemDetailsData.name ?? '',
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black54),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<ItemDetails> itemDetails = [
  ItemDetails('images/tomato.png', 'Tomato'),
  ItemDetails('images/potato.png', 'Potato'),
  ItemDetails('images/garlic.png', 'Onion'),
  ItemDetails('images/ginger.png', 'Maize'),
];

class ItemDetails {
  String? image;
  String? name;

  ItemDetails(this.image, this.name);
}

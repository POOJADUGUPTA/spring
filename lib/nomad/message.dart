import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: const Color(0xff00A99D),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Image(height: 60, image: AssetImage("images/nomad.png")),
              const SizedBox(height: 15),
              const Text(
                'Lorem ipsum dolor sit amet, consecrated adipiscing elit. Maecenas eu tristique justo. Sed vehicula felis ut lacus convallis, in feugiat leo rhoncus.\n Nam pharetra ornare enim. Proin et pretium sem. Phasellus euismod augue vel ex placerat blandit. Sed molestie at sem in faucibus. Praesent eu \n tincidunt dolor, ac viverra metus. Nulla lacinia purus arcu, non gravida leo fermentum eget. Mauris dignissim orci ac nibh tincidunt malesuada.\n Nulla mi nulla, sollicitudin quis ullamcorper sit amet, fringilla aliquam orci. Vivamus pellentesque pulvinar luctus. Nullam lacinia massa Quis \n scelerisque sagittis. Proin ullamcorper, Metus vel blandit posuere, sem eros feugiat dolor, id sagittis ex nisl quis lacus. Morbi neque elit, Semper \n                                                                                            pretium auctor eu, ornare eu dui\n\n  Morbi orci ligula, tincidunt quis faucibus quis, auctor euismod risus. Aenean varius tempus orci, eu dignissim lacus Euismod at. Sed Tincidunt Nec \n     Risus nec aliquam. Aliquam vehicula non leo a dictum. Donec est augue, lacinia a ullamcorper at, mattis in diam. Praesent maximus consequat \n  Ligula, et placerat diam euismod a. Donec auctor elit id felis malesuada condimentum. Vivamus ut sodales mi, ac egestas sapien. Duis elementum \n                                                                                                                magna risus.\n\n Vestibulum varius leo vel justo commodo sollicitudin. Etiam eleifend libero non turpis rhoncus, a venenatis dolor varius. Nullam eget sapien quis ipsum rhoncus feugiat eget eget velit. Suspendisse facilisis elit tortor, et pulvinar sem pharetra at. Nulla viverra risus justo, id ullamcorper libero \n hendrerit a. Donec suscipit arcu leo, sed feugiat est feugiat vitae. Vivamus gravida congue lacus a congue. Aliquam auctor tempus odio, Non\n                                                                                                    Dictum sem vestibulum A.\n\n Proin sem nisi, condimentum ut risus et, auctor dignissim neque. Curabitur nec ex a nisi semper semper. Proin orci nunc, ultricies dictum odio non,\n     Rutrum sodales dui. Maecenas ultricies et nisi at feugiat. Sed non quam hendrerit, facilisis nulla vitae, rutrum est. In dictum purus ut Cursus \n                                 Rhoncus. Nam eget suscipit tortor, at fringilla nulla. Integer pellentesque erat interdum auctor elementum.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  letterSpacing: 1.2,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 15),
              acceptButton("Accept"),
              const SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }

  Widget acceptButton(String title) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.313,
      height: 32,
      child: Center(
        child: GestureDetector(
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) => dialog(context));
          },
          child: const Text("Accept",
              style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff00A99D),
                  fontWeight: FontWeight.w900)),
        ),
      ),
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 4,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(5))),
    );
  }

  Widget okButton(String title) {
    return Container(
      margin: const EdgeInsets.only(top: 28.0),
      width: MediaQuery.of(context).size.width * 0.113,
      height: 32,
      child: Center(
        child: Text(
          title,
          maxLines: 1,
          style: const TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
        ),
      ),
      decoration: const BoxDecoration(
          color: Color(0xff00A99D),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              blurRadius: 4,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }

  Widget dialog(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      insetPadding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 6),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.671,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff00A99D)),
                      borderRadius: BorderRadius.circular(20)),
                  margin: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(bottom: 10, top: 20),
                        width: MediaQuery.of(context).size.width * 0.437,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "The Secure Connection",
                              hintStyle: TextStyle(
                                fontSize: 20,
                                color: Color(0xffC4C4C4),
                              )),
                        ),
                      ),
                      Container(
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: okButton("OK"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              closeButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget closeButton() {
    return Positioned(
      right: 5,
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.0082,
              vertical: MediaQuery.of(context).size.height * 0.016),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const CircleAvatar(
              radius: 15,
              child: Icon(
                Icons.close,
                size: 24,
                color: Colors.white,
              ),
              backgroundColor: Color(0xff00A99D),
            ),
          ),
        ),
      ),
    );
  }
}

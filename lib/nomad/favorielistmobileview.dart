import 'package:flutter/material.dart';
import 'package:spring/workspace_api/workspace_response.dart';

class FavoriteListMobileView extends StatefulWidget {
  final List<Workspaces>? workSpaces;
  const FavoriteListMobileView({this.workSpaces});

  @override
  State<FavoriteListMobileView> createState() => _FavoriteListMobileViewState();
}

class _FavoriteListMobileViewState extends State<FavoriteListMobileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00A99D),
      body: SafeArea(
        child: Column(
          children: [
            topLogo(),
            Expanded(
              child: ListView.builder(
                  itemCount: widget.workSpaces?.length ?? 0,
                  itemBuilder: (BuildContext context, int index) {
                    Workspaces workspaces = widget.workSpaces![index];
                    return GestureDetector(
                        // onTap: () {},
                        child: favoriteList(
                            workspaces.siteDetails?.sitePhotoImage![0].siteImage
                                    ?.url ??
                                '',
                            "Recommended",
                            (workspaces.reviews != null &&
                                    workspaces.reviews!.isNotEmpty)
                                ? workspaces.reviews![0].overAllRating ?? ''
                                : "0",
                            workspaces.price?.totalPrice ?? ""));
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Widget topLogo() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Image(height: 40, image: AssetImage("images/nomad.png")),
          Icon(Icons.menu, size: 25, color: Colors.white),
        ],
      ),
    );
  }

  Widget favoriteList(
      String url, String recommanded, String reviews, String price) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.020,
        left: MediaQuery.of(context).size.width * 0.150,
        right: MediaQuery.of(context).size.width * 0.150,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image(fit: BoxFit.fitWidth, image: AssetImage(url)),
        const SizedBox(height: 5),
        const Text("Office Building with ease of access Pantry",
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Color(0xffC4C4C4))),
        const SizedBox(height: 5),
        const Text("Centrally Located Modern\nWorkspaces",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xffFFFFFF))),
        const SizedBox(height: 5),
        const Text(
            "12 Desks | 2 Boardrooms | 5 Hangout Booths Wi-Fi |\n Pantry | Air conditioning",
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Color(0xffC4C4C4))),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 20,
              decoration: BoxDecoration(
                color: const Color(0xff00A99D),
                border: Border.all(color: const Color(0xffC4C4C4)),
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.20),
                    blurRadius: 4,
                    offset: Offset(0, 4), // changes position of shadow
                  ),
                ],
              ),
              child: MaterialButton(
                onPressed: () {},
                child: Text(recommanded,
                    style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffC4C4C4))),
              ),
            ),
            const Text("22.30 AUD / hour",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Color(0xffC4C4C4)))
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Icons.star_rate, color: Color(0xffFFFFFF), size: 15),
                const SizedBox(width: 5),
                Text(double.parse(reviews).toStringAsFixed(2),
                    style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffC4C4C4))),
              ],
            ),
            Text(price,
                style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: Color(0xffC4C4C4)))
          ],
        )
      ]),
    );
  }
}

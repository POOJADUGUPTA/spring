import 'package:flutter/material.dart';
import 'package:spring/post_api/emppost.dart';
import 'package:spring/workspace_api/workspace_response.dart';

class WorkSpaceDetails extends StatefulWidget {
  const WorkSpaceDetails({Key? key}) : super(key: key);

  @override
  State<WorkSpaceDetails> createState() => _WorkSpaceDetailsState();
}

class _WorkSpaceDetailsState extends State<WorkSpaceDetails> {
  WorkspaceResponse? nomadresponse;
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();
    getworkspaceData();
  }

  getworkspaceData() async {
    nomadresponse = await UserService().workspace();
    print(nomadresponse);
    if (nomadresponse != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            productTitle(),
            Container(
              height: 100,
              child: ListView.builder(
                  itemCount: nomadresponse?.amenities?.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    Amenities? amenities = nomadresponse?.amenities![index];
                    return productAmenities(
                        amenities?.id.toString() ?? '',
                        amenities?.name ?? '',
                        amenities?.selectedInFilter.toString() ?? '');
                  }),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: nomadresponse?.workspaces?.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  Workspaces? workspace = nomadresponse?.workspaces![index];
                  return productDescription(
                      workspace?.siteDetails?.sitePhotoImage![0].siteImage
                              ?.url ??
                          '',
                      workspace?.description ?? '',
                      workspace?.name ?? '',
                      workspace?.workspaceAmenities![0].amenityDetails?.name ??
                          '',
                      "Recommended",
                      (workspace != null &&
                              workspace.reviews != null &&
                              workspace.reviews!.isNotEmpty)
                          ? workspace.reviews![0].overAllRating ?? ''
                          : "0",
                      workspace?.price?.totalPrice ?? "");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget productTitle() {
    return Container(
        padding: const EdgeInsets.only(top: 15),
        child: const Text(
          "5 Listing For Thane,Maharashtra,India",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color(0xff9D9D9D)),
        ));
  }

  Widget productAmenities(String id, String name, String filter) {
    return Card(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              id,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color(0xff393E46)),
            ),
            SizedBox(height: 5),
            Text(name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color(0xff393E46),
                )),
            SizedBox(height: 5),
            Text(
              filter,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color(0xff393E46)),
            )
          ],
        ),
      ),
    );
  }

  Widget productDescription(String url, String description, String title,
      String value, String recommanded, String reviews, String price) {
    return Card(
      child: Container(
        padding: EdgeInsets.only(left: 15),
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            Flexible(
              child: Container(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(image: NetworkImage(url)))),
            ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      description,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xff9D9D9D)),
                    ),
                    const SizedBox(height: 20),
                    Text(title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color(0xff01937C))),
                    const SizedBox(height: 5),
                    Text(value,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xff9D9D9D))),
                    const SizedBox(height: 5),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 3,
                                color: Color(0xff92A9BD),
                                offset: Offset(0, 3))
                          ]),
                      child: Text(recommanded,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color(0xff9D9D9D))),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(double.parse(reviews).toStringAsFixed(2),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color(0xff9D9D9D))),
                          const SizedBox(width: 90),
                          Text(price,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color(0xff9D9D9D))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

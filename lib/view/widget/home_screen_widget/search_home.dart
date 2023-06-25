import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_balink/model/event_model.dart';
import 'package:mobile_balink/view/widget/home_screen_widget/event_card.dart';
import 'package:mobile_balink/view_model/event_provider.dart';
import 'package:mobile_balink/view_model/product_provider.dart';
import 'package:provider/provider.dart';

import '../../../config/theme.dart';

class SearchHomeWidget extends StatefulWidget {
  const SearchHomeWidget({super.key});

  @override
  State<SearchHomeWidget> createState() => _SearchHomeWidgetState();
}

class _SearchHomeWidgetState extends State<SearchHomeWidget> {
  final TextEditingController _searchHomeController = TextEditingController();

  @override
  void initState() {
    // final provSearch = Provider.of<EventProvider>(context);
    // provSearch.getEvent();

    // context.read<EventProvider>().searchEventText = '';
    Future.delayed(Duration.zero, () {
      context.read<EventProvider>().searchEventHome('');
    });
    Future.delayed(Duration.zero, () {
      context.read<ProductProvider>().search('');
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final results = Provider.of<EventProvider>(context);

    return Scaffold(
      backgroundColor: fifthColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                key: const Key('containerAppBar'),
                height: 74.h,
                width: MediaQuery.of(context).size.width * 1,
                // color: secondaryColor,
                decoration: BoxDecoration(
                    color: secondaryColor,
                    // color: Colors.blueAccent[400],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0.r),
                      bottomRight: Radius.circular(10.0.r),
                    )),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(
                              context,
                            );
                          },
                          key: const Key('cartHome'),
                          child: Icon(
                            Icons.arrow_back,
                            color: whiteColor,
                          ),
                        ),
                      ),
                      Flexible(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 13.0),
                        child: TextField(
                          controller: _searchHomeController,
                          key: const Key('textFieldSearchHome'),
                          style: poppinsKecil,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                            filled: true,
                            fillColor: const Color.fromRGBO(205, 203, 200, 0.2),
                            prefixIcon: const Icon(
                              Icons.search,
                              size: 14.67,
                              color: Colors.white,
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.r))),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.w)),
                                borderSide: BorderSide(
                                  color: secondaryColor,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.w)),
                                borderSide: BorderSide(
                                  color: secondaryColor,
                                )),
                          ),
                          onChanged: (value) {
                            results.searchEventHome(value);
                          },
                        ),
                      )),
                    ],
                  ),
                ),
              ),
              Consumer<EventProvider>(builder: (context, eventProv, child) {
                final eventsResult = eventProv.listEvent;
                final searchText = eventProv.searchEventText;

                List filteredEvents = eventsResult
                    .where((event) => event.nama
                        .toLowerCase()
                        .contains(searchText.toLowerCase()))
                    .toList();

                if (eventProv.searchEventText.isEmpty) {
                  return Container();
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: filteredEvents.length,
                      itemBuilder: (context, index) {
                        Event eventData = filteredEvents[index];
                        return EvenCardWidget(
                          eventDataHome: eventData,
                        );
                      },
                    ),
                  );
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}

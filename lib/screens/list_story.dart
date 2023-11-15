import 'package:flutter/material.dart';

class ListStory extends StatelessWidget {
  const ListStory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 105.75,
        child: ListView(
          scrollDirection: Axis.horizontal, // luot theo chieu ngang
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: SizedBox(
                    height: 97.75,
                    width: 72,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.32),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                    'assets/images/story/user1.png'),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100),
                                        color: Colors.blue),
                                    alignment: Alignment.center,
                                    height: 20,
                                    width: 20,
                                    child: const Icon(Icons.add,
                                        size: 15, color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: AlignmentDirectional.bottomCenter,
                          child: const Text('_ngb4o'),
                        )
                      ],
                    ),
                  ),
                ),
                //
                UserStory('_quynne_', Image.asset('assets/images/story/user2.png', fit: BoxFit.fill,)),
                UserStory('_training28_1', Image.asset('assets/images/story/user3.png', fit: BoxFit.fill)),
                UserStory('_pien.08', Image.asset('assets/images/story/user4.png', fit: BoxFit.fill)),
                UserStory('_mahngu', Image.asset('assets/images/story/user5.png', fit: BoxFit.fill)),
                UserStory('_intel', Image.asset('assets/images/action_post/intel_post.png', fit: BoxFit.fill)),
                UserStory('_ankhang', Image.asset('assets/images/story/user7.png', fit: BoxFit.fill)),
                UserStory('_huuchien102', Image.asset('assets/images/story/user6.png', fit: BoxFit.fill)),
                UserStory('_mahngu', Image.asset('assets/images/story/user5.png', fit: BoxFit.fill)),
              ],
            ),
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  Widget UserStory(String name, Image image) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: SizedBox(
        height: 97.75,
        width: 72,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset('assets/images/story/story_ring.png'),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(5.58),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        child: image,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: AlignmentDirectional.bottomCenter,
              child: Text(name, overflow: TextOverflow.ellipsis),
            ),
          ],
        ),
      ),
    );
  }
}

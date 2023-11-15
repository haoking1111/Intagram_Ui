import 'package:flutter/material.dart';
class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostInfor(
            'assets/images/story/user1.png',
            '_ngb4o',
            'assets/images/action_post/post_img.png',
            '1410',
            '_quyenne_',
            'Image desktop 💻'
        ),

        PostInfor(
            'assets/images/story/user2.png',
            '_quyenne_',
            'assets/images/action_post/quyen_post.png',
            '678',
            '_ngb4o',
            'Summer ☀️'
        ),

        PostInfor(
            'assets/images/story/user5.png',
            '_mahngu',
            'assets/images/action_post/manh_post.png',
            '652',
            '_ngb4o',
            'CheckIn 📸'
        ),

        PostInfor(
            'assets/images/story/user3.png',
            '_training28_1',
            'assets/images/story/user3.png',
            '120',
            '_ngb4o',
            'Check in with Vespa 🛵'
        ),

        PostInfor(
            'assets/images/story/user4.png',
            '_pien.08',
            'assets/images/story/user4.png',
            '99',
            '_ngb4o',
            'Happt birthday to me 🎉🎂'
        ),

        PostInfor(
            'assets/images/story/user6.png',
            '_huuchien102',
            'assets/images/action_post/chien_post.png',
            '245',
            '_ngb4o',
            '[ 26-05-2021 ] ❤️'
        ),

        PostInfor(
            'assets/images/story/user3.png',
            '_training28_1',
            'assets/images/action_post/ninh_post.png',
            '154',
            '_mahngu',
            '🔥🥵🔥'
        ),
      ],
    );

  }

  Widget PostInfor(
      String imgInforUser,
      String nameUser,
      String imgPostPath,
      String numberOfLikes,
      String userLikes,
      String postStatus,
      ) {
    return Column(
      children: [
        // Infor user
        SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 13, top: 7, bottom: 4),
                child: SizedBox(
                  height: 36,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.84),
                        child: Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: SizedBox(
                              width: 30,
                              height: 43.17,
                              child: Image.asset(imgInforUser, fit: BoxFit.fill,),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        nameUser,
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13, bottom: 13, right: 12),
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Image.asset('assets/images/story/dot_icon.png'),
                ),
              ),
            ],
          ),
        ),

        // Post
        Container(
          color: Colors.red,
          width: double.infinity,
          height: 390,
          child: Image.asset(imgPostPath, fit: BoxFit.fill),
        ),

        // action post
        SizedBox(
          height: 44,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, left: 12),
                child: Row(
                  children: [
                    // actionPost('assets/images/appbar/heart_icon.png'),
                    Icon(Icons.favorite, color: Colors.red, size: 27),
                    const SizedBox(width: 12,),
                    actionPost('assets/images/action_post/comment_icon.png'),
                    const SizedBox(width: 12,),
                    actionPost('assets/images/action_post/send_icon.png'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, right: 13),
                child: Container(
                  child: actionPost('assets/images/action_post/save_icon.png'),
                ),
              ),
            ],
          ),
        ),

        // likes
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: SizedBox(
            height: 17,
            width: double.infinity,
            child: Text('$numberOfLikes likes', style: const TextStyle(fontWeight: FontWeight.bold),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(userLikes, style: const TextStyle(fontWeight: FontWeight.bold)),
                      const Text(' and many others')
                    ],
                  ),
                  SizedBox(height: 4,),
                  Row(
                    children: [
                      Text(nameUser, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text( ' $postStatus'),
                    ],
                  ),
                ],
              )
          ),
        ),
        SizedBox(height: 5,)
      ],
    );
  }

  Widget actionPost(String imagePath) {
    return Image.asset(imagePath);
  }

}

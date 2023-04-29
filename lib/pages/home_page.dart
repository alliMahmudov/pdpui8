import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Facebook", style: TextStyle(color: Colors.blueAccent, fontSize: 30, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.search),
            color: Colors.grey,
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.camera_alt),
            color: Colors.grey,
          ),
        ],
      ),

      body: ListView(
        children: [
          //post create
          Container(
            color: Colors.black,
            height: 120,
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/images/img_14.png"),
                          ),
                        ),
                      ),
                      const SizedBox(width: 15,),
                      Expanded(
                          child: Container(
                            height: 46,
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23),
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                            ),
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: "What's on your mind?",
                                border: InputBorder.none,
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(Icons.video_call, color: Colors.red,),
                                SizedBox(width: 5,),
                                Text("Live", style: TextStyle(color: Colors.grey),),
                              ],
                            ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 14, bottom: 14),
                          width: 1,
                          color: Colors.grey,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.photo, color: Colors.green,),
                              SizedBox(width: 5,),
                              Text("Photo", style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 14, bottom: 14),
                          width: 1,
                          color: Colors.grey,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.location_on, color: Colors.red,),
                              SizedBox(width: 5,),
                              Text("Check in", style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ),
                      ],
                    ),
                ),
              ],
            ),
          ),

          //post stories
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            height: 200,
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 10,),
                makeStory(
                  storyImage: "assets/images/img_9.png",
                  userImage: "assets/images/img_14.png",
                  userName: 'User Five'
                ),
                makeStory(
                    storyImage: "assets/images/img_8.png",
                    userImage: "assets/images/img_13.png",
                    userName: 'User Four'
                ),
                makeStory(
                    storyImage: "assets/images/img_7.png",
                    userImage: "assets/images/img_12.png",
                    userName: 'User Three'
                ),
                makeStory(
                    storyImage: "assets/images/img_6.png",
                    userImage: "assets/images/img_11.png",
                    userName: 'User Two'
                ),
                makeStory(
                    storyImage: "assets/images/img_5.png",
                    userImage: "assets/images/img_10.png",
                    userName: 'User One'
                ),
              ],
            ),
          ),

          //post feed
          makeFeed(
            userName: "User Two",
            userImage: "assets/images/img_11.png",
            feedTime: "1 hour ago",
            feedText: "All the Lorem Ipsum generators on the internet tend to repeat predefined.",
            feedImage1: 'assets/images/img_6.png',
            feedImage2: 'assets/images/img_8.png',
          )
        ],
      ),
    );
  }

  Widget makeStory({storyImage,userImage,userName}){
    return AspectRatio(
      aspectRatio: 1.3/2,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blue,width: 2),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(userName, style: const TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage1, feedImage2}){
    return Container(
      margin: const EdgeInsets.only(top: 10),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // #header
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(userImage),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(userName, style: const TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),),
                            const SizedBox(height: 3,),
                            Text(feedTime, style: const TextStyle(fontSize: 15, color: Colors.grey),),
                          ],
                        )

                      ],
                    ),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey[600],),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Text(feedText,style: TextStyle(fontSize: 15, color: Colors.grey[600], height: 1.5, letterSpacing: 0.7),),
                const SizedBox(height: 20,),
              ],
            ),
          ),

          // #photo
          Row(
            children: [
              Expanded(
                child: Image(
                  image: AssetImage(feedImage1),
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Image(
                  image: AssetImage(feedImage2),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),

          const SizedBox(height: 20,),

          // #likes
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(
                      offset: const Offset(-5,0),
                      child: makeLove(),
                    ),
                    const SizedBox(width: 5,),
                    Text("2.5K", style: TextStyle(fontSize: 15, color: Colors.grey[600]),),
                  ],
                ),
                Text("400 comments", style: TextStyle(fontSize: 13, color: Colors.grey[600]),),
              ],
            ),
          ),

          // #like, comment, share
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }

  Widget makeLikeButton({isActive}){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.thumb_up, color: isActive? Colors.blue: Colors.grey, size: 18,),
            const SizedBox(width: 5,),
            Text("Like", style: TextStyle(color: isActive? Colors.blue: Colors.grey),)
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.chat, color: Colors.grey, size: 18,),
            SizedBox(width: 5,),
            Text("Comment", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }

  Widget makeShareButton(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.share, color: Colors.grey, size: 18,),
            SizedBox(width: 5,),
            Text("Share", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }

  Widget makeLike(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: const Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white,),
      ),
    );
  }

  Widget makeLove(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: const Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white,),
      ),
    );
  }

}

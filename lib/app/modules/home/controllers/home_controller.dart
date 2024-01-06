import 'package:get/get.dart';
import 'package:linkpreview/app/data/models/post.dart';

class HomeController extends GetxController {
  RxList<Post> listPost = <Post>[].obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();

    // TODO: mock create data
    listPost.add(
      Post(
        content:
            'โค้ดตัวอย่าง ตอนที่ 153 -> https://github.com/anoochit/todo_retrofit',
        timestamp: DateTime.now(),
      ),
    );
    listPost.add(
      Post(
        content: 'ตอนที่ 153 -> https://www.youtube.com/watch?v=FwzAZ6DVKtc',
        timestamp: DateTime.now(),
      ),
    );
    listPost.add(
      Post(
        content: 'ตอนที่ 155 -> https://www.youtube.com/watch?v=OE9m_68YApk',
        timestamp: DateTime.now(),
      ),
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  List<Post> getPosts() {
    return listPost;
  }
}

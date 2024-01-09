import 'package:get/get.dart';
import 'package:linkpreview/app/data/models/post.dart';

class HomeController extends GetxController {
  RxList<Post> listPost = <Post>[].obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();

    // TODO: mock create data
    createMockData();
  }

  createMockData() {
    listPost.add(
      Post(
        content:
            'Happy Holidays from the Firebase team!  https://www.youtube.com/watch?v=gcG0ajhMo0M',
        timestamp: DateTime.now().subtract(const Duration(minutes: 10)),
      ),
    );
    listPost.add(
      Post(
        content:
            'โค้ดตัวอย่าง ตอนที่ 153 https://github.com/anoochit/todo_retrofit',
        timestamp: DateTime.now().subtract(const Duration(minutes: 20)),
      ),
    );
    listPost.add(
      Post(
        content: 'ตอนที่ 153 https://www.youtube.com/watch?v=FwzAZ6DVKtc',
        timestamp: DateTime.now().subtract(const Duration(minutes: 30)),
      ),
    );
    listPost.add(
      Post(
        content: 'ตอนที่ 155 https://www.youtube.com/watch?v=OE9m_68YApk',
        timestamp: DateTime.now().subtract(const Duration(minutes: 40)),
      ),
    );
  }

  List<Post> getPosts() {
    return listPost;
  }
}

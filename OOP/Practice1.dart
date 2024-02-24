class Member {
  final int id;
  final String name;
  final String avatar;
  final String birthday;
  final String phoneNumber;
  final String email;
  final int gender; // 1: male, 2: female

  Member({
    required this.name,
    required this.avatar,
    required this.birthday,
    required this.phoneNumber,
    required this.email,
    required this.gender,
  }) : this.id = DateTime.now().microsecondsSinceEpoch;
  Map getInfo() {
    return {
      "name": this.name,
      "avatar": this.avatar,
      "birthday": this.birthday,
      "phoneNumber": this.phoneNumber,
      "email": this.email,
      "gender": this.gender,
    };
  }
}

class CompanySocialNetwork {
  List<Member> members = [];
  List<Post> posts = [];
  CompanySocialNetwork({
    required List<Member> this.members,
  });
  void addPost(List<Post> newPosts) {
    for (int i = 0; i < newPosts.length; ++i) {
      for (int j = 0; j < members.length; ++j) {
        if (newPosts[i].owner.id == members[j].id) {
          posts.add(newPosts[i]);
          break;
        }
      }
    }
  }

  void addMember(List<Member> members) {
    members.addAll(members);
  }

  void addComment({required int postId, required Comment comment}) {
    for (int i = 0; i < posts.length; ++i) {
      if (posts[i].id == postId) {
        posts[i].comments.add(comment);
        return;
      }
    }
  }

  void printInfo() {
    print({
      "members": this.members.map((e) => e.getInfo()),
      "posts": this.posts.map((e) => e.getInfo()),
    });
  }
}

class Comment {
  final int id;
  final Member owner;
  final String content;
  Comment({
    required Member this.owner,
    required String this.content,
  }) : this.id = DateTime.now().microsecondsSinceEpoch;
  Map getInfo() {
    return {
      "id": this.id,
      "content": this.content,
      "owner": this.owner.getInfo(),
    };
  }
}

class Post {
  final int id;
  final String content;
  List<String> images = [];
  final Member owner;
  final List<Comment> comments = [];
  Post({
    required String this.content,
    required Member this.owner,
    required List<String> this.images,
  }) : this.id = DateTime.now().microsecondsSinceEpoch;
  Map getInfo() {
    return {
      "id": id,
      "content": content,
      "images": images,
      "owner": owner.getInfo(),
      "comments": comments.map((e) => e.getInfo()),
    };
  }
}

void main(List<String> args) {
  const MALE = 1;
  const FEMALE = 2;
  Member member1 = Member(
    name: "Nguyen Van A",
    avatar: "avatar A",
    birthday: "14/08/2010",
    phoneNumber: "012",
    email: "nguyenvana@gmail.com",
    gender: MALE,
  );
  Member member2 = Member(
    name: "Nguyen Van B",
    avatar: "avatar B",
    birthday: "14/08/2011",
    phoneNumber: "013",
    email: "nguyenvanb@gmail.com",
    gender: FEMALE,
  );
  var companySocialNetwork = CompanySocialNetwork(
    members: [
      member1,
      member2,
    ],
  );
  print("=====");
  companySocialNetwork.printInfo();
  var post1 = Post(
    content: "Xin chào mọi người",
    owner: member1,
    images: [],
  );
  companySocialNetwork.addPost([post1]);
  print("=====");
  companySocialNetwork.printInfo();
  companySocialNetwork.addComment(
      postId: post1.id,
      comment: Comment(owner: member2, content: "Happy new year"));
  print("=====");
  companySocialNetwork.printInfo();
}

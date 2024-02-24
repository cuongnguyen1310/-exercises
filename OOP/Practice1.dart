class Member {
  final String name;
  final String avatar;
  final String birthday;
  final String phoneNumber;
  final String email;
  final int gender; // 1: male, 2: female

  const Member({
    required this.name,
    required this.avatar,
    required this.birthday,
    required this.phoneNumber,
    required this.email,
    required this.gender,
  });
}

class CompanySocialNetwork {
  List<Member> members;
  List<Post> posts;
  CompanySocialNetwork({
    List<Member>? members,
    List<Post>? posts,
  })  : this.members = members ?? [],
        this.posts = posts ?? [];
}

class Comment {
  final Member owner;
  final String content;
  const Comment({
    required Member this.owner,
    required String this.content,
  });
}

class Post {
  final String content;
  List<String> images;
  final Member owner;
  final List<Comment> comments;
  Post({
    required String this.content,
    List<String> this.images = [],
    required Member this.owner,
    List<Comment>? comments,
  })  : this.images = images ?? [],
        this.comments = comments ?? [];
}

void main(List<String> args) {
  const MALE = 1;
  const FEMALE = 2;
  Member member1 = const Member(
      name: "Nguyen Van A",
      avatar: "avatar A",
      birthday: "14/08/2010",
      phoneNumber: "012",
      email: "nguyenvana@gmail.com",
      gender: MALE);
  CompanySocialNetwork(members: null, posts: null);
}

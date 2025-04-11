class Post {
  final int id;
  final String media_url;
  final String description;
  final String user_id;

  Post({
    required this.id,
    required this.media_url,
    required this.description,
    required this.user_id,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      media_url: json['media_url'],
      description: json['description'],
      user_id: json['user_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'media_url': media_url,
      'description': description,
      'user_id': user_id,
    };
  }
}

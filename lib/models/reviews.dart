import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class StoreReviews {
  final String name;
  final String review;
  StoreReviews({
    required this.name,
    required this.review,
  });


  StoreReviews copyWith({
    String? name,
    String? review,
  }) {
    return StoreReviews(
      name: name ?? this.name,
      review: review ?? this.review,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'review': review,
    };
  }

  factory StoreReviews.fromMap(Map<String, dynamic> map) {
    return StoreReviews(
      name: map['name'] as String,
      review: map['review'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory StoreReviews.fromJson(String source) => StoreReviews.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'StoreReviews(name: $name, review: $review)';

  @override
  bool operator ==(covariant StoreReviews other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.review == review;
  }

  @override
  int get hashCode => name.hashCode ^ review.hashCode;
}

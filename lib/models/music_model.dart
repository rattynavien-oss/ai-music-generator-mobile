import 'package:equatable/equatable.dart';

class Music extends Equatable {
  final String id;
  final String title;
  final String prompt;
  final String genre;
  final String mood;
  final int duration;
  final String? imageUrl;
  final String? audioUrl;
  final DateTime createdAt;
  final bool isPlaying;

  const Music({
    required this.id,
    required this.title,
    required this.prompt,
    required this.genre,
    required this.mood,
    required this.duration,
    this.imageUrl,
    this.audioUrl,
    required this.createdAt,
    this.isPlaying = false,
  });

  factory Music.fromJson(Map<String, dynamic> json) {
    return Music(
      id: json['id'] ?? '',
      title: json['title'] ?? 'Untitled',
      prompt: json['prompt'] ?? '',
      genre: json['genre'] ?? '',
      mood: json['mood'] ?? '',
      duration: json['duration'] ?? 0,
      imageUrl: json['image_url'],
      audioUrl: json['audio_url'],
      createdAt: DateTime.tryParse(json['created_at'] ?? '') ?? DateTime.now(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'prompt': prompt,
      'genre': genre,
      'mood': mood,
      'duration': duration,
      'image_url': imageUrl,
      'audio_url': audioUrl,
      'created_at': createdAt.toIso8601String(),
    };
  }

  Music copyWith({
    String? id,
    String? title,
    String? prompt,
    String? genre,
    String? mood,
    int? duration,
    String? imageUrl,
    String? audioUrl,
    DateTime? createdAt,
    bool? isPlaying,
  }) {
    return Music(
      id: id ?? this.id,
      title: title ?? this.title,
      prompt: prompt ?? this.prompt,
      genre: genre ?? this.genre,
      mood: mood ?? this.mood,
      duration: duration ?? this.duration,
      imageUrl: imageUrl ?? this.imageUrl,
      audioUrl: audioUrl ?? this.audioUrl,
      createdAt: createdAt ?? this.createdAt,
      isPlaying: isPlaying ?? this.isPlaying,
    );
  }

  @override
  List<Object?> get props => [
        id,
        title,
        prompt,
        genre,
        mood,
        duration,
        imageUrl,
        audioUrl,
        createdAt,
        isPlaying,
      ];
}

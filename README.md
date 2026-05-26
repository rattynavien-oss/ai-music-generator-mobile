# README for Flutter Music App

This Flutter music app has been created with the following structure and features:

## Project Structure

```
lib/
├── config/               # Configuration files
│   ├── api_config.dart   # API endpoints and configuration
│   └── theme.dart        # Theme definitions (light & dark)
├── models/               # Data models
│   └── music_model.dart  # Music data model with JSON serialization
├── services/             # Services
│   ├── api_service.dart  # API client for music generation
│   └── music_service.dart# Music playback service using just_audio
├── bloc/                 # BLoC pattern state management
│   ├── music_generator_bloc.dart
│   ├── music_generator_event.dart
│   ├── music_generator_state.dart
│   ├── music_player_bloc.dart
│   ├── music_player_event.dart
│   └── music_player_state.dart
├── pages/                # Screen pages
│   └── home_page.dart    # Main home page with navigation
├── widgets/              # Reusable widgets
│   ├── music_generator_widget.dart
│   ├── music_player_widget.dart
│   └── music_history_widget.dart
├── main.dart             # Application entry point
└── pubspec.yaml          # Dependencies
```

## Key Features Implemented

### 1. **Music Generation**
   - Create custom music prompts
   - Select genre and mood
   - Adjust duration (10-120 seconds)
   - Real-time generation status

### 2. **Music Playback**
   - Play/pause/stop controls
   - Playback rate adjustment
   - Position tracking
   - Duration display

### 3. **Music History**
   - View all generated music
   - Delete music from history
   - Quick access to play music

### 4. **UI/UX**
   - Material Design 3
   - Light and dark themes
   - Responsive layouts
   - Loading indicators
   - Error handling

### 5. **State Management**
   - BLoC pattern for music generation
   - BLoC pattern for music playback
   - Provider for service injection

## Setup Instructions

1. **Update API Configuration**
   - Edit `lib/config/api_config.dart`
   - Set your backend API base URL
   - Configure API key if needed

2. **Install Dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the App**
   ```bash
   flutter run
   ```

## Dependencies

- **http**: For API calls
- **provider**: For dependency injection
- **flutter_bloc & equatable**: For state management
- **just_audio**: For music playback
- **path_provider**: For file storage
- **permission_handler**: For requesting permissions
- **connectivity_plus**: For checking network status
- **shared_preferences**: For local data persistence
- **intl**: For internationalization

## API Integration

The app expects your backend API to provide:

### Generate Music
```
POST /api/v1/music/generate
{
  "prompt": "string",
  "genre": "string",
  "mood": "string",
  "duration": "number"
}
```

### Get Music History
```
GET /api/v1/music/history
```

### Download Music
```
GET /api/v1/music/download/{musicId}
```

### Delete Music
```
DELETE /api/v1/music/{musicId}
```

## Next Steps

1. Configure your backend API URL
2. Implement authentication if needed
3. Add offline music storage
4. Implement music download functionality
5. Add more UI polish and animations
6. Add unit and integration tests

## Notes

- Ensure your backend API is properly configured
- Audio playback requires device permissions
- The app uses the BLoC pattern for scalability
- Theme configuration is centralized for easy customization

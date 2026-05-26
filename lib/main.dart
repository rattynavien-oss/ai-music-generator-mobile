import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'config/theme.dart';
import 'services/api_service.dart';
import 'services/music_service.dart';
import 'bloc/music_generator_bloc.dart';
import 'bloc/music_player_bloc.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ApiService>(create: (_) => ApiService()),
        Provider<MusicService>(create: (_) => MusicService()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<MusicGeneratorBloc>(
            create: (context) => MusicGeneratorBloc(
              apiService: context.read<ApiService>(),
            ),
          ),
          BlocProvider<MusicPlayerBloc>(
            create: (context) => MusicPlayerBloc(
              musicService: context.read<MusicService>(),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'AI Music Generator',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
          home: const HomePage(),
        ),
      ),
    );
  }
}

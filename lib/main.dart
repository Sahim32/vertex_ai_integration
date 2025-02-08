import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_vertexai/firebase_vertexai.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:vertex_ai_integration/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAuth.instance.signInAnonymously();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String result= 'No content generated yet';
  final prompt_text = 'Write a story about a magic backpack';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Generative AI with Firebase')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  String? content = await generateContent();
                  setState(() {
                    result = content?? 'No content generated';
                  });
                },
                child: Text('Generate Content', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
              ),
               Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Content: $prompt_text ...\n\n$result',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[500],
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

// Documentation: https://firebase.google.com/docs/vertex-ai/get-started?platform=flutter

  Future<String?> generateContent() async {
    // Initialize the generative model
    var vertexInstance = FirebaseVertexAI.instanceFor(auth: FirebaseAuth.instance);
    final model = vertexInstance.generativeModel(model: 'gemini-1.5-flash');

    // Generate content
    final prompt = [Content.text('Write a story about a magic backpack.')];
  
    final response = await model.generateContent(prompt);
  
     if (kDebugMode)
    {
      print(response.text);
    }
    return response.text;
  }
}
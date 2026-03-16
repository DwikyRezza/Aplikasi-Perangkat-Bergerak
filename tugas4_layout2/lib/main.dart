import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout part 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFF0F0F0),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ' Tugas 4 Layout 2'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final data = const [
    {"tgl": "02/03/2022", "nilai": "150"},
    {"tgl": "01/02/2022", "nilai": "140"},
    {"tgl": "12/01/2022", "nilai": "170"},
    {"tgl": "11/12/2021", "nilai": "110"},
    {"tgl": "10/11/2021", "nilai": "180"},
    {"tgl": "09/10/2021", "nilai": "190"},
    {"tgl": "08/09/2021", "nilai": "160"},
    {"tgl": "07/08/2021", "nilai": "155"},
    {"tgl": "06/07/2021", "nilai": "145"},
    {"tgl": "05/06/2021", "nilai": "140"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              // Header card
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFDDDDDD)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Welcome,',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.25,
                          ),
                        ),
                        Text(
                          '1202230031 - Muhammad Dwiky Yanuarezza',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xFF888888),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black,
                      child: Text(
                        'MR',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 14),

              // Status card
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1A1A),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Status tes TOEFL Anda:',
                      style: TextStyle(color: Color(0xFFAAAAAA), fontSize: 13),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF333333),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Text(
                        'LULUS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.25,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildScoreItem('Listening', '80'),
                        Container(
                          width: 1,
                          height: 36,
                          color: const Color(0xFF444444),
                        ),
                        _buildScoreItem('Structure', '80'),
                        Container(
                          width: 1,
                          height: 36,
                          color: const Color(0xFF444444),
                        ),
                        _buildScoreItem('Reading', '90'),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 14),

              // Riwayat Tes
              Container(
                child: Text(
                  'Riwayat Tes',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xFFDDDDDD)),
                  ),
                  child: ListView.separated(
                    itemCount: data.length,
                    separatorBuilder: (_, __) => const Divider(
                      height: 0,
                      thickness: 0.5,
                      color: Color(0xFFF0F0F0),
                    ),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 11,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Tanggal tes:',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xFF888888),
                                  ),
                                ),
                                Text(
                                  data[index]["tgl"]!,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text(
                                  'Nilai:',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xFF888888),
                                  ),
                                ),
                                Text(
                                  data[index]["nilai"]!,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildScoreItem(String label, String value) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 11, color: Color(0xFFAAAAAA)),
        ),
        const SizedBox(height: 2),
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

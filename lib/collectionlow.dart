import 'package:flutter/material.dart';

class CollectionLow extends StatelessWidget {
  const CollectionLow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "NEasyCache - 日本語",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple.shade400,
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.account_circle, color: Colors.white),
            onPressed: () {},
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(8)),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Tabel Bahasa Dasar (日本語)",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (String script in ["hiragana", "katakana"])
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  script == "hiragana"
                                      ? Colors.blue
                                      : Colors.grey.shade200,
                              foregroundColor:
                                  script == "hiragana"
                                      ? Colors.white
                                      : Colors.black,
                            ),
                            onPressed: () {},
                            child: Text(_capitalize(script)),
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    "assets/hiragana_chart.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Category (カテゴリ)",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (String category in [
                        "Pendidikan\nきょういく",
                        "Kehidupan\nせいかつ",
                      ])
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: SizedBox(
                            width: 100,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(8),
                                backgroundColor:
                                    category.startsWith("Pendidikan")
                                        ? Colors.blue
                                        : Colors.grey.shade200,
                                foregroundColor:
                                    category.startsWith("Pendidikan")
                                        ? Colors.white
                                        : Colors.black,
                              ),
                              onPressed: () {},
                              child: Text(
                                category,
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: SizedBox(
                          width: 80,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              backgroundColor: Colors.grey.shade200,
                            ),
                            onPressed: () {},
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Icon(Icons.add, size: 24)],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Kotoba (ことば) - Input Yours",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                          labelText: 'Words',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 12,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                          labelText: 'Meaning',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    onPressed: () {},
                    child: const Text('Add to Yours'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _capitalize(String text) {
    return "${text[0].toUpperCase()}${text.substring(1)}";
  }
}

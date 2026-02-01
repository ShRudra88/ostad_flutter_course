import 'package:flutter/material.dart';

class AssignmentModule16 extends StatelessWidget {
  const AssignmentModule16({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F6F8),
      appBar: AppBar(
        title: const Text('Courses'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 0.72,
          children: const [
            CourseCard(
              image: 'assets/mern.png',
              title: 'Full Stack Web Development with JavaScript (MERN)',
              batch: 'Batch 19',
              seats: '49 seats left',
              duration: '50 days',
            ),
            CourseCard(
              image: 'assets/python.png',
              title: 'Full Stack Web Development with Python, Django & React',
              batch: 'Batch 6',
              seats: '25 seats left',
              duration: '40 days',
            ),
            CourseCard(
              image: 'assets/dotnet.png',
              title: 'Full Stack Web Development with ASP.Net Core',
              batch: 'Batch 7',
              seats: '55 seats left',
              duration: '60 days',
            ),
            CourseCard(
              image: 'assets/sqa.png',
              title: 'SQA: Manual & Automated Testing',
              batch: 'Batch 13',
              seats: '45 seats left',
              duration: '45 days',
            ),
          ],
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String image;
  final String title;
  final String batch;
  final String seats;
  final String duration;

  const CourseCard({
    super.key,
    required this.image,
    required this.title,
    required this.batch,
    required this.seats,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              image,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(batch, style: const TextStyle(fontSize: 12)),
                    const Spacer(),
                    Text(seats, style: const TextStyle(fontSize: 12)),
                  ],
                ),
                const SizedBox(height: 6),
                Text(duration, style: const TextStyle(fontSize: 12)),
                const SizedBox(height: 10),
                Container(
                  height: 36,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xffF1F3F5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    'বিস্তারিত দেখুন →',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

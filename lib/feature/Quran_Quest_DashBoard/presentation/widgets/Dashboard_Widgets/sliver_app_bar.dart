// class QuranQuestPage extends StatelessWidget {
//   const QuranQuestPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         physics: const BouncingScrollPhysics(),
//         slivers: [
//           // ✅ Sliver AppBar with Stretch Effect
//           SliverAppBar(
//             expandedHeight: 300,
//             floating: false,
//             pinned: true,
//             stretch: true,
//             backgroundColor:
//                 Colors.transparent, // ✅ Transparent AppBar Background
//             flexibleSpace: Stack(
//               children: [
//                 Positioned.fill(
//                   child: Image.asset(
//                     AppImages.dashBoardTopImage, // ✅ Same Image for AppBar
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 const FlexibleSpaceBar(
//                   title: Text(
//                     'Quran Quest',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       backgroundColor: Colors.black54,
//                     ),
//                   ),
//                   centerTitle: true,
//                   stretchModes: [
//                     StretchMode.zoomBackground,
//                     StretchMode.fadeTitle,
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           // ✅ Fixed Card Below AppBar
//           SliverPersistentHeader(
//             pinned: true, // Keeps card fixed below AppBar
//             delegate: FixedCardHeader(),
//           ),

//           // ✅ GridView List Below Card
//           SliverPadding(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//             sliver: SliverGrid(
//               delegate: SliverChildBuilderDelegate(
//                 (context, index) {
//                   return Container(
//                     decoration: BoxDecoration(
//                       color: Colors.teal[100],
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Ayat ${index + 1}',
//                         style: const TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   );
//                 },
//                 childCount: 12, // Grid Items Count
//               ),
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2, // 2 columns
//                 crossAxisSpacing: 10,
//                 mainAxisSpacing: 10,
//                 childAspectRatio: 1.5,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// //! ✅ Custom SliverPersistentHeader Delegate to Keep Card Fixed
// class FixedCardHeader extends SliverPersistentHeaderDelegate {
//   @override
//   double get minExtent => 120; // Minimum height when collapsed
//   @override
//   double get maxExtent => 120; // Maximum height when expanded

//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return Material(
//       elevation: 10,
//       color: Colors.white,
//       child: Center(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Card(
//             elevation: 10,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: const Padding(
//               padding: EdgeInsets.all(15),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Text(
//                     'سورة الفاتحة',
//                     style: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ',
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.black87,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
//     return false;
//   }
// }

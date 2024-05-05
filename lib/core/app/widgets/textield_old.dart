// part of io_ui;

// class MyTextFiled extends StatefulWidget {
//   final String? gender;
//   final String? status;

//   MyTextFiled(this.gender, this.status);

//   @override
//   State<MyTextFiled> createState() => _MyTextFiledState();
// }

// class _MyTextFiledState extends State<MyTextFiled> {
//   void initState() {
//     super.initState();
//     print(widget.gender);
//     print(widget.status);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         children: [
//           Expanded(
//             child: TextField(
//               style: AppTextStyle.typedText16,
//               onChanged: (value) {
//                 context.read<CharacterBloc>().add(CharacterEvent.search(
//                     name: value, gender: widget.gender, status: widget.status));
//               },
//               decoration: InputDecoration(
//                   contentPadding:
//                       const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
//                   hintText: 'Найти персонажа',
//                   hintStyle:
//                       const TextStyle(color: AppColors.greyUsual, fontSize: 16),
//                   filled: true,
//                   fillColor: AppColors.searchFiledColor,
//                   enabledBorder: const OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(100)),
//                     borderSide: BorderSide.none,
//                   ),
//                   focusedBorder: const OutlineInputBorder(
//                     borderRadius: BorderRadius.all(Radius.circular(100)),
//                     borderSide: BorderSide.none,
//                   ),
//                   prefixIcon: Padding(
//                     padding: const EdgeInsets.only(
//                         bottom: 12, top: 12, left: 15, right: 10),
//                     child: Assets.icons.search.svg(),
//                   ),
//                   suffixIcon: Padding(
//                     padding:
//                         const EdgeInsets.only(right: 19, bottom: 16, top: 16),
//                     child: GestureDetector(
//                       onTap: () {
//                         AutoRouter.of(context).replace(FilterRoute());
//                       },
//                       child: SizedBox(
//                           height: 24,
//                           width: 24,
//                           child: Assets.icons.filter.svg()),
//                     ),
//                   )),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

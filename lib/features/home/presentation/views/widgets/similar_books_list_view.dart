import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/utils/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookImage(
                    imageUrl:
                        'https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/245086385_107253798399125_8482276406653585744_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=L9rRTx9AflcQ7kNvgFMaACU&_nc_zt=23&_nc_ht=scontent.fcai19-1.fna&_nc_gid=Ajcnb4fNUOl7eXnTkWBQMRF&oh=00_AYB_0bfGKI3d1-8RVC0BwQWMS_RegIXhZo-e5DJdBrafKw&oe=673886E3',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}

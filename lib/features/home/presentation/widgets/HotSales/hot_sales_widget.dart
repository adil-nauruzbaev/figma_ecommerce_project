import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce/common/app_colors/app_colors.dart';
import 'package:flutter_ecommerce/features/home/presentation/bloc/home_bloc.dart';
import 'package:flutter_ecommerce/features/home/presentation/bloc/home_state.dart';
import 'package:shimmer/shimmer.dart';

class HotSalesWidget extends StatefulWidget {
  const HotSalesWidget({Key? key}) : super(key: key);

  @override
  _HotSalesWidgetState createState() => _HotSalesWidgetState();
}

class _HotSalesWidgetState extends State<HotSalesWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
      if (state is HomeLoadingState) {
        return  Center( 
          child: SizedBox(
            width: 200.0,
            height: 100.0,
            child: Shimmer.fromColors(
              baseColor: Colors.grey[200]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.white
              )
              ),
            ),
          );
      }
      if (state is HomeLoadedState) { 
        return CarouselSlider.builder(
          itemCount: state.loadedHomeStore.length,
          itemBuilder: (context, index, _) => SliderWidget(
            pictureUrl: state.loadedHomeStore[index].picture!,
            titlePhone: state.loadedHomeStore[index].title!,
            subtitleSuper: state.loadedHomeStore[index].subtitle!,
            isNew: state.loadedHomeStore[index].isNew ?? false,
          ),
          options: CarouselOptions(
            height: 200,
            aspectRatio: 5.0,
            initialPage: 0,
            viewportFraction: 1,
          )
        );  
      }
      if (state is HomeErrorState) {
        return const Center(
          child: Text('Error getcing picture')
        );
      }
        return const CircularProgressIndicator();
      }
    );
  }
}

class SliderWidget extends StatelessWidget {
  final String? pictureUrl;
  final String? titlePhone;
  final String? subtitleSuper;
  final bool? isNew;

  const SliderWidget({
    Key? key,
    required this.pictureUrl,
    required this.titlePhone,
    required this.subtitleSuper,
    required this.isNew,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            imageUrl: pictureUrl ?? '',
            height: 450,
            width: double.maxFinite,
            fit: BoxFit.cover,
            alignment: Alignment.topLeft,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Stack(
            children: [
              SizedBox(
                width: 500,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 67),
                  child: Text(
                    titlePhone ?? '',
                    maxLines: 3,
                    style: const TextStyle(
                      fontFamily: 'SFPro', 
                      fontSize: 27, 
                      fontWeight: FontWeight.w800, 
                      color: Colors.white
                    )
                  ),
                ),
              ),
              Positioned(
                top: 105,
                left: 28,
                child: Text(
                  subtitleSuper ?? '',
                  style: const TextStyle(
                    fontFamily: 'SFPro', 
                    fontSize: 12, 
                    fontWeight: FontWeight.w400, 
                    color: Colors.white
                  )
                ),
              ),
              Positioned(
                top: 10,
                left: 16,
                child: isNew == true
                  ? ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.iconColor, 
                      minimumSize: const Size(15, 30), 
                      shape: const CircleBorder()
                    ),
                    child: const Text(
                      'New',
                      style: TextStyle(
                        fontFamily: 'SFPro', 
                        fontSize: 11, 
                        fontWeight: FontWeight.w800, 
                        color: Colors.white
                      )
                    ),
                  )
                  : Container()
              ),
              Positioned(
                top: 130,
                left: 28,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 29),
                    minimumSize: const Size(15, 25)
                  ),
                  child: const Text(
                    'Buy now!',
                    style: TextStyle(
                      fontFamily: 'SFPro', 
                      fontSize: 12, 
                      fontWeight: FontWeight.w800, 
                      color: Colors.black
                    )
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:figma_ecommerce_project/features/product/domain/entities/product_entity.dart';
import 'package:figma_ecommerce_project/features/product/domain/usecases/product_usecase.dart';
import 'package:figma_ecommerce_project/features/product/presentation/bloc/product_event.dart';
import 'package:figma_ecommerce_project/features/product/presentation/bloc/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetAllProductsUseCase getAllProductsUseCase;

  ProductBloc({required this.getAllProductsUseCase})
      : super(ProductLoadingState()) {
    on<ProductEvent>((event, emit) async {
      emit(ProductLoadingState());
      List<ProductEntity> _productList = [];
      final _loadedProductList = await getAllProductsUseCase();

      _loadedProductList.fold(
          (l) => emit(const ProductErrorState(message: 'error')),
          (r) => _productList.addAll(r));

      emit(ProductLoadedState(loadedProduct: _productList));
    });
  }
}

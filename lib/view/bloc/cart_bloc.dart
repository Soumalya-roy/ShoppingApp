import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/product.dart';
import 'event/cart_event.dart';
import 'state/cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(ProductAdded(cartItem: []));

  final List<Product> _cartItems = [];
  List<Product> get items => _cartItems;
  bool isGridView = true;

  @override
  Stream<CartState> mapEventToState(CartEvent event) async* {
    if (event is AddProduct) {
      _cartItems.add(event.productIndex);
      yield ProductAdded(cartItem: _cartItems);
    } else if (event is RemoveProduct) {
      _cartItems.remove(event.productIndex);
      yield ProductRemoved(cartItem: _cartItems);
    } else if (event is ChangeGalleryView) {
      isGridView = event.isGridView;
      yield ChangeGalleryViewState(isGridView: isGridView);
    }
  }
}

//abstract class CartState {}

class ProductAdded extends CartState {
  final List<Product> cartItem;

  ProductAdded({required this.cartItem});
}

class ProductRemoved extends CartState {
  final List<Product> cartItem;

  ProductRemoved({required this.cartItem});
}

class ChangeGalleryViewState extends CartState {
  final bool isGridView;

  ChangeGalleryViewState({required this.isGridView});
}

// abstract class CartEvent {}

// class AddedProduct extends CartEvent {
//   final Product productIndex;

//   AddedProduct({required this.productIndex});
// }

// class RemoveProduct extends CartEvent {
//   final Product productIndex;

//   RemoveProduct({required this.productIndex});
// }

// class ChangeGalleryView extends CartEvent {
//   final bool isGridView;

//   ChangeGalleryView({required this.isGridView});
// }

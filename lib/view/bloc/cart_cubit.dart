// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';

// import '../models/product.dart';



// class CartCubit extends Cubit<CartState> {
//   CartCubit() : super(CartState());

//   void addToCart(Product product) {
//     final updatedItems = [...state.cartItems, product];
//     emit(state.copyWith(cartItems: updatedItems));
//   }

//   void removeFromCart(Product product) {
//     final updatedItems = List.from(state.cartItems)..remove(product);
//     emit(state.copyWith(cartItems: updatedItems));
//   }
// }

// class CartState extends Equatable {
//   final List<Product> cartItems;

//   const CartState({this.cartItems = const []});

//   @override
//   List<Object> get props => [cartItems];
  
// }

// BlocProvider(
//   create: (context) => CartCubit(),
//   child: YourWidget(),
// ),

// class YourWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final cartCubit = BlocProvider.of<CartCubit>(context);

//     return Scaffold(
//       // Your widget content
//     );
//   }
// }

import 'package:equatable/equatable.dart';
import '../../models/product.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class AddProduct extends CartEvent {
  final Product productIndex;

  const AddProduct(this.productIndex);

  @override
  List<Object> get props => [productIndex];

  @override
  String toString() => 'AddProduct{index: $productIndex}';
}

class RemoveProduct extends CartEvent {
  final Product productIndex;

  const RemoveProduct(this.productIndex);

  @override
  List<Object> get props => [productIndex];

  @override
  String toString() => 'RemoveProduct{index: $productIndex}';
}

class ChangeGalleryView extends CartEvent {
  final bool isGridView;

  const ChangeGalleryView(this.isGridView);

  @override
  List<Object> get props => [isGridView];

  @override
  String toString() => 'ChangeGalleryView{value: $isGridView}';
}

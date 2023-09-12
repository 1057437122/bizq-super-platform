import 'package:bizqplatform/model/tip_model.dart';
import 'package:equatable/equatable.dart';

abstract class TipsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class TipsEmpty extends TipsState {}

class TipsData extends TipsState {
  final TipsModel tipsModel;
  TipsData(this.tipsModel);
  @override
  List<Object?> get props => [tipsModel];
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'mypage_action.freezed.dart';

@freezed
class MypageAction<T> with _$MypageAction<T> {
  const factory MypageAction.refresh() = Refresh;
}

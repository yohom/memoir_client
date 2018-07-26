import 'package:flutter/material.dart';
import 'package:memoir/app/model/bean/page_change.dart';
import 'package:memoir/framework/res.dart';
import 'package:memoir/framework/ui.dart';

class BackToIndex extends BaseStatelessWidget {
  const BackToIndex({
    Key key,
  }) : super(key: key);

  @override
  Widget delegateBuild(BuildContext context) {
    final bloc = BlocProvider.of(context).storyBloc;
    return SafeArea(
      child: StreamWidget<PageChange>(
        // 只接受自然滑动事件, 因为自然滑动和手动返回的滑动会有一个值相同的事件产生
        // 用其中一个就可以了
        stream: bloc.pageChange.stream
            .where((pageChange) => !pageChange.triggeredByBack),
        initData: PageChange(0),
        isExpanded: false,
        showLoading: false,
        builder: (data) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            transform: Matrix4.translationValues(
              data.page > 0 ? 0.0 : -100.0,
              0.0,
              0.0,
            ),
            child: IconButton(
              padding: EdgeInsets.only(left: space_big),
              icon: Icon(Icons.keyboard_arrow_left, size: 30.0),
              onPressed: () {
                bloc.pageChange.add(PageChange(0, triggeredByBack: true));
              },
            ),
          );
        },
      ),
    );
  }
}

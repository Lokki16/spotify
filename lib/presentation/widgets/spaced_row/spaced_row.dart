import 'package:spotify/presentation/template/base/template.dart';

class SpacedRow extends StatelessWidget {
  final double space;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final List<Widget> children;

  const SpacedRow({
    Key? key,
    this.space = 0,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    for (var child in children) {
      widgets.add(child);
      if (children.last != child) {
        widgets.add(SizedBox(
          width: space.w,
        ));
      }
    }
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: widgets,
    );
  }
}

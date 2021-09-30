import 'package:board_ui/src/controllers/advanceController.dart';
import 'package:flutter/material.dart';

class AdvancedSegment extends StatefulWidget {
  const AdvancedSegment({
    Key? key,
    required this.segments,
    this.controller,
    this.activeStyle = const TextStyle(
      fontWeight: FontWeight.w600,
    ),
    this.inactiveStyle,
    required this.onValueChanged,
    required this.value,
    this.itemPadding = const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 10,
    ),
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    this.backgroundColor = Colors.black26,
    this.sliderColor = Colors.white,
    this.sliderOffset = 2.0,
    this.animationDuration = const Duration(milliseconds: 250),
    this.shadow = const <BoxShadow>[
      BoxShadow(
        color: Colors.black26,
        blurRadius: 8.0,
      ),
    ],
  })  : assert(segments.length > 1, 'Minimum segments amount is 2'),
        super(key: key);

  /// Controls segments selection.
  final AdvancedSegmentController? controller;

  /// Map of segments should be more than one keys.
  final Map<String, String> segments;

  /// Active text style.
  final TextStyle activeStyle;

  /// Inactive text style.
  final TextStyle? inactiveStyle;

  /// Padding of each item.
  final EdgeInsetsGeometry itemPadding;

  /// Common border radius.
  final BorderRadius borderRadius;

  /// Color of slider.
  final Color sliderColor;

  /// Layout background color.
  final Color backgroundColor;

  /// Gap between slider and layout.
  final double sliderOffset;

  /// Selection animation duration.
  final Duration animationDuration;

  final String value;

  final ValueChanged<String> onValueChanged;

  /// Slide's Shadow
  final List<BoxShadow>? shadow;

  @override
  _AdvancedSegmentState createState() => _AdvancedSegmentState();
}

class _AdvancedSegmentState extends State<AdvancedSegment>
    with SingleTickerProviderStateMixin {
  final _defaultTextStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Colors.black,
  );

  late AnimationController _animationController;
  late AdvancedSegmentController _controller;
  late Size _itemSize;
  late Size _containerSize;

  @override
  void initState() {
    super.initState();

    _controller = widget.controller ??
        AdvancedSegmentController(widget.segments.keys.first);

    _controller.addListener(() {
      final animationValue = _obtainAnimationValue();

      _animationController.animateTo(
        animationValue,
        duration: widget.animationDuration,
      );
    });

    initSizes();

    _animationController = AnimationController(
      vsync: this,
      value: _obtainAnimationValue(),
      duration: widget.animationDuration,
    );
  }

  void initSizes() {
    final maxSize = widget.segments.values
        .map((text) => _obtainTextSize(text))
        .reduce((value, element) =>
            value.width.compareTo(element.width) >= 1 ? value : element);

    _itemSize = Size(
      maxSize.width + widget.itemPadding.horizontal,
      maxSize.height + widget.itemPadding.vertical,
    );

    _containerSize = Size(
      _itemSize.width * widget.segments.length,
      _itemSize.height,
    );
  }

  @override
  void didUpdateWidget(covariant AdvancedSegment oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.segments != widget.segments) {
      initSizes();

      _animationController.value = _obtainAnimationValue();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _containerSize.width,
      height: _containerSize.height,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: widget.borderRadius,
      ),
      child: Opacity(
        opacity: widget.controller != null ? 1 : 0.75,
        child: Stack(
          children: [
            _buildSlider(),
            _buildSegments(),
          ],
        ),
      ),
    );
  }

  Widget _buildSlider() {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Transform.translate(
          offset: Tween<Offset>(
            begin: Offset(0, 0),
            end: Offset(_itemSize.width * (widget.segments.length - 1), 0),
          )
              .animate(CurvedAnimation(
                parent: _animationController,
                curve: Curves.linear,
              ))
              .value,
          child: child,
        );
      },
      child: Container(
        margin: EdgeInsets.all(widget.sliderOffset),
        decoration: BoxDecoration(
          color: widget.sliderColor,
          borderRadius: widget.borderRadius
              .subtract(BorderRadius.all(Radius.circular(widget.sliderOffset))),
          boxShadow: widget.shadow,
        ),
        child: SizedBox(
          width: _itemSize.width - widget.sliderOffset * 2,
          height: _itemSize.height - widget.sliderOffset * 2,
        ),
      ),
    );
  }

  Widget _buildSegments() {
    return ValueListenableBuilder<String>(
      valueListenable: _controller,
      builder: (_, value, __) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: widget.segments.entries.map((entry) {
            return GestureDetector(
              onTap: () => _handleSegmentPressed(entry.key),
              child: Container(
                width: _itemSize.width,
                height: _itemSize.height,
                color: Colors.transparent,
                child: AnimatedDefaultTextStyle(
                  duration: widget.animationDuration,
                  style: _defaultTextStyle.merge(value == entry.key
                      ? widget.activeStyle
                      : widget.inactiveStyle),
                  overflow: TextOverflow.clip,
                  maxLines: 1,
                  softWrap: false,
                  child: Center(
                    child: Text(entry.value),
                  ),
                ),
              ),
            );
          }).toList(growable: false),
        );
      },
    );
  }

  Size _obtainTextSize(String text) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: _defaultTextStyle.merge(widget.activeStyle),
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(
        minWidth: 0,
        maxWidth: double.infinity,
      );

    return textPainter.size;
  }

  double _obtainAnimationValue() {
    return widget.segments.keys
            .toList(growable: false)
            .indexOf(_controller.value)
            .toDouble() /
        (widget.segments.keys.length - 1);
  }

  void _handleSegmentPressed(String value) {
    if (widget.controller != null) {
      _controller.value = value;
    }
  }

  @override
  void dispose() {
    _animationController.dispose();

    if (widget.controller == null) {
      _controller.dispose();
    }

    super.dispose();
  }
}











// import 'package:flutter/material.dart';

// class AdvancedSegment extends StatefulWidget {
//   const AdvancedSegment({
//     Key? key,
//     required this.segments,
//     this.activeStyle = const TextStyle(
//       fontWeight: FontWeight.w600,
//     ),
//     required this.inactiveStyle,
//     this.itemPadding = const EdgeInsets.symmetric(
//       horizontal: 45,
//       vertical: 8,
//     ),
//     this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
//     this.backgroundColor = Colors.black26,
//     this.sliderColor = Colors.white,
//     this.sliderOffset  =  0.0,
//     this.animationDuration = const Duration(milliseconds: 250),
//     this.shadow = const <BoxShadow>[
//       BoxShadow(
//         // color: Colors.white,
//         // blurRadius: 8.0,
//       ),
//     ],
//     required this.value,
//     this.textPadding,
//     required this.onValueChanged,
//   })  : assert(segments.length > 1, 'Minimum segments amount is 2'),
//         super(key: key);

//   final Map<String, String> segments;
//   // final TabController? controller;

//   final String value;
//   final TextStyle activeStyle;
//   final TextStyle inactiveStyle;
//   final EdgeInsetsGeometry? textPadding;
//   final BorderRadius borderRadius;
  // final ValueChanged<String> onValueChanged;
//   final Color sliderColor;
//   final Duration animationDuration;
//   final Color backgroundColor;
//   final List<BoxShadow> shadow;
//   final EdgeInsetsGeometry itemPadding;

//   final double? sliderOffset;

//   @override
//   _AdvancedSegmentState createState() => _AdvancedSegmentState();
// }

// class _AdvancedSegmentState extends State<AdvancedSegment>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Size _maxSize;
//   late Size _itemSize;

//   @override
//   void initState() {
//     super.initState();

//     initSizes();

//     _animationController = AnimationController(
//       vsync: this,
//       duration: Duration(milliseconds: 250),
//       value: _obtainAnimationValue(),
//     );
//   }

//   @override
//   void didUpdateWidget(covariant AdvancedSegment oldWidget) {
//     if (oldWidget.value == widget.value) {
//       super.didUpdateWidget(oldWidget);
//       return;
//     }

//     _animationController.animateTo(_obtainAnimationValue());

//     super.didUpdateWidget(oldWidget);
//   }

//   void initSizes() {
//     _maxSize = widget.segments.values
//         .map((text) => _obtainTextSize(text, widget.activeStyle))
//         .reduce((value, element) => value > element ? value : element);

//     _itemSize = Size(
//       _maxSize.width + widget.textPadding!.horizontal,
//       _maxSize.height + widget.textPadding!.vertical,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: _itemSize.width * widget.segments.length,
//       height: _itemSize.height,
//       clipBehavior: Clip.antiAlias,
//       decoration: BoxDecoration(
//         color: widget.backgroundColor,
//         borderRadius: widget.borderRadius,
//       ),
//       child: Opacity(
//         // ignore: unnecessary_null_comparison
//         opacity: widget.onValueChanged != null ? 1 : 0.75,
//         child: Stack(
//           clipBehavior: Clip.antiAlias,
//           children: [
//             _buildSlider(),
//             _buildSegments(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildSlider() {
//     // ignore: unused_local_variable
//     final theme = Theme.of(context);

//     return AnimatedBuilder(
//       animation: _animationController,
//       builder: (context, child) {
//         return Transform.translate(
//           offset: Tween<Offset>(
//             begin: Offset(4, 4),
//             end: Offset(_itemSize.width * (widget.segments.length - 1), 0),
//           )
//               .animate(CurvedAnimation(
//                 parent: _animationController,
//                 curve: Curves.easeInOut,
//               ))
//               .value,
//           child: child,
//         );
//       },
//       child: Container(
//         width: _itemSize.width,
//         height: _itemSize.height,
//         padding: EdgeInsets.all(2.0),
//         child: DecoratedBox(
//           decoration: BoxDecoration(
//             color: widget.sliderColor,
//             borderRadius:
//                 widget.borderRadius.subtract(BorderRadius.circular(2.0)),
//             boxShadow: <BoxShadow>[
//               BoxShadow(
//                 color: Colors.black26,
//                 blurRadius: 8.0,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSegments() {
//     final segmentsList = widget.segments.entries.map((entry) {
//       final selected = widget.value == entry.key;

//       return InkWell(
//         onTap: () => _handleSegmentPressed(entry.key),
//         child: DefaultTextStyle(
//           style: TextStyle(
//             fontWeight: FontWeight.w500,
//             fontSize: 14,
//             color: selected ? Colors.black45 : Colors.black87,
//           ),
//           child: Container(
//             width: _itemSize.width,
//             child: Center(
//               child: Text(
//                 entry.value,
//                 style: selected ? widget.activeStyle : widget.inactiveStyle,
//               ),
//             ),
//           ),
//         ),
//       );
//     }).toList(growable: false);

//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: segmentsList,
//     );
//   }

//   Size _obtainTextSize(String text, TextStyle style) {
//     final textPainter = TextPainter(
//       text: TextSpan(
//         text: text,
//         style: style,
//       ),
//       maxLines: 1,
//       textDirection: TextDirection.ltr,
//     )..layout(
//         minWidth: 0,
//         maxWidth: double.infinity,
//       );

//     return textPainter.size;
//   }

//   double _obtainAnimationValue() {
//     final index = widget.segments.keys
//         .toList(growable: false)
//         .indexOf(widget.value)
//         .toDouble();

//     return index / (widget.segments.keys.length - 1);
//   }

//   void _handleSegmentPressed(String value) {
//     // ignore: unnecessary_null_comparison
//     if (widget.onValueChanged != null) {
//       widget.onValueChanged(value);
//     }
//   }
// }

import 'package:flutter/material.dart';

class HoverButton extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? hoverColor;
  final bool outlined;
  final EdgeInsetsGeometry padding;

  const HoverButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.backgroundColor,
    this.hoverColor,
    this.outlined = false,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
  });

  @override
  State<HoverButton> createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bgColor = widget.backgroundColor ?? theme.primaryColor;
    final hoverColor =
        widget.hoverColor ?? theme.primaryColor.withValues(alpha: 0.8);

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          padding: widget.padding,
          decoration: BoxDecoration(
            color: widget.outlined
                ? Colors.transparent
                : (_isHovered ? hoverColor : bgColor),
            border: widget.outlined
                ? Border.all(color: _isHovered ? hoverColor : bgColor, width: 2)
                : null,
            borderRadius: BorderRadius.circular(12),
            boxShadow: _isHovered && !widget.outlined
                ? [
                    BoxShadow(
                      color: hoverColor.withValues(alpha: 0.4),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : [],
          ),
          child: DefaultTextStyle(
            style: TextStyle(
              color: widget.outlined
                  ? (_isHovered ? hoverColor : bgColor)
                  : Colors.white,
              fontWeight: FontWeight.bold,
            ),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}

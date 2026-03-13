import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_portfolio/main.dart';

void main() {
  testWidgets('Portfolio smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const PortfolioApp());
    expect(find.text('Esteban Rodriguez'), findsWidgets);
  });
}

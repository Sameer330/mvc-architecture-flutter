import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SimpleBarChart extends StatelessWidget {
  final List<charts.Series<dynamic, String>> seriesList;
  final bool animate;
  const SimpleBarChart({
    Key? key,
    required this.seriesList,
    required this.animate,
  }) : super(key: key);

  factory SimpleBarChart.withSampleData() {
    return SimpleBarChart(
      seriesList: _createSampleData(),
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: animate,
    );
  }

  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      OrdinalSales('Today', 55),
      OrdinalSales('Yesterday', 25),
      OrdinalSales('2 Days', 100),
      OrdinalSales('24 Jun', 75),
      OrdinalSales('23 Jun', 38),
      OrdinalSales('22 Jun', 87),
      OrdinalSales('21 Jun', 60),
    ];

    return [
      charts.Series<OrdinalSales, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}

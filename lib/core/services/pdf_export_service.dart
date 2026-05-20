import 'package:financial_ccounting/core/constants/currency_enum.dart';
import 'package:financial_ccounting/features/add_finance/data/models/expense_model/expense_model.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class PdfExportService {
  Future<void> exportExpenses(
    List<GetExpenseModel> expenses,
    CurrencyEnum currency,
  ) async {
    final pdf = pw.Document();
    final dateFormat = DateFormat('dd MMM yyyy');

    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) => [
          pw.Text(
            'Expense History',
            style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold),
          ),
          pw.SizedBox(height: 16),
          pw.Table(
            border: pw.TableBorder.all(color: PdfColors.grey300),
            columnWidths: {
              0: pw.FlexColumnWidth(2),
              1: pw.FlexColumnWidth(2),
              2: pw.FlexColumnWidth(1.5),
              3: pw.FlexColumnWidth(1.5),
            },
            children: [
              pw.TableRow(
                decoration: pw.BoxDecoration(color: PdfColors.grey200),
                children: [
                  _cell('Title', bold: true),
                  _cell('Category', bold: true),
                  _cell('Amount, ${currency.title}', bold: true),
                  _cell('Date', bold: true),
                ],
              ),
              ...expenses.map(
                (e) => pw.TableRow(
                  children: [
                    _cell(e.title),
                    _cell(e.category.title),
                    _cell(e.amount.toStringAsFixed(2)),
                    _cell(dateFormat.format(DateTime.parse(e.date))),
                  ],
                ),
              ),
            ],
          ),
          pw.SizedBox(height: 16),
          pw.Text(
            'Total: ${expenses.fold(0.0, (sum, e) => sum + e.amount).toStringAsFixed(2)} ${currency.title}',
            style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
          ),
        ],
      ),
    );

    await Printing.sharePdf(bytes: await pdf.save(), filename: 'expenses.pdf');
  }

  pw.Widget _cell(String text, {bool bold = false}) {
    return pw.Padding(
      padding: pw.EdgeInsets.all(6),
      child: pw.Text(
        text,
        style: pw.TextStyle(
          fontWeight: bold ? pw.FontWeight.bold : pw.FontWeight.normal,
        ),
      ),
    );
  }
}

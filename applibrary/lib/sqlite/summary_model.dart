class SummaryModel {
  final int? summaryId;
  final String summaryTitle;
  final String summaryContent;
  final String createdAt;

  SummaryModel({
    this.summaryId,
    required this.summaryTitle,
    required this.summaryContent,
    required this.createdAt,
  });

  factory SummaryModel.fromMap(Map<String, dynamic> json) => SummaryModel(
        summaryId: json["summaryId"],
        summaryTitle: json["summaryTitle"],
        summaryContent: json["summaryContent"],
        createdAt: json["createdAt"],
      );

  Map<String, dynamic> toMap() => {
        "summaryId": summaryId,
        "summaryTitle": summaryTitle,
        "summaryContent": summaryContent,
        "createdAt": createdAt,
      };
}
.class Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;
.super Lme/kuehle/carreport/reports/AbstractReportGraphData;
.source "CostsReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/reports/CostsReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportGraphData"
.end annotation


# instance fields
.field private option:I

.field final synthetic this$0:Lme/kuehle/carreport/reports/CostsReport;


# direct methods
.method public constructor <init>(Lme/kuehle/carreport/reports/CostsReport;Landroid/content/Context;Lme/kuehle/carreport/db/Car;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "car"    # Lme/kuehle/carreport/db/Car;
    .param p4, "option"    # I

    .prologue
    .line 86
    iput-object p1, p0, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->this$0:Lme/kuehle/carreport/reports/CostsReport;

    .line 87
    invoke-virtual {p3}, Lme/kuehle/carreport/db/Car;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lme/kuehle/carreport/db/Car;->getColor()I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lme/kuehle/carreport/reports/AbstractReportGraphData;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 88
    iput p4, p0, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->option:I

    .line 89
    return-void
.end method


# virtual methods
.method public add(Lorg/joda/time/DateTime;D)V
    .locals 7
    .param p1, "date"    # Lorg/joda/time/DateTime;
    .param p2, "costs"    # D

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 92
    iget v1, p0, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->option:I

    if-nez v1, :cond_0

    .line 93
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p1}, Lorg/joda/time/DateTime;->getYear()I

    move-result v1

    invoke-virtual {p1}, Lorg/joda/time/DateTime;->getMonthOfYear()I

    move-result v2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/DateTime;-><init>(IIIII)V

    .end local p1    # "date":Lorg/joda/time/DateTime;
    .local v0, "date":Lorg/joda/time/DateTime;
    move-object p1, v0

    .line 99
    .end local v0    # "date":Lorg/joda/time/DateTime;
    .restart local p1    # "date":Lorg/joda/time/DateTime;
    :goto_0
    iget-object v1, p0, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->xValues:Ljava/util/Vector;

    invoke-virtual {p1}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 100
    .local v6, "index":I
    const/4 v1, -0x1

    if-ne v6, v1, :cond_1

    .line 101
    iget-object v1, p0, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->xValues:Ljava/util/Vector;

    invoke-virtual {p1}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->yValues:Ljava/util/Vector;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 106
    :goto_1
    return-void

    .line 96
    .end local v6    # "index":I
    :cond_0
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p1}, Lorg/joda/time/DateTime;->getYear()I

    move-result v1

    move v2, v3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/DateTime;-><init>(IIIII)V

    .end local p1    # "date":Lorg/joda/time/DateTime;
    .restart local v0    # "date":Lorg/joda/time/DateTime;
    move-object p1, v0

    .end local v0    # "date":Lorg/joda/time/DateTime;
    .restart local p1    # "date":Lorg/joda/time/DateTime;
    goto :goto_0

    .line 104
    .restart local v6    # "index":I
    :cond_1
    iget-object v2, p0, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->yValues:Ljava/util/Vector;

    iget-object v1, p0, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->yValues:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    add-double/2addr v3, p2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public createRegressionData()Lme/kuehle/carreport/reports/AbstractReportGraphData;
    .locals 7

    .prologue
    .line 110
    invoke-virtual {p0}, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 111
    invoke-super {p0}, Lme/kuehle/carreport/reports/AbstractReportGraphData;->createRegressionData()Lme/kuehle/carreport/reports/AbstractReportGraphData;

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 114
    :cond_0
    iget-object v5, p0, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->xValues:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 115
    .local v1, "lastX":J
    iget-object v5, p0, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->xValues:Ljava/util/Vector;

    iget-object v6, p0, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->xValues:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 116
    iget-object v5, p0, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->yValues:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 117
    .local v3, "lastY":D
    iget-object v5, p0, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->yValues:Ljava/util/Vector;

    iget-object v6, p0, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->yValues:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 118
    invoke-super {p0}, Lme/kuehle/carreport/reports/AbstractReportGraphData;->createRegressionData()Lme/kuehle/carreport/reports/AbstractReportGraphData;

    move-result-object v0

    .line 119
    .local v0, "data":Lme/kuehle/carreport/reports/AbstractReportGraphData;
    iget-object v5, p0, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->xValues:Ljava/util/Vector;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v5, p0, Lme/kuehle/carreport/reports/CostsReport$ReportGraphData;->yValues:Ljava/util/Vector;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

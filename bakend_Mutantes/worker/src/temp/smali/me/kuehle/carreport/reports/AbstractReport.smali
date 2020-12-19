.class public abstract Lme/kuehle/carreport/reports/AbstractReport;
.super Ljava/lang/Object;
.source "AbstractReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;
    }
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

.field private data:Lme/kuehle/carreport/reports/ReportData;

.field protected dateLabelFormatter:Lme/kuehle/chartlib/axis/AxisLabelFormatter;

.field private showTrend:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lme/kuehle/carreport/reports/ReportData;

    invoke-direct {v0}, Lme/kuehle/carreport/reports/ReportData;-><init>()V

    iput-object v0, p0, Lme/kuehle/carreport/reports/AbstractReport;->data:Lme/kuehle/carreport/reports/ReportData;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/kuehle/carreport/reports/AbstractReport;->showTrend:Z

    .line 65
    new-instance v0, Lme/kuehle/carreport/reports/AbstractReport$1;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/reports/AbstractReport$1;-><init>(Lme/kuehle/carreport/reports/AbstractReport;)V

    iput-object v0, p0, Lme/kuehle/carreport/reports/AbstractReport;->dateLabelFormatter:Lme/kuehle/chartlib/axis/AxisLabelFormatter;

    .line 74
    iput-object p1, p0, Lme/kuehle/carreport/reports/AbstractReport;->context:Landroid/content/Context;

    .line 75
    return-void
.end method


# virtual methods
.method protected addData(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V
    .locals 1
    .param p1, "item"    # Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;

    .prologue
    .line 78
    iget-object v0, p0, Lme/kuehle/carreport/reports/AbstractReport;->data:Lme/kuehle/carreport/reports/ReportData;

    invoke-virtual {v0}, Lme/kuehle/carreport/reports/ReportData;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method protected addDataSection(Ljava/lang/String;I)Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lme/kuehle/carreport/reports/AbstractReport;->addDataSection(Ljava/lang/String;II)Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    move-result-object v0

    return-object v0
.end method

.method protected addDataSection(Ljava/lang/String;II)Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "stick"    # I

    .prologue
    .line 86
    new-instance v0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    invoke-direct {v0, p1, p2, p3}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;-><init>(Ljava/lang/String;II)V

    .line 87
    .local v0, "section":Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    iget-object v1, p0, Lme/kuehle/carreport/reports/AbstractReport;->data:Lme/kuehle/carreport/reports/ReportData;

    invoke-virtual {v1}, Lme/kuehle/carreport/reports/ReportData;->getData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    return-object v0
.end method

.method protected applyDefaultChartStyles(Lme/kuehle/chartlib/chart/Chart;)V
    .locals 4
    .param p1, "chart"    # Lme/kuehle/chartlib/chart/Chart;

    .prologue
    const/16 v3, 0xe

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1}, Lme/kuehle/chartlib/chart/Chart;->getDomainAxis()Lme/kuehle/chartlib/axis/AbstractAxis;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lme/kuehle/chartlib/axis/AbstractAxis;->setFontSize(II)V

    .line 93
    invoke-virtual {p1}, Lme/kuehle/chartlib/chart/Chart;->getDomainAxis()Lme/kuehle/chartlib/axis/AbstractAxis;

    move-result-object v0

    invoke-virtual {v0, v1}, Lme/kuehle/chartlib/axis/AbstractAxis;->setShowGrid(Z)V

    .line 94
    invoke-virtual {p1}, Lme/kuehle/chartlib/chart/Chart;->getRangeAxis()Lme/kuehle/chartlib/axis/AbstractAxis;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lme/kuehle/chartlib/axis/AbstractAxis;->setFontSize(II)V

    .line 95
    invoke-virtual {p1}, Lme/kuehle/chartlib/chart/Chart;->getRangeAxis()Lme/kuehle/chartlib/axis/AbstractAxis;

    move-result-object v0

    invoke-virtual {v0, v1}, Lme/kuehle/chartlib/axis/AbstractAxis;->setZoomable(Z)V

    .line 96
    invoke-virtual {p1}, Lme/kuehle/chartlib/chart/Chart;->getRangeAxis()Lme/kuehle/chartlib/axis/AbstractAxis;

    move-result-object v0

    invoke-virtual {v0, v1}, Lme/kuehle/chartlib/axis/AbstractAxis;->setMovable(Z)V

    .line 97
    invoke-virtual {p1}, Lme/kuehle/chartlib/chart/Chart;->getLegend()Lme/kuehle/chartlib/chart/Legend;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lme/kuehle/chartlib/chart/Legend;->setFontSize(II)V

    .line 98
    return-void
.end method

.method public abstract getCalculationOptions()[Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;
.end method

.method public abstract getChart(I)Lme/kuehle/chartlib/chart/Chart;
.end method

.method public getData()Lme/kuehle/carreport/reports/ReportData;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lme/kuehle/carreport/reports/AbstractReport;->data:Lme/kuehle/carreport/reports/ReportData;

    invoke-virtual {v0}, Lme/kuehle/carreport/reports/ReportData;->getData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 106
    iget-object v0, p0, Lme/kuehle/carreport/reports/AbstractReport;->data:Lme/kuehle/carreport/reports/ReportData;

    return-object v0
.end method

.method protected getDateFormatPattern()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    iget-object v1, p0, Lme/kuehle/carreport/reports/AbstractReport;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 111
    .local v0, "dateFormat":Ljava/text/DateFormat;
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    .line 112
    check-cast v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .restart local v0    # "dateFormat":Ljava/text/DateFormat;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getGraphOptions()[I
.end method

.method public isShowTrend()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lme/kuehle/carreport/reports/AbstractReport;->showTrend:Z

    return v0
.end method

.method public setShowTrend(Z)V
    .locals 0
    .param p1, "showTrend"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lme/kuehle/carreport/reports/AbstractReport;->showTrend:Z

    .line 127
    return-void
.end method

.class public Lme/kuehle/carreport/reports/MileageReport;
.super Lme/kuehle/carreport/reports/AbstractReport;
.source "MileageReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataNormal;,
        Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataAccumulated;
    }
.end annotation


# static fields
.field public static final GRAPH_OPTION_ACCUMULATED:I = 0x0

.field public static final GRAPH_OPTION_NORMAL:I = 0x1


# instance fields
.field private minXValue:[D

.field private reportDataAccumulated:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lme/kuehle/carreport/reports/AbstractReportGraphData;",
            ">;"
        }
    .end annotation
.end field

.field private reportDataNormal:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lme/kuehle/carreport/reports/AbstractReportGraphData;",
            ">;"
        }
    .end annotation
.end field

.field private showLegend:Z

.field private unit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct/range {p0 .. p1}, Lme/kuehle/carreport/reports/AbstractReport;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lme/kuehle/carreport/reports/MileageReport;->reportDataAccumulated:Ljava/util/Vector;

    .line 67
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lme/kuehle/carreport/reports/MileageReport;->reportDataNormal:Ljava/util/Vector;

    .line 68
    const/4 v11, 0x2

    new-array v11, v11, [D

    fill-array-data v11, :array_0

    move-object/from16 v0, p0

    iput-object v11, v0, Lme/kuehle/carreport/reports/MileageReport;->minXValue:[D

    .line 77
    new-instance v9, Lme/kuehle/carreport/Preferences;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 78
    .local v9, "prefs":Lme/kuehle/carreport/Preferences;
    invoke-virtual {v9}, Lme/kuehle/carreport/Preferences;->getUnitDistance()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lme/kuehle/carreport/reports/MileageReport;->unit:Ljava/lang/String;

    .line 79
    invoke-virtual {v9}, Lme/kuehle/carreport/Preferences;->isShowLegend()Z

    move-result v11

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lme/kuehle/carreport/reports/MileageReport;->showLegend:Z

    .line 82
    invoke-static {}, Lme/kuehle/carreport/db/Car;->getAll()[Lme/kuehle/carreport/db/Car;

    move-result-object v6

    .line 83
    .local v6, "cars":[Lme/kuehle/carreport/db/Car;
    move-object v2, v6

    .local v2, "arr$":[Lme/kuehle/carreport/db/Car;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v3, v2, v7

    .line 86
    .local v3, "car":Lme/kuehle/carreport/db/Car;
    invoke-virtual {v3}, Lme/kuehle/carreport/db/Car;->isSuspended()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 87
    const-string v11, "%s [%s]"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v3}, Lme/kuehle/carreport/db/Car;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const v14, 0x7f090014

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lme/kuehle/carreport/db/Car;->getColor()I

    move-result v12

    const v13, 0x7fffffff

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lme/kuehle/carreport/reports/MileageReport;->addDataSection(Ljava/lang/String;II)Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    move-result-object v10

    .line 96
    .local v10, "section":Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    :goto_1
    new-instance v4, Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataAccumulated;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1, v3}, Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataAccumulated;-><init>(Lme/kuehle/carreport/reports/MileageReport;Landroid/content/Context;Lme/kuehle/carreport/db/Car;)V

    .line 98
    .local v4, "carDataAccumulated":Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataAccumulated;
    invoke-virtual {v4}, Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataAccumulated;->size()I

    move-result v11

    if-lez v11, :cond_0

    .line 99
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/reports/MileageReport;->reportDataAccumulated:Ljava/util/Vector;

    invoke-virtual {v11, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 100
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/reports/MileageReport;->minXValue:[D

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/carreport/reports/MileageReport;->minXValue:[D

    const/4 v14, 0x0

    aget-wide v13, v13, v14

    invoke-virtual {v4}, Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataAccumulated;->getSeries()Lme/kuehle/chartlib/data/Series;

    move-result-object v15

    invoke-virtual {v15}, Lme/kuehle/chartlib/data/Series;->minX()D

    move-result-wide v15

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    aput-wide v13, v11, v12

    .line 106
    :cond_0
    new-instance v5, Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataNormal;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v5, v0, v1, v3}, Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataNormal;-><init>(Lme/kuehle/carreport/reports/MileageReport;Landroid/content/Context;Lme/kuehle/carreport/db/Car;)V

    .line 108
    .local v5, "carDataNormal":Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataNormal;
    invoke-virtual {v5}, Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataNormal;->size()I

    move-result v11

    if-nez v11, :cond_2

    .line 109
    new-instance v11, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;

    const v12, 0x7f090066

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-direct {v11, v12, v13}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->addItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V

    .line 83
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 92
    .end local v4    # "carDataAccumulated":Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataAccumulated;
    .end local v5    # "carDataNormal":Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataNormal;
    .end local v10    # "section":Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    :cond_1
    invoke-virtual {v3}, Lme/kuehle/carreport/db/Car;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lme/kuehle/carreport/db/Car;->getColor()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lme/kuehle/carreport/reports/MileageReport;->addDataSection(Ljava/lang/String;I)Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    move-result-object v10

    .restart local v10    # "section":Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    goto :goto_1

    .line 112
    .restart local v4    # "carDataAccumulated":Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataAccumulated;
    .restart local v5    # "carDataNormal":Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataNormal;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/reports/MileageReport;->reportDataNormal:Ljava/util/Vector;

    invoke-virtual {v11, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 113
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/carreport/reports/MileageReport;->minXValue:[D

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/carreport/reports/MileageReport;->minXValue:[D

    const/4 v14, 0x1

    aget-wide v13, v13, v14

    invoke-virtual {v5}, Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataNormal;->getSeries()Lme/kuehle/chartlib/data/Series;

    move-result-object v15

    invoke-virtual {v15}, Lme/kuehle/chartlib/data/Series;->minX()D

    move-result-wide v15

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    aput-wide v13, v11, v12

    .line 117
    new-instance v12, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;

    const v11, 0x7f09006a

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "%d %s"

    const/4 v11, 0x2

    new-array v15, v11, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v11, v5, Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataNormal;->yValues:Ljava/util/Vector;

    invoke-static {v11}, Lme/kuehle/carreport/util/Calculator;->max(Ljava/util/Vector;)Ljava/lang/Number;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v15, v16

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/kuehle/carreport/reports/MileageReport;->unit:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v15, v11

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v13, v11}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->addItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V

    .line 121
    new-instance v12, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;

    const v11, 0x7f090069

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "%d %s"

    const/4 v11, 0x2

    new-array v15, v11, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v11, v5, Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataNormal;->yValues:Ljava/util/Vector;

    invoke-static {v11}, Lme/kuehle/carreport/util/Calculator;->min(Ljava/util/Vector;)Ljava/lang/Number;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v15, v16

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/kuehle/carreport/reports/MileageReport;->unit:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v15, v11

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v13, v11}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->addItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V

    .line 125
    new-instance v12, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;

    const v11, 0x7f09006d

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "%d %s"

    const/4 v11, 0x2

    new-array v15, v11, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v11, v5, Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataNormal;->yValues:Ljava/util/Vector;

    invoke-static {v11}, Lme/kuehle/carreport/util/Calculator;->avg(Ljava/util/Vector;)Ljava/lang/Number;

    move-result-object v11

    check-cast v11, Ljava/lang/Double;

    invoke-virtual {v11}, Ljava/lang/Double;->intValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v15, v16

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/kuehle/carreport/reports/MileageReport;->unit:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v15, v11

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v13, v11}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->addItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V

    goto/16 :goto_2

    .line 131
    .end local v3    # "car":Lme/kuehle/carreport/db/Car;
    .end local v4    # "carDataAccumulated":Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataAccumulated;
    .end local v5    # "carDataNormal":Lme/kuehle/carreport/reports/MileageReport$ReportGraphDataNormal;
    .end local v10    # "section":Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    :cond_3
    return-void

    .line 68
    :array_0
    .array-data 8
        0x43e0000000000000L    # 9.223372036854776E18
        0x43e0000000000000L    # 9.223372036854776E18
    .end array-data
.end method

.method static synthetic access$000(Lme/kuehle/carreport/reports/MileageReport;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/reports/MileageReport;

    .prologue
    .line 39
    iget-object v0, p0, Lme/kuehle/carreport/reports/MileageReport;->unit:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCalculationOptions()[Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    new-array v0, v0, [Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;

    return-object v0
.end method

.method public getChart(I)Lme/kuehle/chartlib/chart/Chart;
    .locals 12
    .param p1, "option"    # I

    .prologue
    .line 140
    new-instance v3, Lme/kuehle/chartlib/data/Dataset;

    invoke-direct {v3}, Lme/kuehle/chartlib/data/Dataset;-><init>()V

    .line 141
    .local v3, "dataset":Lme/kuehle/chartlib/data/Dataset;
    new-instance v7, Lme/kuehle/chartlib/renderer/RendererList;

    invoke-direct {v7}, Lme/kuehle/chartlib/renderer/RendererList;-><init>()V

    .line 142
    .local v7, "renderers":Lme/kuehle/chartlib/renderer/RendererList;
    new-instance v6, Lme/kuehle/chartlib/renderer/LineRenderer;

    iget-object v9, p0, Lme/kuehle/carreport/reports/MileageReport;->context:Landroid/content/Context;

    invoke-direct {v6, v9}, Lme/kuehle/chartlib/renderer/LineRenderer;-><init>(Landroid/content/Context;)V

    .line 143
    .local v6, "renderer":Lme/kuehle/chartlib/renderer/LineRenderer;
    invoke-virtual {v7, v6}, Lme/kuehle/chartlib/renderer/RendererList;->addRenderer(Lme/kuehle/chartlib/renderer/AbstractRenderer;)V

    .line 145
    if-nez p1, :cond_0

    iget-object v8, p0, Lme/kuehle/carreport/reports/MileageReport;->reportDataAccumulated:Ljava/util/Vector;

    .line 147
    .local v8, "reportData":Ljava/util/Vector;, "Ljava/util/Vector<Lme/kuehle/carreport/reports/AbstractReportGraphData;>;"
    :goto_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 148
    .local v1, "chartReportData":Ljava/util/Vector;, "Ljava/util/Vector<Lme/kuehle/carreport/reports/AbstractReportGraphData;>;"
    invoke-virtual {p0}, Lme/kuehle/carreport/reports/MileageReport;->isShowTrend()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 149
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/kuehle/carreport/reports/AbstractReportGraphData;

    .line 150
    .local v2, "data":Lme/kuehle/carreport/reports/AbstractReportGraphData;
    invoke-virtual {v2}, Lme/kuehle/carreport/reports/AbstractReportGraphData;->createRegressionData()Lme/kuehle/carreport/reports/AbstractReportGraphData;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 145
    .end local v1    # "chartReportData":Ljava/util/Vector;, "Ljava/util/Vector<Lme/kuehle/carreport/reports/AbstractReportGraphData;>;"
    .end local v2    # "data":Lme/kuehle/carreport/reports/AbstractReportGraphData;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "reportData":Ljava/util/Vector;, "Ljava/util/Vector<Lme/kuehle/carreport/reports/AbstractReportGraphData;>;"
    :cond_0
    iget-object v8, p0, Lme/kuehle/carreport/reports/MileageReport;->reportDataNormal:Ljava/util/Vector;

    goto :goto_0

    .line 153
    .restart local v1    # "chartReportData":Ljava/util/Vector;, "Ljava/util/Vector<Lme/kuehle/carreport/reports/AbstractReportGraphData;>;"
    .restart local v8    # "reportData":Ljava/util/Vector;, "Ljava/util/Vector<Lme/kuehle/carreport/reports/AbstractReportGraphData;>;"
    :cond_1
    invoke-virtual {v1, v8}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 154
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 155
    invoke-virtual {v1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lme/kuehle/carreport/reports/AbstractReportGraphData;

    invoke-virtual {v9}, Lme/kuehle/carreport/reports/AbstractReportGraphData;->getSeries()Lme/kuehle/chartlib/data/Series;

    move-result-object v9

    invoke-virtual {v3, v9}, Lme/kuehle/chartlib/data/Dataset;->add(Lme/kuehle/chartlib/data/Series;)V

    .line 156
    invoke-virtual {v1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lme/kuehle/carreport/reports/AbstractReportGraphData;

    invoke-virtual {v9, v4, v6}, Lme/kuehle/carreport/reports/AbstractReportGraphData;->applySeriesStyle(ILme/kuehle/chartlib/renderer/AbstractRenderer;)V

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 159
    :cond_2
    new-instance v9, Lme/kuehle/carreport/reports/MileageReport$1;

    invoke-direct {v9, p0, v3}, Lme/kuehle/carreport/reports/MileageReport$1;-><init>(Lme/kuehle/carreport/reports/MileageReport;Lme/kuehle/chartlib/data/Dataset;)V

    invoke-virtual {v6, v9}, Lme/kuehle/chartlib/renderer/LineRenderer;->setOnClickListener(Lme/kuehle/chartlib/renderer/OnClickListener;)V

    .line 179
    new-instance v0, Lme/kuehle/chartlib/chart/Chart;

    iget-object v9, p0, Lme/kuehle/carreport/reports/MileageReport;->context:Landroid/content/Context;

    invoke-direct {v0, v9, v3, v7}, Lme/kuehle/chartlib/chart/Chart;-><init>(Landroid/content/Context;Lme/kuehle/chartlib/data/Dataset;Lme/kuehle/chartlib/renderer/RendererList;)V

    .line 180
    .local v0, "chart":Lme/kuehle/chartlib/chart/Chart;
    invoke-virtual {p0, v0}, Lme/kuehle/carreport/reports/MileageReport;->applyDefaultChartStyles(Lme/kuehle/chartlib/chart/Chart;)V

    .line 181
    iget-boolean v9, p0, Lme/kuehle/carreport/reports/MileageReport;->showLegend:Z

    invoke-virtual {v0, v9}, Lme/kuehle/chartlib/chart/Chart;->setShowLegend(Z)V

    .line 182
    invoke-virtual {p0}, Lme/kuehle/carreport/reports/MileageReport;->isShowTrend()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 183
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    if-ge v4, v9, :cond_3

    .line 184
    invoke-virtual {v0}, Lme/kuehle/chartlib/chart/Chart;->getLegend()Lme/kuehle/chartlib/chart/Legend;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Lme/kuehle/chartlib/chart/Legend;->setSeriesVisible(IZ)V

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 187
    :cond_3
    invoke-virtual {v0}, Lme/kuehle/chartlib/chart/Chart;->getDomainAxis()Lme/kuehle/chartlib/axis/AbstractAxis;

    move-result-object v9

    iget-object v10, p0, Lme/kuehle/carreport/reports/MileageReport;->dateLabelFormatter:Lme/kuehle/chartlib/axis/AxisLabelFormatter;

    invoke-virtual {v9, v10}, Lme/kuehle/chartlib/axis/AbstractAxis;->setLabelFormatter(Lme/kuehle/chartlib/axis/AxisLabelFormatter;)V

    .line 188
    invoke-virtual {v0}, Lme/kuehle/chartlib/chart/Chart;->getDomainAxis()Lme/kuehle/chartlib/axis/AbstractAxis;

    move-result-object v9

    iget-object v10, p0, Lme/kuehle/carreport/reports/MileageReport;->minXValue:[D

    aget-wide v10, v10, p1

    invoke-virtual {v9, v10, v11}, Lme/kuehle/chartlib/axis/AbstractAxis;->setDefaultBottomBound(D)V

    .line 190
    return-object v0
.end method

.method public getGraphOptions()[I
    .locals 3

    .prologue
    .line 195
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 196
    .local v0, "options":[I
    const/4 v1, 0x0

    const v2, 0x7f090064

    aput v2, v0, v1

    .line 197
    const/4 v1, 0x1

    const v2, 0x7f090065

    aput v2, v0, v1

    .line 198
    return-object v0
.end method

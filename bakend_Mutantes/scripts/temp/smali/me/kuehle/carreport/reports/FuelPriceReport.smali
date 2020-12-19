.class public Lme/kuehle/carreport/reports/FuelPriceReport;
.super Lme/kuehle/carreport/reports/AbstractReport;
.source "FuelPriceReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/reports/FuelPriceReport$ReportGraphData;,
        Lme/kuehle/carreport/reports/FuelPriceReport$CalculableItem;
    }
.end annotation


# instance fields
.field private reportData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lme/kuehle/carreport/reports/FuelPriceReport$ReportGraphData;",
            ">;"
        }
    .end annotation
.end field

.field private unit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-direct/range {p0 .. p1}, Lme/kuehle/carreport/reports/AbstractReport;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v17, Lme/kuehle/carreport/Preferences;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 134
    .local v17, "prefs":Lme/kuehle/carreport/Preferences;
    const-string v2, "%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {v17 .. v17}, Lme/kuehle/carreport/Preferences;->getUnitCurrency()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {v17 .. v17}, Lme/kuehle/carreport/Preferences;->getUnitVolume()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lme/kuehle/carreport/reports/FuelPriceReport;->unit:Ljava/lang/String;

    .line 137
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v13, "fuelTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-static {}, Lme/kuehle/carreport/db/FuelType;->getAllNames()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 141
    const/4 v2, 0x3

    new-array v14, v2, [F

    .line 142
    .local v14, "hsvColor":[F
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2, v14}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lme/kuehle/carreport/reports/FuelPriceReport;->reportData:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 148
    .local v12, "fuelType":Ljava/lang/String;
    invoke-static {v14}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    .line 149
    .local v10, "color":I
    new-instance v11, Lme/kuehle/carreport/reports/FuelPriceReport$ReportGraphData;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1, v12, v10}, Lme/kuehle/carreport/reports/FuelPriceReport$ReportGraphData;-><init>(Lme/kuehle/carreport/reports/FuelPriceReport;Landroid/content/Context;Ljava/lang/String;I)V

    .line 150
    .local v11, "data":Lme/kuehle/carreport/reports/FuelPriceReport$ReportGraphData;
    invoke-virtual {v11}, Lme/kuehle/carreport/reports/FuelPriceReport$ReportGraphData;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kuehle/carreport/reports/FuelPriceReport;->reportData:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v11}, Lme/kuehle/carreport/reports/FuelPriceReport$ReportGraphData;->getSeries()Lme/kuehle/chartlib/data/Series;

    move-result-object v19

    .line 154
    .local v19, "series":Lme/kuehle/chartlib/data/Series;
    const-wide/16 v8, 0x0

    .line 155
    .local v8, "avg":D
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    invoke-virtual/range {v19 .. v19}, Lme/kuehle/chartlib/data/Series;->size()I

    move-result v2

    if-ge v15, v2, :cond_1

    .line 156
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lme/kuehle/chartlib/data/Series;->get(I)Lme/kuehle/chartlib/data/PointD;

    move-result-object v2

    iget-wide v2, v2, Lme/kuehle/chartlib/data/PointD;->y:D

    add-double/2addr v8, v2

    .line 155
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 158
    :cond_1
    invoke-virtual/range {v19 .. v19}, Lme/kuehle/chartlib/data/Series;->size()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v8, v2

    .line 160
    if-nez v12, :cond_2

    const v2, 0x7f090067

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .end local v12    # "fuelType":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10}, Lme/kuehle/carreport/reports/FuelPriceReport;->addDataSection(Ljava/lang/String;I)Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    move-result-object v18

    .line 163
    .local v18, "section":Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    new-instance v2, Lme/kuehle/carreport/reports/FuelPriceReport$CalculableItem;

    const v3, 0x7f09006a

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lme/kuehle/chartlib/data/Series;->maxY()D

    move-result-wide v5

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const v20, 0x7f09006c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v7, v3

    const/4 v3, 0x1

    const v20, 0x7f09006b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v7, v3

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lme/kuehle/carreport/reports/FuelPriceReport$CalculableItem;-><init>(Lme/kuehle/carreport/reports/FuelPriceReport;Ljava/lang/String;D[Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->addItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V

    .line 168
    new-instance v2, Lme/kuehle/carreport/reports/FuelPriceReport$CalculableItem;

    const v3, 0x7f090069

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lme/kuehle/chartlib/data/Series;->minY()D

    move-result-wide v5

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const v20, 0x7f09006b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v7, v3

    const/4 v3, 0x1

    const v20, 0x7f09006c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v7, v3

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lme/kuehle/carreport/reports/FuelPriceReport$CalculableItem;-><init>(Lme/kuehle/carreport/reports/FuelPriceReport;Ljava/lang/String;D[Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->addItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V

    .line 173
    new-instance v2, Lme/kuehle/carreport/reports/FuelPriceReport$CalculableItem;

    const v3, 0x7f09006d

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v8, v9}, Lme/kuehle/carreport/reports/FuelPriceReport$CalculableItem;-><init>(Lme/kuehle/carreport/reports/FuelPriceReport;Ljava/lang/String;D)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->addItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V

    .line 176
    const/4 v2, 0x0

    aget v3, v14, v2

    const/high16 v4, 0x41a00000    # 20.0f

    add-float/2addr v3, v4

    aput v3, v14, v2

    .line 177
    const/4 v2, 0x0

    aget v2, v14, v2

    const/high16 v3, 0x43b40000    # 360.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 178
    const/4 v2, 0x0

    aget v3, v14, v2

    const/high16 v4, 0x43b40000    # 360.0f

    sub-float/2addr v3, v4

    aput v3, v14, v2

    goto/16 :goto_0

    .line 182
    .end local v8    # "avg":D
    .end local v10    # "color":I
    .end local v11    # "data":Lme/kuehle/carreport/reports/FuelPriceReport$ReportGraphData;
    .end local v15    # "i":I
    .end local v18    # "section":Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    .end local v19    # "series":Lme/kuehle/chartlib/data/Series;
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lme/kuehle/carreport/reports/FuelPriceReport;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/reports/FuelPriceReport;

    .prologue
    .line 48
    iget-object v0, p0, Lme/kuehle/carreport/reports/FuelPriceReport;->unit:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCalculationOptions()[Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 186
    new-instance v0, Lme/kuehle/carreport/Preferences;

    iget-object v1, p0, Lme/kuehle/carreport/reports/FuelPriceReport;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, "prefs":Lme/kuehle/carreport/Preferences;
    new-array v1, v9, [Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;

    new-instance v2, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;

    iget-object v3, p0, Lme/kuehle/carreport/reports/FuelPriceReport;->context:Landroid/content/Context;

    const v4, 0x7f090079

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lme/kuehle/carreport/Preferences;->getUnitVolume()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lme/kuehle/carreport/Preferences;->getUnitVolume()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;-><init>(Lme/kuehle/carreport/reports/AbstractReport;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v7

    new-instance v2, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;

    iget-object v3, p0, Lme/kuehle/carreport/reports/FuelPriceReport;->context:Landroid/content/Context;

    const v4, 0x7f09007a

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lme/kuehle/carreport/Preferences;->getUnitVolume()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0}, Lme/kuehle/carreport/Preferences;->getUnitCurrency()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lme/kuehle/carreport/Preferences;->getUnitCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;-><init>(Lme/kuehle/carreport/reports/AbstractReport;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v8

    return-object v1
.end method

.method public getChart(I)Lme/kuehle/chartlib/chart/Chart;
    .locals 12
    .param p1, "option"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 199
    new-instance v2, Lme/kuehle/chartlib/data/Dataset;

    invoke-direct {v2}, Lme/kuehle/chartlib/data/Dataset;-><init>()V

    .line 200
    .local v2, "dataset":Lme/kuehle/chartlib/data/Dataset;
    new-instance v5, Lme/kuehle/chartlib/renderer/RendererList;

    invoke-direct {v5}, Lme/kuehle/chartlib/renderer/RendererList;-><init>()V

    .line 201
    .local v5, "renderers":Lme/kuehle/chartlib/renderer/RendererList;
    new-instance v4, Lme/kuehle/chartlib/renderer/LineRenderer;

    iget-object v9, p0, Lme/kuehle/carreport/reports/FuelPriceReport;->context:Landroid/content/Context;

    invoke-direct {v4, v9}, Lme/kuehle/chartlib/renderer/LineRenderer;-><init>(Landroid/content/Context;)V

    .line 202
    .local v4, "renderer":Lme/kuehle/chartlib/renderer/LineRenderer;
    invoke-virtual {v5, v4}, Lme/kuehle/chartlib/renderer/RendererList;->addRenderer(Lme/kuehle/chartlib/renderer/AbstractRenderer;)V

    .line 204
    const/4 v6, 0x0

    .line 205
    .local v6, "series":I
    iget-object v9, p0, Lme/kuehle/carreport/reports/FuelPriceReport;->reportData:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/kuehle/carreport/reports/FuelPriceReport$ReportGraphData;

    .line 206
    .local v1, "data":Lme/kuehle/carreport/reports/FuelPriceReport$ReportGraphData;
    invoke-virtual {v1}, Lme/kuehle/carreport/reports/FuelPriceReport$ReportGraphData;->getSeries()Lme/kuehle/chartlib/data/Series;

    move-result-object v9

    invoke-virtual {v2, v9}, Lme/kuehle/chartlib/data/Dataset;->add(Lme/kuehle/chartlib/data/Series;)V

    .line 207
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "series":I
    .local v7, "series":I
    invoke-virtual {v1, v6, v4}, Lme/kuehle/carreport/reports/FuelPriceReport$ReportGraphData;->applySeriesStyle(ILme/kuehle/chartlib/renderer/AbstractRenderer;)V

    .line 208
    iget-object v9, p0, Lme/kuehle/carreport/reports/FuelPriceReport;->reportData:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v11, :cond_0

    .line 209
    invoke-virtual {v4, v10, v11}, Lme/kuehle/chartlib/renderer/LineRenderer;->setSeriesFillBelowLine(IZ)V

    .line 212
    :cond_0
    invoke-virtual {p0}, Lme/kuehle/carreport/reports/FuelPriceReport;->isShowTrend()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 213
    invoke-virtual {v1}, Lme/kuehle/carreport/reports/FuelPriceReport$ReportGraphData;->createRegressionData()Lme/kuehle/carreport/reports/AbstractReportGraphData;

    move-result-object v8

    .line 215
    .local v8, "trendReportData":Lme/kuehle/carreport/reports/AbstractReportGraphData;
    invoke-virtual {v8}, Lme/kuehle/carreport/reports/AbstractReportGraphData;->getSeries()Lme/kuehle/chartlib/data/Series;

    move-result-object v9

    invoke-virtual {v2, v9}, Lme/kuehle/chartlib/data/Dataset;->add(Lme/kuehle/chartlib/data/Series;)V

    .line 216
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "series":I
    .restart local v6    # "series":I
    invoke-virtual {v8, v7, v4}, Lme/kuehle/carreport/reports/AbstractReportGraphData;->applySeriesStyle(ILme/kuehle/chartlib/renderer/AbstractRenderer;)V

    goto :goto_0

    .line 220
    .end local v1    # "data":Lme/kuehle/carreport/reports/FuelPriceReport$ReportGraphData;
    .end local v8    # "trendReportData":Lme/kuehle/carreport/reports/AbstractReportGraphData;
    :cond_1
    new-instance v9, Lme/kuehle/carreport/reports/FuelPriceReport$1;

    invoke-direct {v9, p0, v2}, Lme/kuehle/carreport/reports/FuelPriceReport$1;-><init>(Lme/kuehle/carreport/reports/FuelPriceReport;Lme/kuehle/chartlib/data/Dataset;)V

    invoke-virtual {v4, v9}, Lme/kuehle/chartlib/renderer/LineRenderer;->setOnClickListener(Lme/kuehle/chartlib/renderer/OnClickListener;)V

    .line 241
    new-instance v0, Lme/kuehle/chartlib/chart/Chart;

    iget-object v9, p0, Lme/kuehle/carreport/reports/FuelPriceReport;->context:Landroid/content/Context;

    invoke-direct {v0, v9, v2, v5}, Lme/kuehle/chartlib/chart/Chart;-><init>(Landroid/content/Context;Lme/kuehle/chartlib/data/Dataset;Lme/kuehle/chartlib/renderer/RendererList;)V

    .line 242
    .local v0, "chart":Lme/kuehle/chartlib/chart/Chart;
    invoke-virtual {p0, v0}, Lme/kuehle/carreport/reports/FuelPriceReport;->applyDefaultChartStyles(Lme/kuehle/chartlib/chart/Chart;)V

    .line 243
    invoke-virtual {v0, v10}, Lme/kuehle/chartlib/chart/Chart;->setShowLegend(Z)V

    .line 244
    invoke-virtual {v0}, Lme/kuehle/chartlib/chart/Chart;->getDomainAxis()Lme/kuehle/chartlib/axis/AbstractAxis;

    move-result-object v9

    iget-object v10, p0, Lme/kuehle/carreport/reports/FuelPriceReport;->dateLabelFormatter:Lme/kuehle/chartlib/axis/AxisLabelFormatter;

    invoke-virtual {v9, v10}, Lme/kuehle/chartlib/axis/AbstractAxis;->setLabelFormatter(Lme/kuehle/chartlib/axis/AxisLabelFormatter;)V

    .line 245
    invoke-virtual {v0}, Lme/kuehle/chartlib/chart/Chart;->getRangeAxis()Lme/kuehle/chartlib/axis/AbstractAxis;

    move-result-object v9

    new-instance v10, Lme/kuehle/chartlib/axis/DecimalAxisLabelFormatter;

    const/4 v11, 0x3

    invoke-direct {v10, v11}, Lme/kuehle/chartlib/axis/DecimalAxisLabelFormatter;-><init>(I)V

    invoke-virtual {v9, v10}, Lme/kuehle/chartlib/axis/AbstractAxis;->setLabelFormatter(Lme/kuehle/chartlib/axis/AxisLabelFormatter;)V

    .line 248
    return-object v0

    .end local v0    # "chart":Lme/kuehle/chartlib/chart/Chart;
    .end local v6    # "series":I
    .restart local v1    # "data":Lme/kuehle/carreport/reports/FuelPriceReport$ReportGraphData;
    .restart local v7    # "series":I
    :cond_2
    move v6, v7

    .end local v7    # "series":I
    .restart local v6    # "series":I
    goto :goto_0
.end method

.method public getGraphOptions()[I
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x1

    new-array v0, v0, [I

    return-object v0
.end method

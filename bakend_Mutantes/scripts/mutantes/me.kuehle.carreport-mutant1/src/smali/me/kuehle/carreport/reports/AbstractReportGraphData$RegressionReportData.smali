.class Lme/kuehle/carreport/reports/AbstractReportGraphData$RegressionReportData;
.super Lme/kuehle/carreport/reports/AbstractReportGraphData;
.source "AbstractReportGraphData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/reports/AbstractReportGraphData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegressionReportData"
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/reports/AbstractReportGraphData;


# direct methods
.method public constructor <init>(Lme/kuehle/carreport/reports/AbstractReportGraphData;Lme/kuehle/carreport/reports/AbstractReportGraphData;)V
    .locals 23
    .param p2, "data"    # Lme/kuehle/carreport/reports/AbstractReportGraphData;

    .prologue
    .line 38
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lme/kuehle/carreport/reports/AbstractReportGraphData$RegressionReportData;->this$0:Lme/kuehle/carreport/reports/AbstractReportGraphData;

    .line 39
    move-object/from16 v0, p2

    iget-object v0, v0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f090061

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    iget v0, v0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->color:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lme/kuehle/carreport/reports/AbstractReportGraphData;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 42
    move-object/from16 v0, p2

    iget-object v0, v0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->xValues:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p2

    iget-object v0, v0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->yValues:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    if-nez v17, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->xValues:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lme/kuehle/carreport/util/Calculator;->avg(Ljava/util/Vector;)Ljava/lang/Number;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 47
    .local v4, "avgX":J
    move-object/from16 v0, p2

    iget-object v0, v0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->yValues:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lme/kuehle/carreport/util/Calculator;->avg(Ljava/util/Vector;)Ljava/lang/Number;

    move-result-object v17

    check-cast v17, Ljava/lang/Double;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 49
    .local v6, "avgY":D
    sget-object v13, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 50
    .local v13, "sum1":Ljava/math/BigInteger;
    sget-object v14, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 52
    .local v14, "sum2":Ljava/math/BigDecimal;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lme/kuehle/carreport/reports/AbstractReportGraphData;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_2

    .line 53
    move-object/from16 v0, p2

    iget-object v0, v0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->xValues:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sub-long v17, v17, v4

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v15

    .line 55
    .local v15, "xMinusAvgX":Ljava/math/BigInteger;
    move-object/from16 v0, p2

    iget-object v0, v0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->yValues:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Double;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    sub-double v17, v17, v6

    invoke-static/range {v17 .. v18}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v16

    .line 57
    .local v16, "yMinusAvgY":Ljava/math/BigDecimal;
    invoke-virtual {v15, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 58
    new-instance v17, Ljava/math/BigDecimal;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual/range {v16 .. v17}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v14

    .line 52
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 62
    .end local v15    # "xMinusAvgX":Ljava/math/BigInteger;
    .end local v16    # "yMinusAvgY":Ljava/math/BigDecimal;
    :cond_2
    sget-object v17, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 63
    new-instance v17, Ljava/math/BigDecimal;

    move-object/from16 v0, v17

    invoke-direct {v0, v13}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sget-object v18, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v10

    .line 65
    .local v10, "beta1":D
    long-to-double v0, v4

    move-wide/from16 v17, v0

    mul-double v17, v17, v10

    sub-double v8, v6, v17

    .line 67
    .local v8, "beta0":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/kuehle/carreport/reports/AbstractReportGraphData$RegressionReportData;->xValues:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->xValues:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/kuehle/carreport/reports/AbstractReportGraphData$RegressionReportData;->yValues:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->xValues:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    mul-double v19, v19, v10

    add-double v19, v19, v8

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/kuehle/carreport/reports/AbstractReportGraphData$RegressionReportData;->xValues:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->xValues:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lme/kuehle/carreport/reports/AbstractReportGraphData$RegressionReportData;->yValues:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->xValues:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    mul-double v19, v19, v10

    add-double v19, v19, v8

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public applySeriesStyle(ILme/kuehle/chartlib/renderer/AbstractRenderer;)V
    .locals 3
    .param p1, "series"    # I
    .param p2, "renderer"    # Lme/kuehle/chartlib/renderer/AbstractRenderer;

    .prologue
    const/4 v2, 0x2

    .line 76
    invoke-super {p0, p1, p2}, Lme/kuehle/carreport/reports/AbstractReportGraphData;->applySeriesStyle(ILme/kuehle/chartlib/renderer/AbstractRenderer;)V

    .line 77
    instance-of v0, p2, Lme/kuehle/chartlib/renderer/LineRenderer;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 78
    check-cast v0, Lme/kuehle/chartlib/renderer/LineRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lme/kuehle/chartlib/renderer/LineRenderer;->setSeriesLineWidth(III)V

    move-object v0, p2

    .line 80
    check-cast v0, Lme/kuehle/chartlib/renderer/LineRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lme/kuehle/chartlib/renderer/LineRenderer;->setSeriesDrawPoints(IZ)V

    .line 81
    check-cast p2, Lme/kuehle/chartlib/renderer/LineRenderer;

    .end local p2    # "renderer":Lme/kuehle/chartlib/renderer/AbstractRenderer;
    new-instance v0, Landroid/graphics/DashPathEffect;

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p2, p1, v0}, Lme/kuehle/chartlib/renderer/LineRenderer;->setSeriesPathEffect(ILandroid/graphics/PathEffect;)V

    .line 84
    :cond_0
    return-void

    .line 81
    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

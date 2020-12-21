.class public abstract Lme/kuehle/carreport/reports/AbstractReportGraphData;
.super Ljava/lang/Object;
.source "AbstractReportGraphData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/reports/AbstractReportGraphData$RegressionReportData;
    }
.end annotation


# instance fields
.field protected color:I

.field protected context:Landroid/content/Context;

.field protected name:Ljava/lang/String;

.field protected xValues:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected yValues:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "color"    # I

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->xValues:Ljava/util/Vector;

    .line 92
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->yValues:Ljava/util/Vector;

    .line 95
    iput-object p1, p0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->context:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->name:Ljava/lang/String;

    .line 97
    iput p3, p0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->color:I

    .line 98
    return-void
.end method


# virtual methods
.method public applySeriesStyle(ILme/kuehle/chartlib/renderer/AbstractRenderer;)V
    .locals 3
    .param p1, "series"    # I
    .param p2, "renderer"    # Lme/kuehle/chartlib/renderer/AbstractRenderer;

    .prologue
    .line 101
    iget v0, p0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->color:I

    invoke-virtual {p2, p1, v0}, Lme/kuehle/chartlib/renderer/AbstractRenderer;->setSeriesColor(II)V

    .line 102
    instance-of v0, p2, Lme/kuehle/chartlib/renderer/LineRenderer;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 103
    check-cast v0, Lme/kuehle/chartlib/renderer/LineRenderer;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lme/kuehle/chartlib/renderer/LineRenderer;->setSeriesLineWidth(III)V

    .line 105
    check-cast p2, Lme/kuehle/chartlib/renderer/LineRenderer;

    .end local p2    # "renderer":Lme/kuehle/chartlib/renderer/AbstractRenderer;
    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lme/kuehle/chartlib/renderer/LineRenderer;->setSeriesPathEffect(ILandroid/graphics/PathEffect;)V

    .line 107
    :cond_0
    return-void
.end method

.method public createRegressionData()Lme/kuehle/carreport/reports/AbstractReportGraphData;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lme/kuehle/carreport/reports/AbstractReportGraphData;->sort()V

    .line 111
    new-instance v0, Lme/kuehle/carreport/reports/AbstractReportGraphData$RegressionReportData;

    invoke-direct {v0, p0, p0}, Lme/kuehle/carreport/reports/AbstractReportGraphData$RegressionReportData;-><init>(Lme/kuehle/carreport/reports/AbstractReportGraphData;Lme/kuehle/carreport/reports/AbstractReportGraphData;)V

    return-object v0
.end method

.method public getSeries()Lme/kuehle/chartlib/data/Series;
    .locals 7

    .prologue
    .line 115
    new-instance v1, Lme/kuehle/chartlib/data/Series;

    iget-object v2, p0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->name:Ljava/lang/String;

    invoke-direct {v1, v2}, Lme/kuehle/chartlib/data/Series;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, "series":Lme/kuehle/chartlib/data/Series;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lme/kuehle/carreport/reports/AbstractReportGraphData;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 117
    iget-object v2, p0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->xValues:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v3, v2

    iget-object v2, p0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->yValues:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v1, v3, v4, v5, v6}, Lme/kuehle/chartlib/data/Series;->add(DD)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->xValues:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->yValues:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->xValues:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public sort()V
    .locals 10

    .prologue
    .line 131
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v3, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lme/kuehle/chartlib/data/PointD;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->xValues:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 133
    new-instance v5, Lme/kuehle/chartlib/data/PointD;

    iget-object v4, p0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->xValues:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-double v6, v6

    iget-object v4, p0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->yValues:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lme/kuehle/chartlib/data/PointD;-><init>(DD)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 137
    iget-object v4, p0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->xValues:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 138
    iget-object v4, p0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->yValues:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 139
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/kuehle/chartlib/data/PointD;

    .line 140
    .local v2, "point":Lme/kuehle/chartlib/data/PointD;
    iget-object v4, p0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->xValues:Ljava/util/Vector;

    iget-wide v5, v2, Lme/kuehle/chartlib/data/PointD;->x:D

    double-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v4, p0, Lme/kuehle/carreport/reports/AbstractReportGraphData;->yValues:Ljava/util/Vector;

    iget-wide v5, v2, Lme/kuehle/chartlib/data/PointD;->y:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    .end local v2    # "point":Lme/kuehle/chartlib/data/PointD;
    :cond_1
    return-void
.end method

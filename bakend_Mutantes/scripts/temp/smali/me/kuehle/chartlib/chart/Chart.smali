.class public Lme/kuehle/chartlib/chart/Chart;
.super Ljava/lang/Object;
.source "Chart.java"

# interfaces
.implements Lme/kuehle/chartlib/data/Dataset$DataChangedListener;


# instance fields
.field private clip:Landroid/graphics/Rect;

.field private dataset:Lme/kuehle/chartlib/data/Dataset;

.field private domainAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

.field private domainAxisArea:Landroid/graphics/RectF;

.field private legend:Lme/kuehle/chartlib/chart/Legend;

.field private legendArea:Landroid/graphics/RectF;

.field private rangeAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

.field private rangeAxisArea:Landroid/graphics/RectF;

.field private rendererArea:Landroid/graphics/RectF;

.field private renderers:Lme/kuehle/chartlib/renderer/RendererList;

.field private showLegend:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lme/kuehle/chartlib/data/Dataset;Lme/kuehle/chartlib/renderer/RendererList;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataset"    # Lme/kuehle/chartlib/data/Dataset;
    .param p3, "renderers"    # Lme/kuehle/chartlib/renderer/RendererList;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lme/kuehle/chartlib/renderer/RendererList;

    invoke-direct {v0}, Lme/kuehle/chartlib/renderer/RendererList;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->renderers:Lme/kuehle/chartlib/renderer/RendererList;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->clip:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->domainAxisArea:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->rangeAxisArea:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->rendererArea:Landroid/graphics/RectF;

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->legendArea:Landroid/graphics/RectF;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kuehle/chartlib/chart/Chart;->showLegend:Z

    .line 63
    iput-object p2, p0, Lme/kuehle/chartlib/chart/Chart;->dataset:Lme/kuehle/chartlib/data/Dataset;

    .line 64
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->dataset:Lme/kuehle/chartlib/data/Dataset;

    invoke-virtual {v0, p0}, Lme/kuehle/chartlib/data/Dataset;->setDataChangedListener(Lme/kuehle/chartlib/data/Dataset$DataChangedListener;)V

    .line 65
    iput-object p3, p0, Lme/kuehle/chartlib/chart/Chart;->renderers:Lme/kuehle/chartlib/renderer/RendererList;

    .line 67
    invoke-virtual {p2}, Lme/kuehle/chartlib/data/Dataset;->maxX()D

    move-result-wide v1

    .line 68
    .local v1, "maxX":D
    invoke-virtual {p2}, Lme/kuehle/chartlib/data/Dataset;->minX()D

    move-result-wide v3

    .line 69
    .local v3, "minX":D
    cmpl-double v0, v1, v3

    if-nez v0, :cond_0

    .line 70
    const-wide v10, 0x3ff004189374bc6aL    # 1.001

    mul-double/2addr v1, v10

    .line 71
    const-wide v10, 0x3feff7ced916872bL    # 0.999

    mul-double/2addr v3, v10

    .line 73
    :cond_0
    new-instance v0, Lme/kuehle/chartlib/axis/DomainAxis;

    new-instance v5, Lme/kuehle/chartlib/util/Size;

    const/16 v10, 0xc

    const/4 v11, 0x2

    invoke-direct {v5, p1, v10, v11}, Lme/kuehle/chartlib/util/Size;-><init>(Landroid/content/Context;II)V

    invoke-direct/range {v0 .. v5}, Lme/kuehle/chartlib/axis/DomainAxis;-><init>(DDLme/kuehle/chartlib/util/Size;)V

    iput-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->domainAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    .line 75
    invoke-virtual {p2}, Lme/kuehle/chartlib/data/Dataset;->maxY()D

    move-result-wide v6

    .line 76
    .local v6, "maxY":D
    invoke-virtual {p2}, Lme/kuehle/chartlib/data/Dataset;->minY()D

    move-result-wide v8

    .line 77
    .local v8, "minY":D
    cmpl-double v0, v6, v8

    if-nez v0, :cond_1

    .line 78
    const-wide v10, 0x3ff004189374bc6aL    # 1.001

    mul-double/2addr v6, v10

    .line 79
    const-wide v10, 0x3feff7ced916872bL    # 0.999

    mul-double/2addr v8, v10

    .line 81
    :cond_1
    new-instance v5, Lme/kuehle/chartlib/axis/RangeAxis;

    new-instance v10, Lme/kuehle/chartlib/util/Size;

    const/16 v0, 0xc

    const/4 v11, 0x2

    invoke-direct {v10, p1, v0, v11}, Lme/kuehle/chartlib/util/Size;-><init>(Landroid/content/Context;II)V

    invoke-direct/range {v5 .. v10}, Lme/kuehle/chartlib/axis/RangeAxis;-><init>(DDLme/kuehle/chartlib/util/Size;)V

    iput-object v5, p0, Lme/kuehle/chartlib/chart/Chart;->rangeAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    .line 84
    new-instance v0, Lme/kuehle/chartlib/chart/Legend;

    new-instance v5, Lme/kuehle/chartlib/util/Size;

    const/16 v10, 0xc

    const/4 v11, 0x2

    invoke-direct {v5, p1, v10, v11}, Lme/kuehle/chartlib/util/Size;-><init>(Landroid/content/Context;II)V

    invoke-direct {v0, p2, p3, v5}, Lme/kuehle/chartlib/chart/Legend;-><init>(Lme/kuehle/chartlib/data/Dataset;Lme/kuehle/chartlib/renderer/RendererList;Lme/kuehle/chartlib/util/Size;)V

    iput-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->legend:Lme/kuehle/chartlib/chart/Legend;

    .line 86
    return-void
.end method


# virtual methods
.method public changeSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->domainAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    invoke-virtual {v0, p1, p2}, Lme/kuehle/chartlib/axis/AbstractAxis;->changeSize(II)V

    .line 98
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->rangeAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    invoke-virtual {v0, p1, p2}, Lme/kuehle/chartlib/axis/AbstractAxis;->changeSize(II)V

    .line 99
    return-void
.end method

.method public click(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 109
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->renderers:Lme/kuehle/chartlib/renderer/RendererList;

    invoke-virtual {v0, p1}, Lme/kuehle/chartlib/renderer/RendererList;->click(Landroid/graphics/PointF;)V

    .line 110
    return-void
.end method

.method public doubleClick(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 119
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->domainAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    invoke-virtual {v0}, Lme/kuehle/chartlib/axis/AbstractAxis;->restoreDefaultBounds()V

    .line 120
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->rangeAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    invoke-virtual {v0}, Lme/kuehle/chartlib/axis/AbstractAxis;->restoreDefaultBounds()V

    .line 121
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 129
    iget-object v1, p0, Lme/kuehle/chartlib/chart/Chart;->clip:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 131
    iget-object v1, p0, Lme/kuehle/chartlib/chart/Chart;->domainAxisArea:Landroid/graphics/RectF;

    iget-object v2, p0, Lme/kuehle/chartlib/chart/Chart;->clip:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lme/kuehle/chartlib/chart/Chart;->rangeAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    invoke-virtual {v3}, Lme/kuehle/chartlib/axis/AbstractAxis;->measureSize()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lme/kuehle/chartlib/chart/Chart;->clip:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lme/kuehle/chartlib/chart/Chart;->clip:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lme/kuehle/chartlib/chart/Chart;->clip:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 133
    iget-object v1, p0, Lme/kuehle/chartlib/chart/Chart;->domainAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    iget-object v2, p0, Lme/kuehle/chartlib/chart/Chart;->domainAxisArea:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, v2}, Lme/kuehle/chartlib/axis/AbstractAxis;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 134
    iget-object v1, p0, Lme/kuehle/chartlib/chart/Chart;->rangeAxisArea:Landroid/graphics/RectF;

    iget-object v2, p0, Lme/kuehle/chartlib/chart/Chart;->clip:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lme/kuehle/chartlib/chart/Chart;->clip:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lme/kuehle/chartlib/chart/Chart;->clip:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lme/kuehle/chartlib/chart/Chart;->clip:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lme/kuehle/chartlib/chart/Chart;->domainAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    invoke-virtual {v6}, Lme/kuehle/chartlib/axis/AbstractAxis;->measureSize()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 136
    iget-object v1, p0, Lme/kuehle/chartlib/chart/Chart;->rangeAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    iget-object v2, p0, Lme/kuehle/chartlib/chart/Chart;->rangeAxisArea:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, v2}, Lme/kuehle/chartlib/axis/AbstractAxis;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 138
    new-instance v0, Lme/kuehle/chartlib/chart/RectD;

    iget-object v1, p0, Lme/kuehle/chartlib/chart/Chart;->rangeAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    invoke-virtual {v1}, Lme/kuehle/chartlib/axis/AbstractAxis;->getTopBound()D

    move-result-wide v1

    iget-object v3, p0, Lme/kuehle/chartlib/chart/Chart;->domainAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    invoke-virtual {v3}, Lme/kuehle/chartlib/axis/AbstractAxis;->getTopBound()D

    move-result-wide v3

    iget-object v5, p0, Lme/kuehle/chartlib/chart/Chart;->rangeAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    invoke-virtual {v5}, Lme/kuehle/chartlib/axis/AbstractAxis;->getBottomBound()D

    move-result-wide v5

    iget-object v7, p0, Lme/kuehle/chartlib/chart/Chart;->domainAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    invoke-virtual {v7}, Lme/kuehle/chartlib/axis/AbstractAxis;->getBottomBound()D

    move-result-wide v7

    invoke-direct/range {v0 .. v8}, Lme/kuehle/chartlib/chart/RectD;-><init>(DDDD)V

    .line 141
    .local v0, "axisBounds":Lme/kuehle/chartlib/chart/RectD;
    iget-object v1, p0, Lme/kuehle/chartlib/chart/Chart;->rendererArea:Landroid/graphics/RectF;

    iget-object v2, p0, Lme/kuehle/chartlib/chart/Chart;->clip:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lme/kuehle/chartlib/chart/Chart;->rangeAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    invoke-virtual {v3}, Lme/kuehle/chartlib/axis/AbstractAxis;->measureSize()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lme/kuehle/chartlib/chart/Chart;->clip:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lme/kuehle/chartlib/chart/Chart;->clip:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lme/kuehle/chartlib/chart/Chart;->clip:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lme/kuehle/chartlib/chart/Chart;->domainAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    invoke-virtual {v6}, Lme/kuehle/chartlib/axis/AbstractAxis;->measureSize()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 143
    iget-object v1, p0, Lme/kuehle/chartlib/chart/Chart;->renderers:Lme/kuehle/chartlib/renderer/RendererList;

    iget-object v2, p0, Lme/kuehle/chartlib/chart/Chart;->rendererArea:Landroid/graphics/RectF;

    iget-object v3, p0, Lme/kuehle/chartlib/chart/Chart;->dataset:Lme/kuehle/chartlib/data/Dataset;

    invoke-virtual {v3}, Lme/kuehle/chartlib/data/Dataset;->getAll()[Lme/kuehle/chartlib/data/Series;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v0, v3}, Lme/kuehle/chartlib/renderer/RendererList;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lme/kuehle/chartlib/chart/RectD;[Lme/kuehle/chartlib/data/Series;)V

    .line 145
    iget-boolean v1, p0, Lme/kuehle/chartlib/chart/Chart;->showLegend:Z

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lme/kuehle/chartlib/chart/Chart;->legendArea:Landroid/graphics/RectF;

    iget-object v2, p0, Lme/kuehle/chartlib/chart/Chart;->clip:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lme/kuehle/chartlib/chart/Chart;->rangeAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    invoke-virtual {v3}, Lme/kuehle/chartlib/axis/AbstractAxis;->measureSize()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lme/kuehle/chartlib/chart/Chart;->clip:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lme/kuehle/chartlib/chart/Chart;->clip:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget-object v5, p0, Lme/kuehle/chartlib/chart/Chart;->clip:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lme/kuehle/chartlib/chart/Chart;->domainAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    invoke-virtual {v6}, Lme/kuehle/chartlib/axis/AbstractAxis;->measureSize()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 148
    iget-object v1, p0, Lme/kuehle/chartlib/chart/Chart;->legend:Lme/kuehle/chartlib/chart/Legend;

    iget-object v2, p0, Lme/kuehle/chartlib/chart/Chart;->legendArea:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, v2}, Lme/kuehle/chartlib/chart/Legend;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 150
    :cond_0
    return-void
.end method

.method public getDataset()Lme/kuehle/chartlib/data/Dataset;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->dataset:Lme/kuehle/chartlib/data/Dataset;

    return-object v0
.end method

.method public getDomainAxis()Lme/kuehle/chartlib/axis/AbstractAxis;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->domainAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    return-object v0
.end method

.method public getLegend()Lme/kuehle/chartlib/chart/Legend;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->legend:Lme/kuehle/chartlib/chart/Legend;

    return-object v0
.end method

.method public getRangeAxis()Lme/kuehle/chartlib/axis/AbstractAxis;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->rangeAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    return-object v0
.end method

.method public getRenderers()Lme/kuehle/chartlib/renderer/RendererList;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->renderers:Lme/kuehle/chartlib/renderer/RendererList;

    return-object v0
.end method

.method public hasEnoughData()Z
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->renderers:Lme/kuehle/chartlib/renderer/RendererList;

    iget-object v1, p0, Lme/kuehle/chartlib/chart/Chart;->dataset:Lme/kuehle/chartlib/data/Dataset;

    invoke-virtual {v1}, Lme/kuehle/chartlib/data/Dataset;->getAll()[Lme/kuehle/chartlib/data/Series;

    move-result-object v1

    invoke-virtual {v0, v1}, Lme/kuehle/chartlib/renderer/RendererList;->isEnoughData([Lme/kuehle/chartlib/data/Series;)Z

    move-result v0

    return v0
.end method

.method public isShowLegend()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lme/kuehle/chartlib/chart/Chart;->showLegend:Z

    return v0
.end method

.method public move(FF)V
    .locals 1
    .param p1, "distanceX"    # F
    .param p2, "distanceY"    # F

    .prologue
    .line 197
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->domainAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    invoke-virtual {v0, p1}, Lme/kuehle/chartlib/axis/AbstractAxis;->move(F)V

    .line 198
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->rangeAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    invoke-virtual {v0, p2}, Lme/kuehle/chartlib/axis/AbstractAxis;->move(F)V

    .line 199
    return-void
.end method

.method public onGraphDataChanged()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->domainAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    iget-object v1, p0, Lme/kuehle/chartlib/chart/Chart;->dataset:Lme/kuehle/chartlib/data/Dataset;

    invoke-virtual {v1}, Lme/kuehle/chartlib/data/Dataset;->minX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lme/kuehle/chartlib/axis/AbstractAxis;->setDefaultBottomBound(D)V

    .line 207
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->domainAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    iget-object v1, p0, Lme/kuehle/chartlib/chart/Chart;->dataset:Lme/kuehle/chartlib/data/Dataset;

    invoke-virtual {v1}, Lme/kuehle/chartlib/data/Dataset;->maxX()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lme/kuehle/chartlib/axis/AbstractAxis;->setDefaultTopBound(D)V

    .line 208
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->rangeAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    iget-object v1, p0, Lme/kuehle/chartlib/chart/Chart;->dataset:Lme/kuehle/chartlib/data/Dataset;

    invoke-virtual {v1}, Lme/kuehle/chartlib/data/Dataset;->minY()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lme/kuehle/chartlib/axis/AbstractAxis;->setDefaultBottomBound(D)V

    .line 209
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->rangeAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    iget-object v1, p0, Lme/kuehle/chartlib/chart/Chart;->dataset:Lme/kuehle/chartlib/data/Dataset;

    invoke-virtual {v1}, Lme/kuehle/chartlib/data/Dataset;->maxY()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lme/kuehle/chartlib/axis/AbstractAxis;->setDefaultTopBound(D)V

    .line 210
    return-void
.end method

.method public setShowLegend(Z)V
    .locals 0
    .param p1, "showLegend"    # Z

    .prologue
    .line 219
    iput-boolean p1, p0, Lme/kuehle/chartlib/chart/Chart;->showLegend:Z

    .line 220
    return-void
.end method

.method public zoom(Landroid/graphics/PointF;F)V
    .locals 1
    .param p1, "center"    # Landroid/graphics/PointF;
    .param p2, "scaleDistance"    # F

    .prologue
    .line 231
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->domainAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    invoke-virtual {v0, p1, p2}, Lme/kuehle/chartlib/axis/AbstractAxis;->zoom(Landroid/graphics/PointF;F)V

    .line 232
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Chart;->rangeAxis:Lme/kuehle/chartlib/axis/AbstractAxis;

    invoke-virtual {v0, p1, p2}, Lme/kuehle/chartlib/axis/AbstractAxis;->zoom(Landroid/graphics/PointF;F)V

    .line 233
    return-void
.end method

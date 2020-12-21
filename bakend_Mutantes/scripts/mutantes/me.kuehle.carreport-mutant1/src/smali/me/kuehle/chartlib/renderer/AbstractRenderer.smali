.class public abstract Lme/kuehle/chartlib/renderer/AbstractRenderer;
.super Ljava/lang/Object;
.source "AbstractRenderer.java"


# static fields
.field protected static final DEFAULT_COLOR:I = -0xffff01


# instance fields
.field protected colors:Landroid/util/SparseIntArray;

.field protected context:Landroid/content/Context;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/renderer/AbstractRenderer;->colors:Landroid/util/SparseIntArray;

    .line 43
    iput-object p1, p0, Lme/kuehle/chartlib/renderer/AbstractRenderer;->context:Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/renderer/AbstractRenderer;->paint:Landroid/graphics/Paint;

    .line 45
    iget-object v0, p0, Lme/kuehle/chartlib/renderer/AbstractRenderer;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lme/kuehle/chartlib/chart/RectD;Landroid/util/SparseArray;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/RectF;",
            "Lme/kuehle/chartlib/chart/RectD;",
            "Landroid/util/SparseArray",
            "<",
            "Lme/kuehle/chartlib/data/Series;",
            ">;)V"
        }
    .end annotation
.end method

.method public getSeriesColor(I)I
    .locals 2
    .param p1, "series"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lme/kuehle/chartlib/renderer/AbstractRenderer;->colors:Landroid/util/SparseIntArray;

    const v1, -0xffff01

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method protected getSeriesPaint(I)Landroid/graphics/Paint;
    .locals 2
    .param p1, "series"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lme/kuehle/chartlib/renderer/AbstractRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Lme/kuehle/chartlib/renderer/AbstractRenderer;->getSeriesColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lme/kuehle/chartlib/renderer/AbstractRenderer;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public abstract isEnoughData(Landroid/util/SparseArray;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lme/kuehle/chartlib/data/Series;",
            ">;)Z"
        }
    .end annotation
.end method

.method public setSeriesColor(II)V
    .locals 1
    .param p1, "series"    # I
    .param p2, "color"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lme/kuehle/chartlib/renderer/AbstractRenderer;->colors:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    return-void
.end method

.method protected translate(Lme/kuehle/chartlib/data/PointD;Landroid/graphics/RectF;Lme/kuehle/chartlib/chart/RectD;)Landroid/graphics/PointF;
    .locals 12
    .param p1, "point"    # Lme/kuehle/chartlib/data/PointD;
    .param p2, "area"    # Landroid/graphics/RectF;
    .param p3, "axisBounds"    # Lme/kuehle/chartlib/chart/RectD;

    .prologue
    .line 117
    iget v6, p2, Landroid/graphics/RectF;->right:F

    iget v7, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {p3}, Lme/kuehle/chartlib/chart/RectD;->getRight()D

    move-result-wide v8

    invoke-virtual {p3}, Lme/kuehle/chartlib/chart/RectD;->getLeft()D

    move-result-wide v10

    sub-double/2addr v8, v10

    div-double v0, v6, v8

    .line 119
    .local v0, "scaleX":D
    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    iget v7, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-virtual {p3}, Lme/kuehle/chartlib/chart/RectD;->getTop()D

    move-result-wide v8

    invoke-virtual {p3}, Lme/kuehle/chartlib/chart/RectD;->getBottom()D

    move-result-wide v10

    sub-double/2addr v8, v10

    div-double v2, v6, v8

    .line 122
    .local v2, "scaleY":D
    iget-wide v6, p1, Lme/kuehle/chartlib/data/PointD;->x:D

    invoke-virtual {p3}, Lme/kuehle/chartlib/chart/RectD;->getLeft()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v6, v0

    double-to-float v4, v6

    .line 123
    .local v4, "x":F
    invoke-virtual {p3}, Lme/kuehle/chartlib/chart/RectD;->getTop()D

    move-result-wide v6

    iget-wide v8, p1, Lme/kuehle/chartlib/data/PointD;->y:D

    sub-double/2addr v6, v8

    mul-double/2addr v6, v2

    double-to-float v5, v6

    .line 125
    .local v5, "y":F
    new-instance v6, Landroid/graphics/PointF;

    iget v7, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v4

    iget v8, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v8, v5

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v6
.end method

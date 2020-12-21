.class public Lme/kuehle/chartlib/renderer/LineRenderer;
.super Lme/kuehle/chartlib/renderer/AbstractRenderer;
.source "LineRenderer.java"

# interfaces
.implements Lme/kuehle/chartlib/renderer/Clickable;


# static fields
.field protected static final RELATIVE_CLICK_RADIUS:F = 5.0f

.field protected static final RELATIVE_POINT_RADIUS:F = 0.75f


# instance fields
.field protected final defaultLineWidth:Lme/kuehle/chartlib/util/Size;

.field protected drawPoints:Landroid/util/SparseBooleanArray;

.field protected fillBelowLine:Landroid/util/SparseBooleanArray;

.field private lastDrawnArea:Landroid/graphics/RectF;

.field private lastDrawnAxisBounds:Lme/kuehle/chartlib/chart/RectD;

.field private lastDrawnSeries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lme/kuehle/chartlib/data/Series;",
            ">;"
        }
    .end annotation
.end field

.field private linePath:Landroid/graphics/Path;

.field protected lineWidths:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lme/kuehle/chartlib/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private onClickListener:Lme/kuehle/chartlib/renderer/OnClickListener;

.field protected pathEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/PathEffect;",
            ">;"
        }
    .end annotation
.end field

.field private pointPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lme/kuehle/chartlib/renderer/AbstractRenderer;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->lineWidths:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Lme/kuehle/chartlib/util/Size;

    iget-object v1, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->context:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lme/kuehle/chartlib/util/Size;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->defaultLineWidth:Lme/kuehle/chartlib/util/Size;

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->pathEffects:Landroid/util/SparseArray;

    .line 50
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->drawPoints:Landroid/util/SparseBooleanArray;

    .line 51
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->fillBelowLine:Landroid/util/SparseBooleanArray;

    .line 63
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->linePath:Landroid/graphics/Path;

    .line 64
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->pointPath:Landroid/graphics/Path;

    .line 65
    return-void
.end method


# virtual methods
.method public click(Landroid/graphics/PointF;)V
    .locals 9
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 69
    iget-object v5, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->onClickListener:Lme/kuehle/chartlib/renderer/OnClickListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->lastDrawnArea:Landroid/graphics/RectF;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->lastDrawnAxisBounds:Lme/kuehle/chartlib/chart/RectD;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->lastDrawnSeries:Landroid/util/SparseArray;

    if-nez v5, :cond_1

    .line 91
    :cond_0
    return-void

    .line 74
    :cond_1
    const/4 v4, 0x0

    .local v4, "s":I
    :goto_0
    iget-object v5, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->lastDrawnSeries:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 75
    iget-object v5, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->lastDrawnSeries:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lme/kuehle/chartlib/renderer/LineRenderer;->isSeriesDrawPoints(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 74
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
    :cond_3
    iget-object v5, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->lastDrawnSeries:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lme/kuehle/chartlib/renderer/LineRenderer;->getPointRadius(I)F

    move-result v5

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float v0, v5, v6

    .line 80
    .local v0, "clickRadius":F
    const/4 v1, 0x0

    .local v1, "p":I
    :goto_1
    iget-object v5, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->lastDrawnSeries:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lme/kuehle/chartlib/data/Series;

    invoke-virtual {v5}, Lme/kuehle/chartlib/data/Series;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 81
    iget-object v5, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->lastDrawnSeries:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lme/kuehle/chartlib/data/Series;

    invoke-virtual {v5, v1}, Lme/kuehle/chartlib/data/Series;->get(I)Lme/kuehle/chartlib/data/PointD;

    move-result-object v5

    iget-object v6, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->lastDrawnArea:Landroid/graphics/RectF;

    iget-object v7, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->lastDrawnAxisBounds:Lme/kuehle/chartlib/chart/RectD;

    invoke-virtual {p0, v5, v6, v7}, Lme/kuehle/chartlib/renderer/LineRenderer;->translate(Lme/kuehle/chartlib/data/PointD;Landroid/graphics/RectF;Lme/kuehle/chartlib/chart/RectD;)Landroid/graphics/PointF;

    move-result-object v2

    .line 83
    .local v2, "pointInSeries":Landroid/graphics/PointF;
    new-instance v3, Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v0

    iget v6, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v0

    iget v7, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v0

    iget v8, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v0

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 86
    .local v3, "region":Landroid/graphics/RectF;
    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 87
    iget-object v5, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->onClickListener:Lme/kuehle/chartlib/renderer/OnClickListener;

    iget-object v6, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->lastDrawnSeries:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-interface {v5, v6, v1}, Lme/kuehle/chartlib/renderer/OnClickListener;->onSeriesClick(II)V

    .line 80
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lme/kuehle/chartlib/chart/RectD;Landroid/util/SparseArray;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "area"    # Landroid/graphics/RectF;
    .param p3, "axisBounds"    # Lme/kuehle/chartlib/chart/RectD;
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

    .prologue
    .line 99
    .local p4, "series":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/chartlib/data/Series;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 100
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 102
    const/4 v10, 0x0

    .local v10, "s":I
    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ge v10, v13, :cond_c

    .line 103
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lme/kuehle/chartlib/data/Series;

    invoke-virtual {v13}, Lme/kuehle/chartlib/data/Series;->size()I

    move-result v13

    if-nez v13, :cond_0

    .line 102
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 107
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/chartlib/renderer/LineRenderer;->linePath:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    .line 108
    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/chartlib/renderer/LineRenderer;->pointPath:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    .line 109
    const/4 v3, 0x0

    .line 110
    .local v3, "lastPoint":Landroid/graphics/PointF;
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lme/kuehle/chartlib/data/Series;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lme/kuehle/chartlib/data/Series;->get(I)Lme/kuehle/chartlib/data/PointD;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v13, v1, v2}, Lme/kuehle/chartlib/renderer/LineRenderer;->translate(Lme/kuehle/chartlib/data/PointD;Landroid/graphics/RectF;Lme/kuehle/chartlib/chart/RectD;)Landroid/graphics/PointF;

    move-result-object v5

    .line 112
    .local v5, "nextPoint":Landroid/graphics/PointF;
    const/4 v6, 0x0

    .local v6, "p":I
    :goto_2
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lme/kuehle/chartlib/data/Series;

    invoke-virtual {v13}, Lme/kuehle/chartlib/data/Series;->size()I

    move-result v13

    if-ge v6, v13, :cond_4

    .line 113
    move-object v9, v5

    .line 114
    .local v9, "point":Landroid/graphics/PointF;
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lme/kuehle/chartlib/data/Series;

    invoke-virtual {v13}, Lme/kuehle/chartlib/data/Series;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v6, v13, :cond_2

    .line 115
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lme/kuehle/chartlib/data/Series;

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v13, v14}, Lme/kuehle/chartlib/data/Series;->get(I)Lme/kuehle/chartlib/data/PointD;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v13, v1, v2}, Lme/kuehle/chartlib/renderer/LineRenderer;->translate(Lme/kuehle/chartlib/data/PointD;Landroid/graphics/RectF;Lme/kuehle/chartlib/chart/RectD;)Landroid/graphics/PointF;

    move-result-object v5

    .line 121
    :goto_3
    iget v13, v9, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_3

    .line 123
    if-eqz v5, :cond_1

    iget v13, v5, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_1

    .line 124
    iget v13, v9, Landroid/graphics/PointF;->y:F

    iget v14, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v14

    iget v14, v9, Landroid/graphics/PointF;->x:F

    iget v15, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v15

    div-float v4, v13, v14

    .line 126
    .local v4, "m":F
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/RectF;->left:F

    .line 127
    .local v11, "x":F
    iget v13, v5, Landroid/graphics/PointF;->y:F

    iget v14, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v11

    mul-float/2addr v14, v4

    sub-float v12, v13, v14

    .line 128
    .local v12, "y":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/chartlib/renderer/LineRenderer;->linePath:Landroid/graphics/Path;

    invoke-virtual {v13, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 192
    .end local v4    # "m":F
    .end local v11    # "x":F
    .end local v12    # "y":F
    :cond_1
    :goto_4
    move-object v3, v9

    .line 112
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 118
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 130
    :cond_3
    iget v13, v9, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_6

    .line 132
    if-eqz v3, :cond_1

    iget v13, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_1

    .line 133
    iget v13, v3, Landroid/graphics/PointF;->y:F

    iget v14, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v14

    iget v14, v3, Landroid/graphics/PointF;->x:F

    iget v15, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v15

    div-float v4, v13, v14

    .line 135
    .restart local v4    # "m":F
    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/RectF;->right:F

    .line 136
    .restart local v11    # "x":F
    iget v13, v9, Landroid/graphics/PointF;->y:F

    iget v14, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v11

    mul-float/2addr v14, v4

    sub-float v12, v13, v14

    .line 137
    .restart local v12    # "y":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/chartlib/renderer/LineRenderer;->linePath:Landroid/graphics/Path;

    invoke-virtual {v13, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 195
    .end local v4    # "m":F
    .end local v9    # "point":Landroid/graphics/PointF;
    .end local v11    # "x":F
    .end local v12    # "y":F
    :cond_4
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lme/kuehle/chartlib/renderer/LineRenderer;->getSeriesPaint(I)Landroid/graphics/Paint;

    move-result-object v7

    .line 196
    .local v7, "paint":Landroid/graphics/Paint;
    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/chartlib/renderer/LineRenderer;->linePath:Landroid/graphics/Path;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 199
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lme/kuehle/chartlib/renderer/LineRenderer;->isSeriesFillBelowLine(I)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 200
    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lme/kuehle/chartlib/renderer/LineRenderer;->getSeriesFillBelowLineColor(I)I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 204
    .local v8, "pathBounds":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/chartlib/renderer/LineRenderer;->linePath:Landroid/graphics/Path;

    const/4 v14, 0x1

    invoke-virtual {v13, v8, v14}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 205
    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/chartlib/renderer/LineRenderer;->linePath:Landroid/graphics/Path;

    iget v14, v8, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 206
    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/chartlib/renderer/LineRenderer;->linePath:Landroid/graphics/Path;

    iget v14, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/chartlib/renderer/LineRenderer;->linePath:Landroid/graphics/Path;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 211
    .end local v8    # "pathBounds":Landroid/graphics/RectF;
    :cond_5
    sget-object v13, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 212
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lme/kuehle/chartlib/renderer/LineRenderer;->getSeriesColor(I)I

    move-result v13

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/chartlib/renderer/LineRenderer;->pointPath:Landroid/graphics/Path;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 140
    .end local v7    # "paint":Landroid/graphics/Paint;
    .restart local v9    # "point":Landroid/graphics/PointF;
    :cond_6
    iget v13, v9, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_8

    .line 143
    if-eqz v3, :cond_7

    iget v13, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_7

    .line 144
    iget v13, v3, Landroid/graphics/PointF;->y:F

    iget v14, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v14

    iget v14, v3, Landroid/graphics/PointF;->x:F

    iget v15, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v15

    div-float v4, v13, v14

    .line 146
    .restart local v4    # "m":F
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/RectF;->top:F

    .line 147
    .restart local v12    # "y":F
    iget v13, v9, Landroid/graphics/PointF;->y:F

    sub-float v13, v12, v13

    div-float/2addr v13, v4

    iget v14, v9, Landroid/graphics/PointF;->x:F

    add-float v11, v13, v14

    .line 148
    .restart local v11    # "x":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/chartlib/renderer/LineRenderer;->linePath:Landroid/graphics/Path;

    invoke-virtual {v13, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 151
    .end local v4    # "m":F
    .end local v11    # "x":F
    .end local v12    # "y":F
    :cond_7
    if-eqz v5, :cond_1

    iget v13, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_1

    .line 152
    iget v13, v9, Landroid/graphics/PointF;->y:F

    iget v14, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v14

    iget v14, v9, Landroid/graphics/PointF;->x:F

    iget v15, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v15

    div-float v4, v13, v14

    .line 154
    .restart local v4    # "m":F
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/RectF;->top:F

    .line 155
    .restart local v12    # "y":F
    iget v13, v5, Landroid/graphics/PointF;->y:F

    sub-float v13, v12, v13

    div-float/2addr v13, v4

    iget v14, v5, Landroid/graphics/PointF;->x:F

    add-float v11, v13, v14

    .line 156
    .restart local v11    # "x":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/chartlib/renderer/LineRenderer;->linePath:Landroid/graphics/Path;

    invoke-virtual {v13, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    goto/16 :goto_4

    .line 158
    .end local v4    # "m":F
    .end local v11    # "x":F
    .end local v12    # "y":F
    :cond_8
    iget v13, v9, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_a

    .line 161
    if-eqz v3, :cond_9

    iget v13, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_9

    .line 162
    iget v13, v3, Landroid/graphics/PointF;->y:F

    iget v14, v9, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v14

    iget v14, v3, Landroid/graphics/PointF;->x:F

    iget v15, v9, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v15

    div-float v4, v13, v14

    .line 164
    .restart local v4    # "m":F
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    .line 165
    .restart local v12    # "y":F
    iget v13, v9, Landroid/graphics/PointF;->y:F

    sub-float v13, v12, v13

    div-float/2addr v13, v4

    iget v14, v9, Landroid/graphics/PointF;->x:F

    add-float v11, v13, v14

    .line 166
    .restart local v11    # "x":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/chartlib/renderer/LineRenderer;->linePath:Landroid/graphics/Path;

    invoke-virtual {v13, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 169
    .end local v4    # "m":F
    .end local v11    # "x":F
    .end local v12    # "y":F
    :cond_9
    if-eqz v5, :cond_1

    iget v13, v5, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_1

    .line 170
    iget v13, v9, Landroid/graphics/PointF;->y:F

    iget v14, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v14

    iget v14, v9, Landroid/graphics/PointF;->x:F

    iget v15, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v14, v15

    div-float v4, v13, v14

    .line 172
    .restart local v4    # "m":F
    move-object/from16 v0, p2

    iget v12, v0, Landroid/graphics/RectF;->bottom:F

    .line 173
    .restart local v12    # "y":F
    iget v13, v5, Landroid/graphics/PointF;->y:F

    sub-float v13, v12, v13

    div-float/2addr v13, v4

    iget v14, v5, Landroid/graphics/PointF;->x:F

    add-float v11, v13, v14

    .line 174
    .restart local v11    # "x":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/chartlib/renderer/LineRenderer;->linePath:Landroid/graphics/Path;

    invoke-virtual {v13, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    goto/16 :goto_4

    .line 176
    .end local v4    # "m":F
    .end local v11    # "x":F
    .end local v12    # "y":F
    :cond_a
    if-nez v3, :cond_b

    .line 178
    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/chartlib/renderer/LineRenderer;->linePath:Landroid/graphics/Path;

    iget v14, v9, Landroid/graphics/PointF;->x:F

    iget v15, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 179
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lme/kuehle/chartlib/renderer/LineRenderer;->isSeriesDrawPoints(I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 180
    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/chartlib/renderer/LineRenderer;->pointPath:Landroid/graphics/Path;

    iget v14, v9, Landroid/graphics/PointF;->x:F

    iget v15, v9, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lme/kuehle/chartlib/renderer/LineRenderer;->getPointRadius(I)F

    move-result v16

    sget-object v17, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_4

    .line 185
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/chartlib/renderer/LineRenderer;->linePath:Landroid/graphics/Path;

    iget v14, v9, Landroid/graphics/PointF;->x:F

    iget v15, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lme/kuehle/chartlib/renderer/LineRenderer;->isSeriesDrawPoints(I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 187
    move-object/from16 v0, p0

    iget-object v13, v0, Lme/kuehle/chartlib/renderer/LineRenderer;->pointPath:Landroid/graphics/Path;

    iget v14, v9, Landroid/graphics/PointF;->x:F

    iget v15, v9, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lme/kuehle/chartlib/renderer/LineRenderer;->getPointRadius(I)F

    move-result v16

    sget-object v17, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_4

    .line 215
    .end local v3    # "lastPoint":Landroid/graphics/PointF;
    .end local v5    # "nextPoint":Landroid/graphics/PointF;
    .end local v6    # "p":I
    .end local v9    # "point":Landroid/graphics/PointF;
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 217
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lme/kuehle/chartlib/renderer/LineRenderer;->lastDrawnArea:Landroid/graphics/RectF;

    .line 218
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lme/kuehle/chartlib/renderer/LineRenderer;->lastDrawnAxisBounds:Lme/kuehle/chartlib/chart/RectD;

    .line 219
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lme/kuehle/chartlib/renderer/LineRenderer;->lastDrawnSeries:Landroid/util/SparseArray;

    .line 220
    return-void
.end method

.method protected getPointRadius(I)F
    .locals 3
    .param p1, "series"    # I

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lme/kuehle/chartlib/renderer/LineRenderer;->getSeriesLineWidth(I)I

    move-result v0

    .line 231
    .local v0, "lineWidth":I
    int-to-float v1, v0

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    return v1
.end method

.method protected getSeriesFillBelowLineColor(I)I
    .locals 5
    .param p1, "series"    # I

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lme/kuehle/chartlib/renderer/LineRenderer;->getSeriesColor(I)I

    move-result v0

    .line 244
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method

.method public getSeriesLineWidth(I)I
    .locals 2
    .param p1, "series"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->lineWidths:Landroid/util/SparseArray;

    iget-object v1, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->defaultLineWidth:Lme/kuehle/chartlib/util/Size;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kuehle/chartlib/util/Size;

    invoke-virtual {v0}, Lme/kuehle/chartlib/util/Size;->getSizeInPixel()I

    move-result v0

    return v0
.end method

.method protected getSeriesPaint(I)Landroid/graphics/Paint;
    .locals 2
    .param p1, "series"    # I

    .prologue
    .line 261
    invoke-super {p0, p1}, Lme/kuehle/chartlib/renderer/AbstractRenderer;->getSeriesPaint(I)Landroid/graphics/Paint;

    move-result-object v0

    .line 262
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0, p1}, Lme/kuehle/chartlib/renderer/LineRenderer;->getSeriesLineWidth(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 263
    invoke-virtual {p0, p1}, Lme/kuehle/chartlib/renderer/LineRenderer;->getSeriesPathEffect(I)Landroid/graphics/PathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 264
    return-object v0
.end method

.method public getSeriesPathEffect(I)Landroid/graphics/PathEffect;
    .locals 1
    .param p1, "series"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->pathEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PathEffect;

    return-object v0
.end method

.method public isEnoughData(Landroid/util/SparseArray;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lme/kuehle/chartlib/data/Series;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "series":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/chartlib/data/Series;>;"
    const/4 v0, 0x0

    .local v0, "s":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 285
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/kuehle/chartlib/data/Series;

    invoke-virtual {v1}, Lme/kuehle/chartlib/data/Series;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 286
    const/4 v1, 0x1

    .line 289
    :goto_1
    return v1

    .line 284
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isSeriesDrawPoints(I)Z
    .locals 2
    .param p1, "series"    # I

    .prologue
    .line 300
    iget-object v0, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->drawPoints:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public isSeriesFillBelowLine(I)Z
    .locals 2
    .param p1, "series"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->fillBelowLine:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public setOnClickListener(Lme/kuehle/chartlib/renderer/OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lme/kuehle/chartlib/renderer/OnClickListener;

    .prologue
    .line 317
    iput-object p1, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->onClickListener:Lme/kuehle/chartlib/renderer/OnClickListener;

    .line 318
    return-void
.end method

.method public setSeriesDrawPoints(IZ)V
    .locals 1
    .param p1, "series"    # I
    .param p2, "drawPoints"    # Z

    .prologue
    .line 329
    iget-object v0, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->drawPoints:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 330
    return-void
.end method

.method public setSeriesFillBelowLine(IZ)V
    .locals 1
    .param p1, "series"    # I
    .param p2, "fill"    # Z

    .prologue
    .line 342
    iget-object v0, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->fillBelowLine:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 343
    return-void
.end method

.method public setSeriesLineWidth(II)V
    .locals 1
    .param p1, "series"    # I
    .param p2, "width"    # I

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lme/kuehle/chartlib/renderer/LineRenderer;->setSeriesLineWidth(III)V

    .line 355
    return-void
.end method

.method public setSeriesLineWidth(III)V
    .locals 3
    .param p1, "series"    # I
    .param p2, "width"    # I
    .param p3, "type"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->lineWidths:Landroid/util/SparseArray;

    new-instance v1, Lme/kuehle/chartlib/util/Size;

    iget-object v2, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p2, p3}, Lme/kuehle/chartlib/util/Size;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    return-void
.end method

.method public setSeriesPathEffect(ILandroid/graphics/PathEffect;)V
    .locals 1
    .param p1, "series"    # I
    .param p2, "effect"    # Landroid/graphics/PathEffect;

    .prologue
    .line 393
    iget-object v0, p0, Lme/kuehle/chartlib/renderer/LineRenderer;->pathEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 394
    return-void
.end method

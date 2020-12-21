.class public Lme/kuehle/chartlib/renderer/BarRenderer;
.super Lme/kuehle/chartlib/renderer/AbstractRenderer;
.source "BarRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/chartlib/renderer/BarRenderer$PointDataHolder;
    }
.end annotation


# instance fields
.field private final MAX_BAR_WIDTH:Lme/kuehle/chartlib/util/Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lme/kuehle/chartlib/renderer/AbstractRenderer;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Lme/kuehle/chartlib/util/Size;

    iget-object v1, p0, Lme/kuehle/chartlib/renderer/BarRenderer;->context:Landroid/content/Context;

    const/16 v2, 0x32

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lme/kuehle/chartlib/util/Size;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lme/kuehle/chartlib/renderer/BarRenderer;->MAX_BAR_WIDTH:Lme/kuehle/chartlib/util/Size;

    .line 57
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lme/kuehle/chartlib/chart/RectD;Landroid/util/SparseArray;)V
    .locals 30
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
    .line 76
    .local p4, "series":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/chartlib/data/Series;>;"
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v20, "pointMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Float;Ljava/util/ArrayList<Lme/kuehle/chartlib/renderer/BarRenderer$PointDataHolder;>;>;"
    const/16 v21, 0x0

    .local v21, "s":I
    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v21

    if-ge v0, v4, :cond_2

    .line 78
    const/16 v16, 0x0

    .local v16, "p":I
    :goto_1
    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lme/kuehle/chartlib/data/Series;

    invoke-virtual {v4}, Lme/kuehle/chartlib/data/Series;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_1

    .line 79
    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lme/kuehle/chartlib/data/Series;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lme/kuehle/chartlib/data/Series;->get(I)Lme/kuehle/chartlib/data/PointD;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v2}, Lme/kuehle/chartlib/renderer/BarRenderer;->translate(Lme/kuehle/chartlib/data/PointD;Landroid/graphics/RectF;Lme/kuehle/chartlib/chart/RectD;)Landroid/graphics/PointF;

    move-result-object v17

    .line 81
    .local v17, "point":Landroid/graphics/PointF;
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 82
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    new-instance v7, Lme/kuehle/chartlib/renderer/BarRenderer$PointDataHolder;

    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v7, v0, v9, v1}, Lme/kuehle/chartlib/renderer/BarRenderer$PointDataHolder;-><init>(Lme/kuehle/chartlib/renderer/BarRenderer;FI)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 77
    .end local v17    # "point":Landroid/graphics/PointF;
    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 90
    .end local v16    # "p":I
    :cond_2
    new-instance v24, Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    .local v24, "xValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-static/range {v24 .. v24}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 92
    const v15, 0x7f7fffff    # Float.MAX_VALUE

    .line 93
    .local v15, "minXGap":F
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v12, v4, :cond_3

    .line 94
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-int/lit8 v4, v12, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float v4, v7, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v23

    .line 95
    .local v23, "xGap":F
    move/from16 v0, v23

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 93
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 102
    .end local v23    # "xGap":F
    :cond_3
    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-virtual/range {p4 .. p4}, Landroid/util/SparseArray;->size()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v4, v7

    div-float v4, v15, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lme/kuehle/chartlib/renderer/BarRenderer;->MAX_BAR_WIDTH:Lme/kuehle/chartlib/util/Size;

    invoke-virtual {v7}, Lme/kuehle/chartlib/util/Size;->getSizeInPixel()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v11

    .line 104
    .local v11, "barWidth":F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v10, v4, v11

    .line 105
    .local v10, "barGap":F
    new-instance v4, Lme/kuehle/chartlib/data/PointD;

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v26

    move-wide/from16 v2, v28

    invoke-direct {v4, v0, v1, v2, v3}, Lme/kuehle/chartlib/data/PointD;-><init>(DD)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v4, v1, v2}, Lme/kuehle/chartlib/renderer/BarRenderer;->translate(Lme/kuehle/chartlib/data/PointD;Landroid/graphics/RectF;Lme/kuehle/chartlib/chart/RectD;)Landroid/graphics/PointF;

    move-result-object v4

    iget v0, v4, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    .line 108
    .local v25, "y0":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 109
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 110
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v22

    .line 111
    .local v22, "x":F
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v22, v4

    if-ltz v4, :cond_4

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v22, v4

    if-gtz v4, :cond_4

    .line 115
    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    .line 116
    .local v19, "pointDataHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lme/kuehle/chartlib/renderer/BarRenderer$PointDataHolder;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v11

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    int-to-float v7, v7

    mul-float/2addr v7, v10

    add-float/2addr v4, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    sub-float v5, v22, v4

    .line 119
    .local v5, "left":F
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lme/kuehle/chartlib/renderer/BarRenderer$PointDataHolder;

    .line 120
    .local v18, "pointDataHolder":Lme/kuehle/chartlib/renderer/BarRenderer$PointDataHolder;
    new-instance v17, Landroid/graphics/PointF;

    move-object/from16 v0, v18

    iget v4, v0, Lme/kuehle/chartlib/renderer/BarRenderer$PointDataHolder;->y:F

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-direct {v0, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 121
    .restart local v17    # "point":Landroid/graphics/PointF;
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_5

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v4, v7

    if-gez v4, :cond_6

    :cond_5
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v25, v4

    if-gtz v4, :cond_7

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v4, v25, v4

    if-ltz v4, :cond_7

    .line 123
    :cond_6
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/PointF;->y:F

    move/from16 v0, v25

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 124
    .local v6, "top":F
    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/PointF;->y:F

    move/from16 v0, v25

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 125
    .local v8, "bottom":F
    add-float v7, v5, v11

    move-object/from16 v0, v18

    iget v4, v0, Lme/kuehle/chartlib/renderer/BarRenderer$PointDataHolder;->series:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lme/kuehle/chartlib/renderer/BarRenderer;->getSeriesPaint(I)Landroid/graphics/Paint;

    move-result-object v9

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 129
    .end local v6    # "top":F
    .end local v8    # "bottom":F
    :cond_7
    add-float v4, v11, v10

    add-float/2addr v5, v4

    .line 130
    goto :goto_3

    .line 132
    .end local v5    # "left":F
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v17    # "point":Landroid/graphics/PointF;
    .end local v18    # "pointDataHolder":Lme/kuehle/chartlib/renderer/BarRenderer$PointDataHolder;
    .end local v19    # "pointDataHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lme/kuehle/chartlib/renderer/BarRenderer$PointDataHolder;>;"
    .end local v22    # "x":F
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 133
    return-void
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
    .local p1, "series":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/chartlib/data/Series;>;"
    const/4 v2, 0x1

    .line 137
    const/4 v0, 0x0

    .local v0, "s":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 138
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/kuehle/chartlib/data/Series;

    invoke-virtual {v1}, Lme/kuehle/chartlib/data/Series;->size()I

    move-result v1

    if-lt v1, v2, :cond_0

    move v1, v2

    .line 142
    :goto_1
    return v1

    .line 137
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

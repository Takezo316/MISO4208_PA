.class public Lme/kuehle/chartlib/axis/DomainAxis;
.super Lme/kuehle/chartlib/axis/AbstractAxis;
.source "DomainAxis.java"


# direct methods
.method public constructor <init>(DDLme/kuehle/chartlib/util/Size;)V
    .locals 0
    .param p1, "topBound"    # D
    .param p3, "bottomBound"    # D
    .param p5, "fontSize"    # Lme/kuehle/chartlib/util/Size;

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Lme/kuehle/chartlib/axis/AbstractAxis;-><init>(DDLme/kuehle/chartlib/util/Size;)V

    .line 29
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "area"    # Landroid/graphics/RectF;

    .prologue
    .line 33
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kuehle/chartlib/axis/DomainAxis;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lme/kuehle/chartlib/axis/DomainAxis;->getGridColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {p0 .. p0}, Lme/kuehle/chartlib/axis/DomainAxis;->measureSize()I

    move-result v3

    int-to-float v3, v3

    sub-float v4, v2, v3

    .line 35
    .local v4, "lineY":F
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lme/kuehle/chartlib/axis/DomainAxis;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 37
    move-object/from16 v0, p0

    iget-object v11, v0, Lme/kuehle/chartlib/axis/DomainAxis;->labels:[D

    .local v11, "arr$":[D
    array-length v15, v11

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v15, :cond_3

    aget-wide v13, v11, v12

    .line 38
    .local v13, "label":D
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    move-object/from16 v0, p0

    iget-wide v7, v0, Lme/kuehle/chartlib/axis/DomainAxis;->topBound:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lme/kuehle/chartlib/axis/DomainAxis;->bottomBound:D

    sub-double/2addr v7, v9

    div-double v16, v2, v7

    .line 39
    .local v16, "scale":D
    move-object/from16 v0, p0

    iget-wide v2, v0, Lme/kuehle/chartlib/axis/DomainAxis;->bottomBound:D

    sub-double v2, v13, v2

    mul-double v2, v2, v16

    double-to-float v2, v2

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    add-float v6, v2, v3

    .line 40
    .local v6, "middle":F
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v6, v2

    if-ltz v2, :cond_0

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v6, v2

    if-lez v2, :cond_1

    .line 37
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 44
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kuehle/chartlib/axis/DomainAxis;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lme/kuehle/chartlib/axis/DomainAxis;->getGridColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    const/high16 v2, 0x3f800000    # 1.0f

    add-float v7, v4, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    const/high16 v3, 0x40400000    # 3.0f

    add-float v9, v2, v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lme/kuehle/chartlib/axis/DomainAxis;->paint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v8, v6

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 47
    invoke-virtual/range {p0 .. p0}, Lme/kuehle/chartlib/axis/DomainAxis;->isShowGrid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lme/kuehle/chartlib/axis/DomainAxis;->paint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v8, v6

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 51
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kuehle/chartlib/axis/DomainAxis;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lme/kuehle/chartlib/axis/DomainAxis;->getFontColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kuehle/chartlib/axis/DomainAxis;->labelFormatter:Lme/kuehle/chartlib/axis/AxisLabelFormatter;

    invoke-interface {v2, v13, v14}, Lme/kuehle/chartlib/axis/AxisLabelFormatter;->formatLabel(D)Ljava/lang/String;

    move-result-object v18

    .line 53
    .local v18, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kuehle/chartlib/axis/DomainAxis;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v19

    .line 54
    .local v19, "textWidth":F
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v19, v2

    sub-float v2, v6, v2

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lme/kuehle/chartlib/axis/DomainAxis;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lme/kuehle/chartlib/axis/DomainAxis;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 57
    .end local v6    # "middle":F
    .end local v13    # "label":D
    .end local v16    # "scale":D
    .end local v18    # "text":Ljava/lang/String;
    .end local v19    # "textWidth":F
    :cond_3
    return-void
.end method

.method protected getMaxLabelSize()F
    .locals 5

    .prologue
    .line 61
    iget-object v0, p0, Lme/kuehle/chartlib/axis/DomainAxis;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/kuehle/chartlib/axis/DomainAxis;->labelFormatter:Lme/kuehle/chartlib/axis/AxisLabelFormatter;

    iget-wide v2, p0, Lme/kuehle/chartlib/axis/DomainAxis;->topBound:D

    invoke-interface {v1, v2, v3}, Lme/kuehle/chartlib/axis/AxisLabelFormatter;->formatLabel(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lme/kuehle/chartlib/axis/DomainAxis;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lme/kuehle/chartlib/axis/DomainAxis;->labelFormatter:Lme/kuehle/chartlib/axis/AxisLabelFormatter;

    iget-wide v3, p0, Lme/kuehle/chartlib/axis/DomainAxis;->bottomBound:D

    invoke-interface {v2, v3, v4}, Lme/kuehle/chartlib/axis/AxisLabelFormatter;->formatLabel(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method protected isDomain()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public measureSize()I
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lme/kuehle/chartlib/axis/DomainAxis;->getFontSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

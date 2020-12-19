.class public abstract Lme/kuehle/chartlib/axis/AbstractAxis;
.super Ljava/lang/Object;
.source "AbstractAxis.java"


# static fields
.field private static final FONT_SIZE_RELATIVE_LABEL_PADDING:I = 0x3

.field protected static final LABEL_TICK_GAP:I = 0x3

.field protected static final LABEL_TICK_LENGTH:I = 0x3

.field protected static final LINE_WIDTH:I = 0x1


# instance fields
.field private autoGenerateLabels:Z

.field protected bottomBound:D

.field private defaultBottomBound:D

.field private defaultTopBound:D

.field private fontColor:I

.field private fontSize:Lme/kuehle/chartlib/util/Size;

.field private gridColor:I

.field protected height:I

.field protected labelFormatter:Lme/kuehle/chartlib/axis/AxisLabelFormatter;

.field protected labels:[D

.field private movable:Z

.field protected paint:Landroid/graphics/Paint;

.field private showGrid:Z

.field protected topBound:D

.field protected width:I

.field private zoomable:Z


# direct methods
.method public constructor <init>(DDLme/kuehle/chartlib/util/Size;)V
    .locals 2
    .param p1, "topBound"    # D
    .param p3, "bottomBound"    # D
    .param p5, "fontSize"    # Lme/kuehle/chartlib/util/Size;

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const v0, -0x333334

    iput v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->fontColor:I

    .line 49
    const v0, -0xbbbbbc

    iput v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->gridColor:I

    .line 50
    iput-boolean v1, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->showGrid:Z

    .line 51
    iput-boolean v1, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->movable:Z

    .line 52
    iput-boolean v1, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->zoomable:Z

    .line 53
    iput-boolean v1, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->autoGenerateLabels:Z

    .line 65
    iput-wide p1, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->defaultTopBound:D

    .line 66
    iput-wide p3, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->defaultBottomBound:D

    .line 67
    iput-wide p1, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->topBound:D

    .line 68
    iput-wide p3, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->bottomBound:D

    .line 69
    iput-object p5, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->fontSize:Lme/kuehle/chartlib/util/Size;

    .line 71
    new-instance v0, Lme/kuehle/chartlib/axis/IntegerAxisLabelFormatter;

    invoke-direct {v0}, Lme/kuehle/chartlib/axis/IntegerAxisLabelFormatter;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->labelFormatter:Lme/kuehle/chartlib/axis/AxisLabelFormatter;

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->paint:Landroid/graphics/Paint;

    .line 73
    iget-object v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->paint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Lme/kuehle/chartlib/util/Size;->getSizeInPixel()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    return-void
.end method

.method private generateLabels()V
    .locals 11

    .prologue
    .line 104
    iget-boolean v7, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->autoGenerateLabels:Z

    if-nez v7, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-wide v7, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->topBound:D

    iget-wide v9, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->bottomBound:D

    sub-double v0, v7, v9

    .line 109
    .local v0, "boundDistance":D
    invoke-virtual {p0}, Lme/kuehle/chartlib/axis/AbstractAxis;->isDomain()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->width:I

    :goto_1
    int-to-float v7, v7

    invoke-virtual {p0}, Lme/kuehle/chartlib/axis/AbstractAxis;->getMaxLabelSize()F

    move-result v8

    invoke-direct {p0}, Lme/kuehle/chartlib/axis/AbstractAxis;->getPreferredLabelPadding()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    div-float/2addr v7, v8

    float-to-int v6, v7

    .line 110
    .local v6, "prefLabelCount":I
    if-nez v6, :cond_3

    .line 111
    const/4 v7, 0x0

    new-array v7, v7, [D

    iput-object v7, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->labels:[D

    goto :goto_0

    .line 109
    .end local v6    # "prefLabelCount":I
    :cond_2
    iget v7, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->height:I

    goto :goto_1

    .line 115
    .restart local v6    # "prefLabelCount":I
    :cond_3
    int-to-double v7, v6

    div-double v4, v0, v7

    .line 116
    .local v4, "labelDataPadding":D
    const-wide/16 v7, 0x0

    cmpl-double v7, v4, v7

    if-nez v7, :cond_4

    .line 117
    const/4 v7, 0x0

    new-array v7, v7, [D

    iput-object v7, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->labels:[D

    goto :goto_0

    .line 119
    :cond_4
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v4, v7

    if-gez v7, :cond_6

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    cmpl-double v7, v4, v7

    if-lez v7, :cond_6

    .line 121
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v7, v4, v7

    if-gez v7, :cond_5

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    cmpl-double v7, v4, v7

    if-lez v7, :cond_5

    .line 122
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v7

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 124
    :cond_5
    invoke-static {v4, v5}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    .line 125
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    int-to-double v9, v2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    div-double/2addr v4, v7

    .line 137
    .end local v2    # "i":I
    :goto_3
    div-double v7, v0, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-int v3, v7

    .line 138
    .local v3, "labelCount":I
    new-array v7, v3, [D

    iput-object v7, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->labels:[D

    .line 139
    if-lez v3, :cond_0

    .line 140
    iget-object v7, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->labels:[D

    const/4 v8, 0x0

    iget-wide v9, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->bottomBound:D

    div-double/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    mul-double/2addr v9, v4

    aput-wide v9, v7, v8

    .line 142
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v3, :cond_0

    .line 143
    iget-object v7, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->labels:[D

    iget-object v8, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->labels:[D

    add-int/lit8 v9, v2, -0x1

    aget-wide v8, v8, v9

    add-double/2addr v8, v4

    aput-wide v8, v7, v2

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 126
    .end local v2    # "i":I
    .end local v3    # "labelCount":I
    :cond_6
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    cmpl-double v7, v4, v7

    if-gtz v7, :cond_7

    const-wide/high16 v7, -0x3fdc000000000000L    # -10.0

    cmpg-double v7, v4, v7

    if-gez v7, :cond_a

    .line 128
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    cmpl-double v7, v4, v7

    if-gtz v7, :cond_8

    const-wide/high16 v7, -0x3fdc000000000000L    # -10.0

    cmpg-double v7, v4, v7

    if-gez v7, :cond_9

    .line 129
    :cond_8
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v7

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 131
    :cond_9
    invoke-static {v4, v5}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    .line 132
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    int-to-double v9, v2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v4, v7

    .line 133
    goto :goto_3

    .line 134
    .end local v2    # "i":I
    :cond_a
    invoke-static {v4, v5}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    goto :goto_3
.end method

.method private getPreferredLabelPadding()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->fontSize:Lme/kuehle/chartlib/util/Size;

    invoke-virtual {v0}, Lme/kuehle/chartlib/util/Size;->getSizeInPixel()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method public changeSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 86
    iput p1, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->width:I

    .line 87
    iput p2, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->height:I

    .line 88
    invoke-direct {p0}, Lme/kuehle/chartlib/axis/AbstractAxis;->generateLabels()V

    .line 89
    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
.end method

.method public getBottomBound()D
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->bottomBound:D

    return-wide v0
.end method

.method public getFontColor()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->fontColor:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->fontSize:Lme/kuehle/chartlib/util/Size;

    invoke-virtual {v0}, Lme/kuehle/chartlib/util/Size;->getSizeInPixel()I

    move-result v0

    return v0
.end method

.method public getGridColor()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->gridColor:I

    return v0
.end method

.method protected abstract getMaxLabelSize()F
.end method

.method public getTopBound()D
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->topBound:D

    return-wide v0
.end method

.method protected abstract isDomain()Z
.end method

.method public isMovable()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->movable:Z

    return v0
.end method

.method public isShowGrid()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->showGrid:Z

    return v0
.end method

.method public isZoomable()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->zoomable:Z

    return v0
.end method

.method public abstract measureSize()I
.end method

.method public move(F)V
    .locals 9
    .param p1, "distance"    # F

    .prologue
    .line 207
    iget-boolean v3, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->movable:Z

    if-eqz v3, :cond_0

    .line 208
    invoke-virtual {p0}, Lme/kuehle/chartlib/axis/AbstractAxis;->isDomain()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->width:I

    int-to-float v2, v3

    .line 209
    .local v2, "size":F
    :goto_0
    float-to-double v3, v2

    iget-wide v5, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->topBound:D

    iget-wide v7, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->bottomBound:D

    sub-double/2addr v5, v7

    div-double v0, v3, v5

    .line 211
    .local v0, "scale":D
    invoke-virtual {p0}, Lme/kuehle/chartlib/axis/AbstractAxis;->isDomain()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    iget-wide v3, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->bottomBound:D

    float-to-double v5, p1

    div-double/2addr v5, v0

    add-double/2addr v3, v5

    iput-wide v3, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->bottomBound:D

    .line 213
    iget-wide v3, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->topBound:D

    float-to-double v5, p1

    div-double/2addr v5, v0

    add-double/2addr v3, v5

    iput-wide v3, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->topBound:D

    .line 218
    :goto_1
    invoke-direct {p0}, Lme/kuehle/chartlib/axis/AbstractAxis;->generateLabels()V

    .line 220
    .end local v0    # "scale":D
    .end local v2    # "size":F
    :cond_0
    return-void

    .line 208
    :cond_1
    iget v3, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->height:I

    int-to-float v2, v3

    goto :goto_0

    .line 215
    .restart local v0    # "scale":D
    .restart local v2    # "size":F
    :cond_2
    iget-wide v3, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->bottomBound:D

    float-to-double v5, p1

    div-double/2addr v5, v0

    sub-double/2addr v3, v5

    iput-wide v3, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->bottomBound:D

    .line 216
    iget-wide v3, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->topBound:D

    float-to-double v5, p1

    div-double/2addr v5, v0

    sub-double/2addr v3, v5

    iput-wide v3, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->topBound:D

    goto :goto_1
.end method

.method public restoreDefaultBounds()V
    .locals 2

    .prologue
    .line 226
    iget-wide v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->defaultTopBound:D

    iput-wide v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->topBound:D

    .line 227
    iget-wide v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->defaultBottomBound:D

    iput-wide v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->bottomBound:D

    .line 228
    invoke-direct {p0}, Lme/kuehle/chartlib/axis/AbstractAxis;->generateLabels()V

    .line 229
    return-void
.end method

.method public setDefaultBottomBound(D)V
    .locals 4
    .param p1, "defaultBottomBound"    # D

    .prologue
    .line 239
    iget-wide v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->bottomBound:D

    iget-wide v2, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->defaultBottomBound:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 240
    iput-wide p1, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->bottomBound:D

    .line 241
    invoke-direct {p0}, Lme/kuehle/chartlib/axis/AbstractAxis;->generateLabels()V

    .line 243
    :cond_0
    iput-wide p1, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->defaultBottomBound:D

    .line 244
    return-void
.end method

.method public setDefaultTopBound(D)V
    .locals 4
    .param p1, "defaultTopBound"    # D

    .prologue
    .line 254
    iget-wide v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->topBound:D

    iget-wide v2, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->defaultTopBound:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 255
    iput-wide p1, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->topBound:D

    .line 256
    invoke-direct {p0}, Lme/kuehle/chartlib/axis/AbstractAxis;->generateLabels()V

    .line 258
    :cond_0
    iput-wide p1, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->defaultTopBound:D

    .line 259
    return-void
.end method

.method public setFontColor(I)V
    .locals 0
    .param p1, "fontColor"    # I

    .prologue
    .line 262
    iput p1, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->fontColor:I

    .line 263
    return-void
.end method

.method public setFontSize(I)V
    .locals 1
    .param p1, "fontSize"    # I

    .prologue
    .line 272
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lme/kuehle/chartlib/axis/AbstractAxis;->setFontSize(II)V

    .line 273
    return-void
.end method

.method public setFontSize(II)V
    .locals 2
    .param p1, "fontSize"    # I
    .param p2, "type"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->fontSize:Lme/kuehle/chartlib/util/Size;

    invoke-virtual {v0, p1}, Lme/kuehle/chartlib/util/Size;->setSize(I)V

    .line 287
    iget-object v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->fontSize:Lme/kuehle/chartlib/util/Size;

    invoke-virtual {v0, p2}, Lme/kuehle/chartlib/util/Size;->setType(I)V

    .line 288
    iget-object v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->fontSize:Lme/kuehle/chartlib/util/Size;

    invoke-virtual {v1}, Lme/kuehle/chartlib/util/Size;->getSizeInPixel()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 289
    invoke-direct {p0}, Lme/kuehle/chartlib/axis/AbstractAxis;->generateLabels()V

    .line 290
    return-void
.end method

.method public setGridColor(I)V
    .locals 0
    .param p1, "gridColor"    # I

    .prologue
    .line 293
    iput p1, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->gridColor:I

    .line 294
    return-void
.end method

.method public setLabelFormatter(Lme/kuehle/chartlib/axis/AxisLabelFormatter;)V
    .locals 0
    .param p1, "labelFormatter"    # Lme/kuehle/chartlib/axis/AxisLabelFormatter;

    .prologue
    .line 302
    iput-object p1, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->labelFormatter:Lme/kuehle/chartlib/axis/AxisLabelFormatter;

    .line 303
    invoke-direct {p0}, Lme/kuehle/chartlib/axis/AbstractAxis;->generateLabels()V

    .line 304
    return-void
.end method

.method public setLabels([D)V
    .locals 1
    .param p1, "labels"    # [D

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->autoGenerateLabels:Z

    .line 318
    invoke-direct {p0}, Lme/kuehle/chartlib/axis/AbstractAxis;->generateLabels()V

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->autoGenerateLabels:Z

    .line 321
    iput-object p1, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->labels:[D

    goto :goto_0
.end method

.method public setMovable(Z)V
    .locals 0
    .param p1, "movable"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->movable:Z

    .line 327
    return-void
.end method

.method public setShowGrid(Z)V
    .locals 0
    .param p1, "showGrid"    # Z

    .prologue
    .line 330
    iput-boolean p1, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->showGrid:Z

    .line 331
    return-void
.end method

.method public setZoomable(Z)V
    .locals 0
    .param p1, "zoomable"    # Z

    .prologue
    .line 334
    iput-boolean p1, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->zoomable:Z

    .line 335
    return-void
.end method

.method public zoom(Landroid/graphics/PointF;F)V
    .locals 8
    .param p1, "center"    # Landroid/graphics/PointF;
    .param p2, "scaleDistance"    # F

    .prologue
    .line 345
    iget-boolean v4, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->zoomable:Z

    if-eqz v4, :cond_0

    .line 346
    invoke-virtual {p0}, Lme/kuehle/chartlib/axis/AbstractAxis;->isDomain()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->width:I

    int-to-float v3, v4

    .line 347
    .local v3, "size":F
    :goto_0
    invoke-virtual {p0}, Lme/kuehle/chartlib/axis/AbstractAxis;->isDomain()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 349
    .local v0, "middle":F
    :goto_1
    iget-wide v4, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->topBound:D

    iget-wide v6, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->bottomBound:D

    sub-double/2addr v4, v6

    float-to-double v6, v3

    div-double/2addr v4, v6

    float-to-double v6, v0

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->bottomBound:D

    add-double v1, v4, v6

    .line 351
    .local v1, "middleValue":D
    iget-wide v4, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->bottomBound:D

    sub-double v4, v1, v4

    float-to-double v6, p2

    mul-double/2addr v4, v6

    sub-double v4, v1, v4

    iput-wide v4, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->bottomBound:D

    .line 353
    iget-wide v4, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->topBound:D

    sub-double/2addr v4, v1

    float-to-double v6, p2

    mul-double/2addr v4, v6

    add-double/2addr v4, v1

    iput-wide v4, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->topBound:D

    .line 355
    invoke-direct {p0}, Lme/kuehle/chartlib/axis/AbstractAxis;->generateLabels()V

    .line 357
    .end local v0    # "middle":F
    .end local v1    # "middleValue":D
    .end local v3    # "size":F
    :cond_0
    return-void

    .line 346
    :cond_1
    iget v4, p0, Lme/kuehle/chartlib/axis/AbstractAxis;->height:I

    int-to-float v3, v4

    goto :goto_0

    .line 347
    .restart local v3    # "size":F
    :cond_2
    iget v0, p1, Landroid/graphics/PointF;->y:F

    goto :goto_1
.end method

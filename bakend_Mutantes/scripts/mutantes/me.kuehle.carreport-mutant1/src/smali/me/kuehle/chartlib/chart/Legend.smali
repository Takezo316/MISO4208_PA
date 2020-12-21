.class public Lme/kuehle/chartlib/chart/Legend;
.super Ljava/lang/Object;
.source "Legend.java"


# static fields
.field private static final PADDING:I = 0x5


# instance fields
.field private dataset:Lme/kuehle/chartlib/data/Dataset;

.field private fontSize:Lme/kuehle/chartlib/util/Size;

.field private paint:Landroid/graphics/Paint;

.field private renderers:Lme/kuehle/chartlib/renderer/RendererList;

.field private seriesVisible:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lme/kuehle/chartlib/data/Dataset;Lme/kuehle/chartlib/renderer/RendererList;Lme/kuehle/chartlib/util/Size;)V
    .locals 2
    .param p1, "dataset"    # Lme/kuehle/chartlib/data/Dataset;
    .param p2, "renderers"    # Lme/kuehle/chartlib/renderer/RendererList;
    .param p3, "fontSize"    # Lme/kuehle/chartlib/util/Size;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/chart/Legend;->seriesVisible:Landroid/util/SparseBooleanArray;

    .line 54
    iput-object p1, p0, Lme/kuehle/chartlib/chart/Legend;->dataset:Lme/kuehle/chartlib/data/Dataset;

    .line 55
    iput-object p2, p0, Lme/kuehle/chartlib/chart/Legend;->renderers:Lme/kuehle/chartlib/renderer/RendererList;

    .line 56
    iput-object p3, p0, Lme/kuehle/chartlib/chart/Legend;->fontSize:Lme/kuehle/chartlib/util/Size;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/chart/Legend;->paint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Legend;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Legend;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Legend;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lme/kuehle/chartlib/util/Size;->getSizeInPixel()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 62
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "area"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v10, 0x40a00000    # 5.0f

    .line 71
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v0, v10

    .line 72
    .local v4, "y":F
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Legend;->dataset:Lme/kuehle/chartlib/data/Dataset;

    invoke-virtual {v0}, Lme/kuehle/chartlib/data/Dataset;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "s":I
    :goto_0
    if-ltz v7, :cond_1

    .line 73
    invoke-virtual {p0, v7}, Lme/kuehle/chartlib/chart/Legend;->isSeriesVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/kuehle/chartlib/chart/Legend;->dataset:Lme/kuehle/chartlib/data/Dataset;

    invoke-virtual {v0, v7}, Lme/kuehle/chartlib/data/Dataset;->get(I)Lme/kuehle/chartlib/data/Series;

    move-result-object v0

    invoke-virtual {v0}, Lme/kuehle/chartlib/data/Series;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Legend;->renderers:Lme/kuehle/chartlib/renderer/RendererList;

    invoke-virtual {v0, v7}, Lme/kuehle/chartlib/renderer/RendererList;->getRendererForSeries(I)Lme/kuehle/chartlib/renderer/AbstractRenderer;

    move-result-object v6

    .line 75
    .local v6, "renderer":Lme/kuehle/chartlib/renderer/AbstractRenderer;
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Legend;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Lme/kuehle/chartlib/renderer/AbstractRenderer;->getSeriesColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget v0, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lme/kuehle/chartlib/chart/Legend;->getFontSize()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float v1, v0, v10

    invoke-virtual {p0}, Lme/kuehle/chartlib/chart/Legend;->getFontSize()I

    move-result v0

    int-to-float v0, v0

    sub-float v2, v4, v0

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float v3, v0, v10

    iget-object v5, p0, Lme/kuehle/chartlib/chart/Legend;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 79
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Legend;->dataset:Lme/kuehle/chartlib/data/Dataset;

    invoke-virtual {v0, v7}, Lme/kuehle/chartlib/data/Dataset;->get(I)Lme/kuehle/chartlib/data/Series;

    move-result-object v0

    invoke-virtual {v0}, Lme/kuehle/chartlib/data/Series;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 80
    .local v9, "title":Ljava/lang/String;
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Legend;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 81
    .local v8, "textWidth":F
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Legend;->paint:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v10

    invoke-virtual {p0}, Lme/kuehle/chartlib/chart/Legend;->getFontSize()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr v0, v10

    sub-float/2addr v0, v8

    iget-object v1, p0, Lme/kuehle/chartlib/chart/Legend;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 85
    invoke-virtual {p0}, Lme/kuehle/chartlib/chart/Legend;->getFontSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    sub-float/2addr v4, v0

    .line 72
    .end local v6    # "renderer":Lme/kuehle/chartlib/renderer/AbstractRenderer;
    .end local v8    # "textWidth":F
    .end local v9    # "title":Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 88
    :cond_1
    return-void
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Legend;->fontSize:Lme/kuehle/chartlib/util/Size;

    invoke-virtual {v0}, Lme/kuehle/chartlib/util/Size;->getSizeInPixel()I

    move-result v0

    return v0
.end method

.method public isSeriesVisible(I)Z
    .locals 2
    .param p1, "series"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Legend;->seriesVisible:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    return v0
.end method

.method public setFontSize(I)V
    .locals 1
    .param p1, "fontSize"    # I

    .prologue
    .line 117
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lme/kuehle/chartlib/chart/Legend;->setFontSize(II)V

    .line 118
    return-void
.end method

.method public setFontSize(II)V
    .locals 2
    .param p1, "fontSize"    # I
    .param p2, "type"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Legend;->fontSize:Lme/kuehle/chartlib/util/Size;

    invoke-virtual {v0, p1}, Lme/kuehle/chartlib/util/Size;->setSize(I)V

    .line 132
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Legend;->fontSize:Lme/kuehle/chartlib/util/Size;

    invoke-virtual {v0, p2}, Lme/kuehle/chartlib/util/Size;->setType(I)V

    .line 133
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Legend;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lme/kuehle/chartlib/chart/Legend;->fontSize:Lme/kuehle/chartlib/util/Size;

    invoke-virtual {v1}, Lme/kuehle/chartlib/util/Size;->getSizeInPixel()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 134
    return-void
.end method

.method public setSeriesVisible(IZ)V
    .locals 1
    .param p1, "series"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 146
    iget-object v0, p0, Lme/kuehle/chartlib/chart/Legend;->seriesVisible:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 147
    return-void
.end method

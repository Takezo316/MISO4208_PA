.class public Lme/kuehle/chartlib/renderer/RendererList;
.super Ljava/lang/Object;
.source "RendererList.java"


# instance fields
.field private mapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lme/kuehle/chartlib/renderer/AbstractRenderer;",
            ">;"
        }
    .end annotation
.end field

.field private renderers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lme/kuehle/chartlib/renderer/AbstractRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/renderer/RendererList;->renderers:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/renderer/RendererList;->mapping:Landroid/util/SparseArray;

    .line 42
    return-void
.end method


# virtual methods
.method public addRenderer(Lme/kuehle/chartlib/renderer/AbstractRenderer;)V
    .locals 1
    .param p1, "renderer"    # Lme/kuehle/chartlib/renderer/AbstractRenderer;

    .prologue
    .line 50
    iget-object v0, p0, Lme/kuehle/chartlib/renderer/RendererList;->renderers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public click(Landroid/graphics/PointF;)V
    .locals 3
    .param p1, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 60
    iget-object v2, p0, Lme/kuehle/chartlib/renderer/RendererList;->renderers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/kuehle/chartlib/renderer/AbstractRenderer;

    .line 61
    .local v1, "renderer":Lme/kuehle/chartlib/renderer/AbstractRenderer;
    instance-of v2, v1, Lme/kuehle/chartlib/renderer/Clickable;

    if-eqz v2, :cond_0

    .line 62
    check-cast v1, Lme/kuehle/chartlib/renderer/Clickable;

    .end local v1    # "renderer":Lme/kuehle/chartlib/renderer/AbstractRenderer;
    invoke-interface {v1, p1}, Lme/kuehle/chartlib/renderer/Clickable;->click(Landroid/graphics/PointF;)V

    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lme/kuehle/chartlib/chart/RectD;[Lme/kuehle/chartlib/data/Series;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "margins"    # Landroid/graphics/RectF;
    .param p3, "axisBounds"    # Lme/kuehle/chartlib/chart/RectD;
    .param p4, "series"    # [Lme/kuehle/chartlib/data/Series;

    .prologue
    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p4

    if-ge v0, v4, :cond_1

    .line 80
    iget-object v4, p0, Lme/kuehle/chartlib/renderer/RendererList;->mapping:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 81
    iget-object v4, p0, Lme/kuehle/chartlib/renderer/RendererList;->mapping:Landroid/util/SparseArray;

    iget-object v5, p0, Lme/kuehle/chartlib/renderer/RendererList;->renderers:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_1
    iget-object v4, p0, Lme/kuehle/chartlib/renderer/RendererList;->renderers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/kuehle/chartlib/renderer/AbstractRenderer;

    .line 87
    .local v3, "renderer":Lme/kuehle/chartlib/renderer/AbstractRenderer;
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 88
    .local v2, "renderSeries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/chartlib/data/Series;>;"
    const/4 v0, 0x0

    :goto_2
    array-length v4, p4

    if-ge v0, v4, :cond_4

    .line 89
    iget-object v4, p0, Lme/kuehle/chartlib/renderer/RendererList;->mapping:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_3

    .line 90
    aget-object v4, p4, v0

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 88
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 94
    :cond_4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 95
    invoke-virtual {v3, p1, p2, p3, v2}, Lme/kuehle/chartlib/renderer/AbstractRenderer;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;Lme/kuehle/chartlib/chart/RectD;Landroid/util/SparseArray;)V

    goto :goto_1

    .line 98
    .end local v2    # "renderSeries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/chartlib/data/Series;>;"
    .end local v3    # "renderer":Lme/kuehle/chartlib/renderer/AbstractRenderer;
    :cond_5
    return-void
.end method

.method public getRendererForSeries(I)Lme/kuehle/chartlib/renderer/AbstractRenderer;
    .locals 3
    .param p1, "series"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lme/kuehle/chartlib/renderer/RendererList;->mapping:Landroid/util/SparseArray;

    iget-object v1, p0, Lme/kuehle/chartlib/renderer/RendererList;->renderers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kuehle/chartlib/renderer/AbstractRenderer;

    return-object v0
.end method

.method public isEnoughData([Lme/kuehle/chartlib/data/Series;)Z
    .locals 7
    .param p1, "series"    # [Lme/kuehle/chartlib/data/Series;

    .prologue
    const/4 v4, 0x0

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_1

    .line 122
    iget-object v5, p0, Lme/kuehle/chartlib/renderer/RendererList;->mapping:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 123
    iget-object v5, p0, Lme/kuehle/chartlib/renderer/RendererList;->mapping:Landroid/util/SparseArray;

    iget-object v6, p0, Lme/kuehle/chartlib/renderer/RendererList;->renderers:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    iget-object v5, p0, Lme/kuehle/chartlib/renderer/RendererList;->renderers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/kuehle/chartlib/renderer/AbstractRenderer;

    .line 129
    .local v3, "renderer":Lme/kuehle/chartlib/renderer/AbstractRenderer;
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 130
    .local v2, "renderSeries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/chartlib/data/Series;>;"
    const/4 v0, 0x0

    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_4

    .line 131
    iget-object v5, p0, Lme/kuehle/chartlib/renderer/RendererList;->mapping:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_3

    .line 132
    aget-object v5, p1, v0

    invoke-virtual {v2, v0, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 130
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v3, v2}, Lme/kuehle/chartlib/renderer/AbstractRenderer;->isEnoughData(Landroid/util/SparseArray;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 137
    const/4 v4, 0x1

    .line 140
    .end local v2    # "renderSeries":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/chartlib/data/Series;>;"
    .end local v3    # "renderer":Lme/kuehle/chartlib/renderer/AbstractRenderer;
    :cond_5
    return v4
.end method

.method public mapSeriesToRenderer(ILme/kuehle/chartlib/renderer/AbstractRenderer;)V
    .locals 1
    .param p1, "series"    # I
    .param p2, "renderer"    # Lme/kuehle/chartlib/renderer/AbstractRenderer;

    .prologue
    .line 153
    iget-object v0, p0, Lme/kuehle/chartlib/renderer/RendererList;->renderers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0, p2}, Lme/kuehle/chartlib/renderer/RendererList;->addRenderer(Lme/kuehle/chartlib/renderer/AbstractRenderer;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lme/kuehle/chartlib/renderer/RendererList;->mapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    return-void
.end method

.method public removeRenderer(Lme/kuehle/chartlib/renderer/AbstractRenderer;)V
    .locals 1
    .param p1, "renderer"    # Lme/kuehle/chartlib/renderer/AbstractRenderer;

    .prologue
    .line 166
    iget-object v0, p0, Lme/kuehle/chartlib/renderer/RendererList;->renderers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

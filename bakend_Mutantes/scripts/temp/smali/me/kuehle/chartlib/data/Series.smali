.class public Lme/kuehle/chartlib/data/Series;
.super Ljava/lang/Object;
.source "Series.java"


# instance fields
.field private parent:Lme/kuehle/chartlib/data/Dataset;

.field private points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lme/kuehle/chartlib/data/PointD;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lme/kuehle/chartlib/data/Series;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/data/Series;->points:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lme/kuehle/chartlib/data/Series;->title:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public add(DD)V
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 60
    iget-object v0, p0, Lme/kuehle/chartlib/data/Series;->points:Ljava/util/ArrayList;

    new-instance v1, Lme/kuehle/chartlib/data/PointD;

    invoke-direct {v1, p1, p2, p3, p4}, Lme/kuehle/chartlib/data/PointD;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lme/kuehle/chartlib/data/Series;->parent:Lme/kuehle/chartlib/data/Dataset;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lme/kuehle/chartlib/data/Series;->parent:Lme/kuehle/chartlib/data/Dataset;

    invoke-virtual {v0}, Lme/kuehle/chartlib/data/Dataset;->graphDataChanged()V

    .line 64
    :cond_0
    return-void
.end method

.method public get(I)Lme/kuehle/chartlib/data/PointD;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lme/kuehle/chartlib/data/Series;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kuehle/chartlib/data/PointD;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lme/kuehle/chartlib/data/Series;->title:Ljava/lang/String;

    return-object v0
.end method

.method public maxX()D
    .locals 6

    .prologue
    .line 92
    const-wide/16 v1, 0x1

    .line 93
    .local v1, "maxX":D
    iget-object v4, p0, Lme/kuehle/chartlib/data/Series;->points:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/kuehle/chartlib/data/PointD;

    .line 94
    .local v3, "point":Lme/kuehle/chartlib/data/PointD;
    iget-wide v4, v3, Lme/kuehle/chartlib/data/PointD;->x:D

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    goto :goto_0

    .line 96
    .end local v3    # "point":Lme/kuehle/chartlib/data/PointD;
    :cond_0
    return-wide v1
.end method

.method public maxY()D
    .locals 6

    .prologue
    .line 105
    const-wide/16 v1, 0x1

    .line 106
    .local v1, "maxY":D
    iget-object v4, p0, Lme/kuehle/chartlib/data/Series;->points:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/kuehle/chartlib/data/PointD;

    .line 107
    .local v3, "point":Lme/kuehle/chartlib/data/PointD;
    iget-wide v4, v3, Lme/kuehle/chartlib/data/PointD;->y:D

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    goto :goto_0

    .line 109
    .end local v3    # "point":Lme/kuehle/chartlib/data/PointD;
    :cond_0
    return-wide v1
.end method

.method public minX()D
    .locals 6

    .prologue
    .line 118
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 119
    .local v1, "minX":D
    iget-object v4, p0, Lme/kuehle/chartlib/data/Series;->points:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/kuehle/chartlib/data/PointD;

    .line 120
    .local v3, "point":Lme/kuehle/chartlib/data/PointD;
    iget-wide v4, v3, Lme/kuehle/chartlib/data/PointD;->x:D

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    goto :goto_0

    .line 122
    .end local v3    # "point":Lme/kuehle/chartlib/data/PointD;
    :cond_0
    return-wide v1
.end method

.method public minY()D
    .locals 6

    .prologue
    .line 131
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 132
    .local v1, "minY":D
    iget-object v4, p0, Lme/kuehle/chartlib/data/Series;->points:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/kuehle/chartlib/data/PointD;

    .line 133
    .local v3, "point":Lme/kuehle/chartlib/data/PointD;
    iget-wide v4, v3, Lme/kuehle/chartlib/data/PointD;->y:D

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    goto :goto_0

    .line 135
    .end local v3    # "point":Lme/kuehle/chartlib/data/PointD;
    :cond_0
    return-wide v1
.end method

.method public removeAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lme/kuehle/chartlib/data/Series;->points:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lme/kuehle/chartlib/data/Series;->parent:Lme/kuehle/chartlib/data/Dataset;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lme/kuehle/chartlib/data/Series;->parent:Lme/kuehle/chartlib/data/Dataset;

    invoke-virtual {v0}, Lme/kuehle/chartlib/data/Dataset;->graphDataChanged()V

    .line 149
    :cond_0
    return-void
.end method

.method public setParent(Lme/kuehle/chartlib/data/Dataset;)V
    .locals 0
    .param p1, "parent"    # Lme/kuehle/chartlib/data/Dataset;

    .prologue
    .line 157
    iput-object p1, p0, Lme/kuehle/chartlib/data/Series;->parent:Lme/kuehle/chartlib/data/Dataset;

    .line 158
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lme/kuehle/chartlib/data/Series;->title:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lme/kuehle/chartlib/data/Series;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

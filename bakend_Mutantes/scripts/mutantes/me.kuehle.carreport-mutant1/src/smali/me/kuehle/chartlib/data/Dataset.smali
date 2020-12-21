.class public Lme/kuehle/chartlib/data/Dataset;
.super Ljava/lang/Object;
.source "Dataset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/chartlib/data/Dataset$DataChangedListener;
    }
.end annotation


# instance fields
.field private dataChangedListener:Lme/kuehle/chartlib/data/Dataset$DataChangedListener;

.field private series:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lme/kuehle/chartlib/data/Series;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/kuehle/chartlib/data/Dataset;->series:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lme/kuehle/chartlib/data/Dataset;->dataChangedListener:Lme/kuehle/chartlib/data/Dataset$DataChangedListener;

    .line 35
    return-void
.end method


# virtual methods
.method public add(Lme/kuehle/chartlib/data/Series;)V
    .locals 1
    .param p1, "series"    # Lme/kuehle/chartlib/data/Series;

    .prologue
    .line 43
    iget-object v0, p0, Lme/kuehle/chartlib/data/Dataset;->series:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {p1, p0}, Lme/kuehle/chartlib/data/Series;->setParent(Lme/kuehle/chartlib/data/Dataset;)V

    .line 45
    invoke-virtual {p0}, Lme/kuehle/chartlib/data/Dataset;->graphDataChanged()V

    .line 46
    return-void
.end method

.method public get(I)Lme/kuehle/chartlib/data/Series;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lme/kuehle/chartlib/data/Dataset;->series:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kuehle/chartlib/data/Series;

    return-object v0
.end method

.method public getAll()[Lme/kuehle/chartlib/data/Series;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lme/kuehle/chartlib/data/Dataset;->series:Ljava/util/ArrayList;

    iget-object v1, p0, Lme/kuehle/chartlib/data/Dataset;->series:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lme/kuehle/chartlib/data/Series;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lme/kuehle/chartlib/data/Series;

    return-object v0
.end method

.method public graphDataChanged()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lme/kuehle/chartlib/data/Dataset;->dataChangedListener:Lme/kuehle/chartlib/data/Dataset$DataChangedListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lme/kuehle/chartlib/data/Dataset;->dataChangedListener:Lme/kuehle/chartlib/data/Dataset$DataChangedListener;

    invoke-interface {v0}, Lme/kuehle/chartlib/data/Dataset$DataChangedListener;->onGraphDataChanged()V

    .line 75
    :cond_0
    return-void
.end method

.method public maxX()D
    .locals 6

    .prologue
    .line 83
    const-wide/16 v1, 0x1

    .line 84
    .local v1, "maxX":D
    iget-object v4, p0, Lme/kuehle/chartlib/data/Dataset;->series:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/kuehle/chartlib/data/Series;

    .line 85
    .local v3, "series":Lme/kuehle/chartlib/data/Series;
    invoke-virtual {v3}, Lme/kuehle/chartlib/data/Series;->maxX()D

    move-result-wide v4

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    goto :goto_0

    .line 87
    .end local v3    # "series":Lme/kuehle/chartlib/data/Series;
    :cond_0
    return-wide v1
.end method

.method public maxY()D
    .locals 6

    .prologue
    .line 96
    const-wide/16 v1, 0x1

    .line 97
    .local v1, "maxY":D
    iget-object v4, p0, Lme/kuehle/chartlib/data/Dataset;->series:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/kuehle/chartlib/data/Series;

    .line 98
    .local v3, "series":Lme/kuehle/chartlib/data/Series;
    invoke-virtual {v3}, Lme/kuehle/chartlib/data/Series;->maxY()D

    move-result-wide v4

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    goto :goto_0

    .line 100
    .end local v3    # "series":Lme/kuehle/chartlib/data/Series;
    :cond_0
    return-wide v1
.end method

.method public minX()D
    .locals 6

    .prologue
    .line 109
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 110
    .local v1, "minX":D
    iget-object v4, p0, Lme/kuehle/chartlib/data/Dataset;->series:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/kuehle/chartlib/data/Series;

    .line 111
    .local v3, "series":Lme/kuehle/chartlib/data/Series;
    invoke-virtual {v3}, Lme/kuehle/chartlib/data/Series;->minX()D

    move-result-wide v4

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    goto :goto_0

    .line 113
    .end local v3    # "series":Lme/kuehle/chartlib/data/Series;
    :cond_0
    return-wide v1
.end method

.method public minY()D
    .locals 6

    .prologue
    .line 122
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 123
    .local v1, "minY":D
    iget-object v4, p0, Lme/kuehle/chartlib/data/Dataset;->series:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/kuehle/chartlib/data/Series;

    .line 124
    .local v3, "series":Lme/kuehle/chartlib/data/Series;
    invoke-virtual {v3}, Lme/kuehle/chartlib/data/Series;->minY()D

    move-result-wide v4

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    goto :goto_0

    .line 126
    .end local v3    # "series":Lme/kuehle/chartlib/data/Series;
    :cond_0
    return-wide v1
.end method

.method public setDataChangedListener(Lme/kuehle/chartlib/data/Dataset$DataChangedListener;)V
    .locals 0
    .param p1, "dataChangedListener"    # Lme/kuehle/chartlib/data/Dataset$DataChangedListener;

    .prologue
    .line 135
    iput-object p1, p0, Lme/kuehle/chartlib/data/Dataset;->dataChangedListener:Lme/kuehle/chartlib/data/Dataset$DataChangedListener;

    .line 136
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lme/kuehle/chartlib/data/Dataset;->series:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

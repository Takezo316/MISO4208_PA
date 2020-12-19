.class public Lme/kuehle/carreport/util/Calculator;
.super Ljava/lang/Object;
.source "Calculator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static avg(Ljava/util/Vector;)Ljava/lang/Number;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Number;",
            ">(",
            "Ljava/util/Vector",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .local p0, "numbers":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 25
    invoke-static {p0}, Lme/kuehle/carreport/util/Calculator;->sum(Ljava/util/Vector;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 26
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 27
    invoke-static {p0}, Lme/kuehle/carreport/util/Calculator;->sum(Ljava/util/Vector;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 29
    invoke-static {p0}, Lme/kuehle/carreport/util/Calculator;->sum(Ljava/util/Vector;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_2
    invoke-static {p0}, Lme/kuehle/carreport/util/Calculator;->sum(Ljava/util/Vector;)Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static max(Ljava/util/Vector;)Ljava/lang/Number;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Number;",
            ">(",
            "Ljava/util/Vector",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .local p0, "numbers":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v4, 0x0

    .line 37
    invoke-virtual {p0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Double;

    if-eqz v3, :cond_0

    .line 38
    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 39
    .local v1, "max":Ljava/lang/Double;
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 40
    .local v2, "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    check-cast v2, Ljava/lang/Double;

    .end local v2    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 43
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "max":Ljava/lang/Double;
    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 44
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 45
    .local v1, "max":Ljava/lang/Float;
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 46
    .restart local v2    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    check-cast v2, Ljava/lang/Float;

    .end local v2    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    .line 49
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "max":Ljava/lang/Float;
    :cond_1
    invoke-virtual {p0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 50
    const/high16 v3, -0x80000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 51
    .local v1, "max":Ljava/lang/Integer;
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 52
    .restart local v2    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    .line 56
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "max":Ljava/lang/Integer;
    :cond_2
    const-wide/high16 v3, -0x8000000000000000L

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 57
    .local v1, "max":Ljava/lang/Long;
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 58
    .restart local v2    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    check-cast v2, Ljava/lang/Long;

    .end local v2    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_3

    .line 60
    .end local v1    # "max":Ljava/lang/Long;
    :cond_3
    return-object v1
.end method

.method public static min(Ljava/util/Vector;)Ljava/lang/Number;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Number;",
            ">(",
            "Ljava/util/Vector",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .local p0, "numbers":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v4, 0x0

    .line 66
    invoke-virtual {p0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Double;

    if-eqz v3, :cond_0

    .line 67
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 68
    .local v1, "min":Ljava/lang/Double;
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 69
    .local v2, "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    check-cast v2, Ljava/lang/Double;

    .end local v2    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 72
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "min":Ljava/lang/Double;
    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 73
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 74
    .local v1, "min":Ljava/lang/Float;
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 75
    .restart local v2    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    check-cast v2, Ljava/lang/Float;

    .end local v2    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_1

    .line 78
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "min":Ljava/lang/Float;
    :cond_1
    invoke-virtual {p0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 79
    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 80
    .local v1, "min":Ljava/lang/Integer;
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 81
    .restart local v2    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    .line 85
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "min":Ljava/lang/Integer;
    :cond_2
    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 86
    .local v1, "min":Ljava/lang/Long;
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 87
    .restart local v2    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    check-cast v2, Ljava/lang/Long;

    .end local v2    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_3

    .line 89
    .end local v1    # "min":Ljava/lang/Long;
    :cond_3
    return-object v1
.end method

.method public static sum(Ljava/util/Vector;)Ljava/lang/Number;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Number;",
            ">(",
            "Ljava/util/Vector",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .local p0, "numbers":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    const/4 v4, 0x0

    .line 95
    invoke-virtual {p0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Double;

    if-eqz v3, :cond_0

    .line 96
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 97
    .local v2, "sum":Ljava/lang/Double;
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 98
    .local v1, "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    check-cast v1, Ljava/lang/Double;

    .end local v1    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 101
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "sum":Ljava/lang/Double;
    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Float;

    if-eqz v3, :cond_1

    .line 102
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 103
    .local v2, "sum":Ljava/lang/Float;
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 104
    .restart local v1    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    check-cast v1, Ljava/lang/Float;

    .end local v1    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_1

    .line 107
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "sum":Ljava/lang/Float;
    :cond_1
    invoke-virtual {p0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 108
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 109
    .local v2, "sum":Ljava/lang/Integer;
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 110
    .restart local v1    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    .line 114
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "sum":Ljava/lang/Integer;
    :cond_2
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 115
    .local v2, "sum":Ljava/lang/Long;
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 116
    .restart local v1    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    check-cast v1, Ljava/lang/Long;

    .end local v1    # "num":Ljava/lang/Number;, "TE;"
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_3

    .line 118
    .end local v2    # "sum":Ljava/lang/Long;
    :cond_3
    return-object v2
.end method

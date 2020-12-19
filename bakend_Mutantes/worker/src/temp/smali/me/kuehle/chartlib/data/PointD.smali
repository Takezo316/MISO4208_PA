.class public Lme/kuehle/chartlib/data/PointD;
.super Ljava/lang/Object;
.source "PointD.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lme/kuehle/chartlib/data/PointD;",
        ">;"
    }
.end annotation


# instance fields
.field public x:D

.field public y:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lme/kuehle/chartlib/data/PointD;->x:D

    .line 34
    iput-wide p3, p0, Lme/kuehle/chartlib/data/PointD;->y:D

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22
    check-cast p1, Lme/kuehle/chartlib/data/PointD;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lme/kuehle/chartlib/data/PointD;->compareTo(Lme/kuehle/chartlib/data/PointD;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lme/kuehle/chartlib/data/PointD;)I
    .locals 3
    .param p1, "another"    # Lme/kuehle/chartlib/data/PointD;

    .prologue
    .line 44
    iget-wide v0, p0, Lme/kuehle/chartlib/data/PointD;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p1, Lme/kuehle/chartlib/data/PointD;->x:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

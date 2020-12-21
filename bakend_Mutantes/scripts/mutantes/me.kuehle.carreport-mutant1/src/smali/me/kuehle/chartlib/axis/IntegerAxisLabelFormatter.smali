.class public Lme/kuehle/chartlib/axis/IntegerAxisLabelFormatter;
.super Ljava/lang/Object;
.source "IntegerAxisLabelFormatter.java"

# interfaces
.implements Lme/kuehle/chartlib/axis/AxisLabelFormatter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatLabel(D)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # D

    .prologue
    .line 25
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

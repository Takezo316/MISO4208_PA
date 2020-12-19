.class public Lme/kuehle/chartlib/axis/DecimalAxisLabelFormatter;
.super Ljava/lang/Object;
.source "DecimalAxisLabelFormatter.java"

# interfaces
.implements Lme/kuehle/chartlib/axis/AxisLabelFormatter;


# instance fields
.field private format:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "digits"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/kuehle/chartlib/axis/DecimalAxisLabelFormatter;->format:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public formatLabel(D)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # D

    .prologue
    .line 37
    iget-object v0, p0, Lme/kuehle/chartlib/axis/DecimalAxisLabelFormatter;->format:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

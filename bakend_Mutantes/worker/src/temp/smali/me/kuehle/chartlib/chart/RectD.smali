.class public Lme/kuehle/chartlib/chart/RectD;
.super Ljava/lang/Object;
.source "RectD.java"


# instance fields
.field private bottom:D

.field private left:D

.field private right:D

.field private top:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0
    .param p1, "top"    # D
    .param p3, "right"    # D
    .param p5, "bottom"    # D
    .param p7, "left"    # D

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lme/kuehle/chartlib/chart/RectD;->top:D

    .line 38
    iput-wide p3, p0, Lme/kuehle/chartlib/chart/RectD;->right:D

    .line 39
    iput-wide p5, p0, Lme/kuehle/chartlib/chart/RectD;->bottom:D

    .line 40
    iput-wide p7, p0, Lme/kuehle/chartlib/chart/RectD;->left:D

    .line 41
    return-void
.end method


# virtual methods
.method public getBottom()D
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lme/kuehle/chartlib/chart/RectD;->bottom:D

    return-wide v0
.end method

.method public getLeft()D
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lme/kuehle/chartlib/chart/RectD;->left:D

    return-wide v0
.end method

.method public getRight()D
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lme/kuehle/chartlib/chart/RectD;->right:D

    return-wide v0
.end method

.method public getTop()D
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lme/kuehle/chartlib/chart/RectD;->top:D

    return-wide v0
.end method

.method public setBottom(D)V
    .locals 0
    .param p1, "bottom"    # D

    .prologue
    .line 64
    iput-wide p1, p0, Lme/kuehle/chartlib/chart/RectD;->bottom:D

    .line 65
    return-void
.end method

.method public setLeft(D)V
    .locals 0
    .param p1, "left"    # D

    .prologue
    .line 72
    iput-wide p1, p0, Lme/kuehle/chartlib/chart/RectD;->left:D

    .line 73
    return-void
.end method

.method public setRight(D)V
    .locals 0
    .param p1, "right"    # D

    .prologue
    .line 56
    iput-wide p1, p0, Lme/kuehle/chartlib/chart/RectD;->right:D

    .line 57
    return-void
.end method

.method public setTop(D)V
    .locals 0
    .param p1, "top"    # D

    .prologue
    .line 48
    iput-wide p1, p0, Lme/kuehle/chartlib/chart/RectD;->top:D

    .line 49
    return-void
.end method

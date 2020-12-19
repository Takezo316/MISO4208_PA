.class public abstract Lme/kuehle/carreport/db/AbstractItem;
.super Ljava/lang/Object;
.source "AbstractItem.java"


# instance fields
.field protected deleted:Z

.field protected id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/kuehle/carreport/db/AbstractItem;->deleted:Z

    return-void
.end method


# virtual methods
.method public abstract delete()V
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lme/kuehle/carreport/db/AbstractItem;->id:I

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lme/kuehle/carreport/db/AbstractItem;->deleted:Z

    return v0
.end method

.class public abstract Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;
.super Ljava/lang/Object;
.source "SectionListAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/util/gui/SectionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractListItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;",
        ">;"
    }
.end annotation


# instance fields
.field protected label:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;->label:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;->label:Ljava/lang/String;

    .line 42
    return-void
.end method

.class public Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;
.super Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;
.source "SectionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/util/gui/SectionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;-><init>()V

    .line 49
    iput-object p1, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;->label:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;->value:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;->compareTo(Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;)I
    .locals 1
    .param p1, "another"    # Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;

    .prologue
    .line 63
    instance-of v0, p1, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, -0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;->value:Ljava/lang/String;

    .line 59
    return-void
.end method

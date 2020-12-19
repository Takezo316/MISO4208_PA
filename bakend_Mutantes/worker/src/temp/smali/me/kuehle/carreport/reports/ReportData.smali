.class public Lme/kuehle/carreport/reports/ReportData;
.super Ljava/lang/Object;
.source "ReportData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/kuehle/carreport/reports/ReportData;->data:Ljava/util/ArrayList;

    .line 62
    return-void
.end method


# virtual methods
.method public applyCalculation(DI)V
    .locals 5
    .param p1, "value1"    # D
    .param p3, "option"    # I

    .prologue
    .line 29
    iget-object v4, p0, Lme/kuehle/carreport/reports/ReportData;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;

    .line 30
    .local v3, "item":Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;
    instance-of v4, v3, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    if-eqz v4, :cond_2

    .line 31
    check-cast v3, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    .end local v3    # "item":Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;
    invoke-virtual {v3}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;

    .line 32
    .local v0, "childItem":Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;
    instance-of v4, v0, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;

    if-eqz v4, :cond_1

    .line 33
    check-cast v0, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;

    .end local v0    # "childItem":Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;
    invoke-virtual {v0, p1, p2, p3}, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;->applyCalculation(DI)V

    goto :goto_1

    .line 37
    .end local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "item":Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;
    :cond_2
    instance-of v4, v3, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;

    if-eqz v4, :cond_0

    .line 38
    check-cast v3, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;

    .end local v3    # "item":Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;
    invoke-virtual {v3, p1, p2, p3}, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;->applyCalculation(DI)V

    goto :goto_0

    .line 42
    :cond_3
    return-void
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lme/kuehle/carreport/reports/ReportData;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method public resetCalculation()V
    .locals 5

    .prologue
    .line 49
    iget-object v4, p0, Lme/kuehle/carreport/reports/ReportData;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;

    .line 50
    .local v3, "item":Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;
    instance-of v4, v3, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    if-eqz v4, :cond_2

    .line 51
    check-cast v3, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    .end local v3    # "item":Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;
    invoke-virtual {v3}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->getItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;

    .line 52
    .local v0, "childItem":Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;
    instance-of v4, v0, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;

    if-eqz v4, :cond_1

    .line 53
    check-cast v0, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;

    .end local v0    # "childItem":Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;
    invoke-virtual {v0}, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;->resetCalculation()V

    goto :goto_1

    .line 56
    .end local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "item":Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;
    :cond_2
    instance-of v4, v3, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;

    if-eqz v4, :cond_0

    .line 57
    check-cast v3, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;

    .end local v3    # "item":Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;
    invoke-virtual {v3}, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;->resetCalculation()V

    goto :goto_0

    .line 60
    :cond_3
    return-void
.end method

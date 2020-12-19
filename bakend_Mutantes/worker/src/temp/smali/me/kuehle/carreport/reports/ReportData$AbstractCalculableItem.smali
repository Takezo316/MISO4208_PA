.class public abstract Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;
.super Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;
.source "ReportData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/reports/ReportData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractCalculableItem"
.end annotation


# instance fields
.field protected origLabel:Ljava/lang/String;

.field protected origValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;->origLabel:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;->origValue:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public abstract applyCalculation(DI)V
.end method

.method public resetCalculation()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;->origLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;->setLabel(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;->origValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lme/kuehle/carreport/reports/ReportData$AbstractCalculableItem;->setValue(Ljava/lang/String;)V

    .line 77
    return-void
.end method

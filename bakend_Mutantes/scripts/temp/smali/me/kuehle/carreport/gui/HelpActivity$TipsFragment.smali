.class public Lme/kuehle/carreport/gui/HelpActivity$TipsFragment;
.super Lme/kuehle/carreport/gui/HelpActivity$HelpFragment;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/HelpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TipsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lme/kuehle/carreport/gui/HelpActivity$HelpFragment;-><init>(Lme/kuehle/carreport/gui/HelpActivity$1;)V

    return-void
.end method


# virtual methods
.method protected getHelpId()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/view/LayoutInflater;
    .param p2, "x1"    # Landroid/view/ViewGroup;
    .param p3, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lme/kuehle/carreport/gui/HelpActivity$HelpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.class public Lme/kuehle/carreport/gui/DataDetailActivity;
.super Landroid/app/Activity;
.source "DataDetailActivity.java"

# interfaces
.implements Lme/kuehle/carreport/gui/AbstractDataDetailFragment$OnItemActionListener;


# static fields
.field public static final EXTRA_EDIT:Ljava/lang/String; = "edit"

.field public static final EXTRA_EDIT_CAR:I = 0x2

.field public static final EXTRA_EDIT_OTHER:I = 0x1

.field public static final EXTRA_EDIT_REFUELING:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public itemCanceled()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lme/kuehle/carreport/gui/DataDetailActivity;->setResult(I)V

    .line 64
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailActivity;->finish()V

    .line 65
    return-void
.end method

.method public itemDeleted()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lme/kuehle/carreport/gui/DataDetailActivity;->setResult(I)V

    .line 70
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailActivity;->finish()V

    .line 71
    return-void
.end method

.method public itemSaved()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lme/kuehle/carreport/gui/DataDetailActivity;->setResult(I)V

    .line 58
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailActivity;->finish()V

    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lme/kuehle/carreport/gui/DataDetailActivity;->setContentView(I)V

    .line 36
    if-nez p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "edit"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 41
    .local v0, "edit":I
    if-nez v0, :cond_1

    .line 42
    new-instance v1, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    invoke-direct {v1}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;-><init>()V

    .line 48
    .local v1, "fragment":Lme/kuehle/carreport/gui/AbstractDataDetailFragment;
    :goto_0
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const/high16 v3, 0x7f0c0000

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 53
    .end local v0    # "edit":I
    .end local v1    # "fragment":Lme/kuehle/carreport/gui/AbstractDataDetailFragment;
    :cond_0
    return-void

    .line 43
    .restart local v0    # "edit":I
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 44
    new-instance v1, Lme/kuehle/carreport/gui/DataDetailOtherFragment;

    invoke-direct {v1}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;-><init>()V

    .restart local v1    # "fragment":Lme/kuehle/carreport/gui/AbstractDataDetailFragment;
    goto :goto_0

    .line 46
    .end local v1    # "fragment":Lme/kuehle/carreport/gui/AbstractDataDetailFragment;
    :cond_2
    new-instance v1, Lme/kuehle/carreport/gui/DataDetailCarFragment;

    invoke-direct {v1}, Lme/kuehle/carreport/gui/DataDetailCarFragment;-><init>()V

    .restart local v1    # "fragment":Lme/kuehle/carreport/gui/AbstractDataDetailFragment;
    goto :goto_0
.end method

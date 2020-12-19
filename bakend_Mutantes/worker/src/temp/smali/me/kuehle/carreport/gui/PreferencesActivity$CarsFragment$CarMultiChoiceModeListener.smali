.class Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarMultiChoiceModeListener"
.end annotation


# instance fields
.field private mode:Landroid/view/ActionMode;

.field final synthetic this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;


# direct methods
.method private constructor <init>(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)V
    .locals 0

    .prologue
    .line 527
    iput-object p1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;Lme/kuehle/carreport/gui/PreferencesActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;
    .param p2, "x1"    # Lme/kuehle/carreport/gui/PreferencesActivity$1;

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;-><init>(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)V

    return-void
.end method


# virtual methods
.method public execActionAndFinish(Lme/kuehle/carreport/util/IForEach;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/kuehle/carreport/util/IForEach",
            "<",
            "Lme/kuehle/carreport/db/Car;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 532
    .local p1, "forEach":Lme/kuehle/carreport/util/IForEach;, "Lme/kuehle/carreport/util/IForEach<Lme/kuehle/carreport/db/Car;>;"
    iget-object v2, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-virtual {v2}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 534
    .local v1, "selected":Landroid/util/SparseBooleanArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-static {v2}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->access$800(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)[Lme/kuehle/carreport/db/Car;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 535
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    iget-object v2, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-static {v2}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->access$800(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)[Lme/kuehle/carreport/db/Car;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Lme/kuehle/carreport/util/IForEach;->action(Ljava/lang/Object;)V

    .line 534
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_1
    iget-object v2, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->mode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 541
    iget-object v2, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-static {v2}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->access$1000(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)V

    .line 542
    return-void
.end method

.method public finishActionMode()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->mode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 548
    :cond_0
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const v8, 0x7f090039

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 552
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v7, v1

    .line 575
    :goto_0
    return v7

    .line 554
    :pswitch_0
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-virtual {v0}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    iget-object v2, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-static {v2}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->access$800(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)[Lme/kuehle/carreport/db/Car;

    move-result-object v2

    array-length v2, v2

    if-ne v0, v2, :cond_0

    .line 555
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    const v4, 0x7f090036

    invoke-virtual {v3, v4}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x104000a

    invoke-static/range {v0 .. v5}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->newInstance(Landroid/app/Fragment;ILjava/lang/Integer;Ljava/lang/String;ILjava/lang/Integer;)Lme/kuehle/carreport/util/gui/MessageDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-virtual {v1}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :cond_0
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    const v2, 0x7f090035

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-virtual {v4}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 567
    .local v9, "message":Ljava/lang/String;
    iget-object v6, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v10, 0x1040013

    const v0, 0x1040009

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v6 .. v11}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->newInstance(Landroid/app/Fragment;ILjava/lang/Integer;Ljava/lang/String;ILjava/lang/Integer;)Lme/kuehle/carreport/util/gui/MessageDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-virtual {v1}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 552
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c002f
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 581
    iput-object p1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->mode:Landroid/view/ActionMode;

    .line 582
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 583
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0b0002

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 584
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 589
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 594
    iget-object v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-virtual {v1}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    .line 595
    .local v0, "count":I
    iget-object v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarMultiChoiceModeListener;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 597
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 601
    const/4 v0, 0x0

    return v0
.end method

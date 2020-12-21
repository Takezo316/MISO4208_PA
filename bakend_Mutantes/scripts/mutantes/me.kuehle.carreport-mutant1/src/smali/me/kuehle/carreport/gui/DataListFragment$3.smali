.class Lme/kuehle/carreport/gui/DataListFragment$3;
.super Ljava/lang/Object;
.source "DataListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/DataListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/gui/DataListFragment;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/gui/DataListFragment;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataListFragment$3;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 373
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 384
    :goto_0
    return v1

    .line 375
    :pswitch_0
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment$3;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment$3;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v2}, Lme/kuehle/carreport/gui/DataListFragment;->access$100(Lme/kuehle/carreport/gui/DataListFragment;)Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->getAlertDeleteManyMessage()I

    move-result v2

    invoke-virtual {v0, v2}, Lme/kuehle/carreport/gui/DataListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lme/kuehle/carreport/gui/DataListFragment$3;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v4}, Lme/kuehle/carreport/gui/DataListFragment;->access$100(Lme/kuehle/carreport/gui/DataListFragment;)Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    move-result-object v4

    iget-object v4, v4, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "message":Ljava/lang/String;
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment$3;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    const v2, 0x7f090039

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v4, 0x1040013

    const v5, 0x1040009

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->newInstance(Landroid/app/Fragment;ILjava/lang/Integer;Ljava/lang/String;ILjava/lang/Integer;)Lme/kuehle/carreport/util/gui/MessageDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lme/kuehle/carreport/gui/DataListFragment$3;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-virtual {v1}, Lme/kuehle/carreport/gui/DataListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v1, v6

    .line 382
    goto :goto_0

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c002f
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 390
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment$3;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v2}, Lme/kuehle/carreport/gui/DataListFragment;->access$600(Lme/kuehle/carreport/gui/DataListFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataListFragment$3;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v2, v1}, Lme/kuehle/carreport/gui/DataListFragment;->access$602(Lme/kuehle/carreport/gui/DataListFragment;Z)Z

    .line 403
    :goto_0
    return v1

    .line 395
    :cond_0
    iget-object v1, p0, Lme/kuehle/carreport/gui/DataListFragment$3;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v1}, Lme/kuehle/carreport/gui/DataListFragment;->access$000(Lme/kuehle/carreport/gui/DataListFragment;)Lme/kuehle/carreport/gui/DataListFragment$Callback;

    move-result-object v1

    invoke-interface {v1}, Lme/kuehle/carreport/gui/DataListFragment$Callback;->onItemClosed()V

    .line 396
    iget-object v1, p0, Lme/kuehle/carreport/gui/DataListFragment$3;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lme/kuehle/carreport/gui/DataListFragment;->access$402(Lme/kuehle/carreport/gui/DataListFragment;I)I

    .line 397
    iget-object v1, p0, Lme/kuehle/carreport/gui/DataListFragment$3;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v1}, Lme/kuehle/carreport/gui/DataListFragment;->access$100(Lme/kuehle/carreport/gui/DataListFragment;)Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    move-result-object v1

    iget-object v1, v1, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 399
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 400
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0b0006

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 402
    iget-object v1, p0, Lme/kuehle/carreport/gui/DataListFragment$3;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v1, p1}, Lme/kuehle/carreport/gui/DataListFragment;->access$702(Lme/kuehle/carreport/gui/DataListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 403
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 408
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment$3;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v0}, Lme/kuehle/carreport/gui/DataListFragment;->access$100(Lme/kuehle/carreport/gui/DataListFragment;)Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    move-result-object v0

    iget-object v0, v0, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lme/kuehle/carreport/gui/DataListFragment$3;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v1}, Lme/kuehle/carreport/gui/DataListFragment;->access$800(Lme/kuehle/carreport/gui/DataListFragment;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 409
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment$3;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/kuehle/carreport/gui/DataListFragment;->access$702(Lme/kuehle/carreport/gui/DataListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 410
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 415
    iget-object v1, p0, Lme/kuehle/carreport/gui/DataListFragment$3;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-static {v1}, Lme/kuehle/carreport/gui/DataListFragment;->access$100(Lme/kuehle/carreport/gui/DataListFragment;)Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;

    move-result-object v1

    iget-object v1, v1, Lme/kuehle/carreport/gui/DataListFragment$AbstractTabHelper;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    .line 416
    .local v0, "count":I
    iget-object v1, p0, Lme/kuehle/carreport/gui/DataListFragment$3;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Lme/kuehle/carreport/gui/DataListFragment;->getString(I)Ljava/lang/String;

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

    .line 418
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 422
    const/4 v0, 0x0

    return v0
.end method

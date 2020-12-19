.class public abstract Lme/kuehle/carreport/gui/AbstractDataDetailFragment;
.super Landroid/app/Fragment;
.source "AbstractDataDetailFragment.java"

# interfaces
.implements Lme/kuehle/carreport/util/gui/MessageDialogFragment$MessageDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/gui/AbstractDataDetailFragment$OnItemActionListener;
    }
.end annotation


# static fields
.field private static final DELETE_REQUEST_CODE:I = 0x0

.field public static final EXTRA_CAR_ID:Ljava/lang/String; = "car_id"

.field public static final EXTRA_ID:Ljava/lang/String; = "id"

.field public static final EXTRA_ID_DEFAULT:I = -0x1


# instance fields
.field protected editItem:Lme/kuehle/carreport/db/AbstractItem;

.field protected onItemActionListener:Lme/kuehle/carreport/gui/AbstractDataDetailFragment$OnItemActionListener;

.field private savedABNavMode:I

.field private savedABTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->editItem:Lme/kuehle/carreport/db/AbstractItem;

    return-void
.end method


# virtual methods
.method protected abstract fillFields(Landroid/view/View;)V
.end method

.method protected abstract getAlertDeleteMessage()I
.end method

.method protected getDateTime(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "time"    # Ljava/util/Date;

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xc

    const/16 v3, 0xb

    .line 66
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 67
    .local v1, "calTime":Ljava/util/Calendar;
    invoke-virtual {v1, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 70
    .local v0, "calDateTime":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 71
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 73
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 74
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 76
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    return-object v2
.end method

.method protected getDoubleFromEditText(Landroid/widget/EditText;D)D
    .locals 3
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "defaultValue"    # D

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "strDouble":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 85
    .end local p2    # "defaultValue":D
    :goto_0
    return-wide p2

    .line 84
    .restart local p2    # "defaultValue":D
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method protected abstract getEditObject(I)Lme/kuehle/carreport/db/AbstractItem;
.end method

.method protected getIntegerFromEditText(Landroid/widget/EditText;I)I
    .locals 3
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "defaultValue"    # I

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "strInt":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 96
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 95
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method protected abstract getLayout()I
.end method

.method protected abstract getTitleForEdit()I
.end method

.method protected abstract getTitleForNew()I
.end method

.method protected abstract getToastDeletedMessage()I
.end method

.method protected abstract getToastSavedMessage()I
.end method

.method protected abstract initFields(Landroid/view/View;)V
.end method

.method protected isInEditMode()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->editItem:Lme/kuehle/carreport/db/AbstractItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 120
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 122
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->savedABTitle:Ljava/lang/CharSequence;

    .line 123
    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    iput v1, p0, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->savedABNavMode:I

    .line 125
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->getTitleForEdit()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 130
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 131
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->getTitleForNew()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 137
    :try_start_0
    move-object v0, p1

    check-cast v0, Lme/kuehle/carreport/gui/AbstractDataDetailFragment$OnItemActionListener;

    move-object v2, v0

    iput-object v2, p0, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->onItemActionListener:Lme/kuehle/carreport/gui/AbstractDataDetailFragment$OnItemActionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    return-void

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement OnItemActionListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 146
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 148
    .local v0, "id":I
    if-eq v0, v3, :cond_0

    .line 149
    invoke-virtual {p0, v0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->getEditObject(I)Lme/kuehle/carreport/db/AbstractItem;

    move-result-object v1

    iput-object v1, p0, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->editItem:Lme/kuehle/carreport/db/AbstractItem;

    .line 151
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->setHasOptionsMenu(Z)V

    .line 152
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 156
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 157
    const/high16 v0, 0x7f0b0000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 158
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    const v0, 0x7f0c002f

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 161
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->getLayout()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0, v0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->initFields(Landroid/view/View;)V

    .line 168
    invoke-virtual {p0, v0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->fillFields(Landroid/view/View;)V

    .line 169
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 175
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 176
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v1, p0, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->savedABTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    iget v1, p0, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->savedABNavMode:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 178
    return-void
.end method

.method public onDialogNegativeClick(I)V
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 205
    return-void
.end method

.method public onDialogPositiveClick(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .prologue
    .line 209
    if-nez p1, :cond_0

    .line 210
    iget-object v0, p0, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->editItem:Lme/kuehle/carreport/db/AbstractItem;

    invoke-virtual {v0}, Lme/kuehle/carreport/db/AbstractItem;->delete()V

    .line 211
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->getToastDeletedMessage()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 213
    iget-object v0, p0, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->onItemActionListener:Lme/kuehle/carreport/gui/AbstractDataDetailFragment$OnItemActionListener;

    invoke-interface {v0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment$OnItemActionListener;->itemDeleted()V

    .line 215
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 182
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 199
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 184
    :sswitch_0
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->save()V

    move v0, v6

    .line 185
    goto :goto_0

    .line 187
    :sswitch_1
    iget-object v0, p0, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->onItemActionListener:Lme/kuehle/carreport/gui/AbstractDataDetailFragment$OnItemActionListener;

    invoke-interface {v0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment$OnItemActionListener;->itemCanceled()V

    move v0, v6

    .line 188
    goto :goto_0

    .line 190
    :sswitch_2
    const/4 v1, 0x0

    const v0, 0x7f090039

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->getAlertDeleteMessage()I

    move-result v0

    invoke-virtual {p0, v0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1040013

    const v0, 0x1040009

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->newInstance(Landroid/app/Fragment;ILjava/lang/Integer;Ljava/lang/String;ILjava/lang/Integer;)Lme/kuehle/carreport/util/gui/MessageDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v0, v6

    .line 194
    goto :goto_0

    .line 196
    :sswitch_3
    iget-object v0, p0, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->onItemActionListener:Lme/kuehle/carreport/gui/AbstractDataDetailFragment$OnItemActionListener;

    invoke-interface {v0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment$OnItemActionListener;->itemCanceled()V

    move v0, v6

    .line 197
    goto :goto_0

    .line 182
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_3
        0x7f0c002f -> :sswitch_2
        0x7f0c0030 -> :sswitch_1
        0x7f0c0031 -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract save()V
.end method

.method protected saveSuccess()V
    .locals 3

    .prologue
    .line 220
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->getToastSavedMessage()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 222
    iget-object v0, p0, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->onItemActionListener:Lme/kuehle/carreport/gui/AbstractDataDetailFragment$OnItemActionListener;

    invoke-interface {v0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment$OnItemActionListener;->itemSaved()V

    .line 223
    return-void
.end method

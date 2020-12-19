.class public Lme/kuehle/carreport/util/gui/DatePickerDialogFragment;
.super Landroid/app/DialogFragment;
.source "DatePickerDialogFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/util/gui/DatePickerDialogFragment$DatePickerDialogFragmentListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 31
    return-void
.end method

.method private getListener()Lme/kuehle/carreport/util/gui/DatePickerDialogFragment$DatePickerDialogFragmentListener;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/DatePickerDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lme/kuehle/carreport/util/gui/DatePickerDialogFragment$DatePickerDialogFragmentListener;

    return-object v0
.end method

.method public static newInstance(Landroid/app/Fragment;ILjava/util/Date;)Lme/kuehle/carreport/util/gui/DatePickerDialogFragment;
    .locals 5
    .param p0, "parent"    # Landroid/app/Fragment;
    .param p1, "requestCode"    # I
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 37
    new-instance v1, Lme/kuehle/carreport/util/gui/DatePickerDialogFragment;

    invoke-direct {v1}, Lme/kuehle/carreport/util/gui/DatePickerDialogFragment;-><init>()V

    .line 38
    .local v1, "f":Lme/kuehle/carreport/util/gui/DatePickerDialogFragment;
    invoke-virtual {v1, p0, p1}, Lme/kuehle/carreport/util/gui/DatePickerDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "date"

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 42
    invoke-virtual {v1, v0}, Lme/kuehle/carreport/util/gui/DatePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/DatePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 50
    .local v6, "args":Landroid/os/Bundle;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 51
    .local v7, "cal":Ljava/util/Calendar;
    const-string v0, "date"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 53
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/DatePickerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v2, 0x5

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object v0
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 62
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 63
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 64
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 66
    invoke-direct {p0}, Lme/kuehle/carreport/util/gui/DatePickerDialogFragment;->getListener()Lme/kuehle/carreport/util/gui/DatePickerDialogFragment$DatePickerDialogFragmentListener;

    move-result-object v1

    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/DatePickerDialogFragment;->getTargetRequestCode()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lme/kuehle/carreport/util/gui/DatePickerDialogFragment$DatePickerDialogFragmentListener;->onDialogPositiveClick(ILjava/util/Date;)V

    .line 68
    return-void
.end method

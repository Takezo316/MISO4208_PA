.class public Lme/kuehle/carreport/util/gui/TimePickerDialogFragment;
.super Landroid/app/DialogFragment;
.source "TimePickerDialogFragment.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/util/gui/TimePickerDialogFragment$TimePickerDialogFragmentListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 32
    return-void
.end method

.method private getListener()Lme/kuehle/carreport/util/gui/TimePickerDialogFragment$TimePickerDialogFragmentListener;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/TimePickerDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lme/kuehle/carreport/util/gui/TimePickerDialogFragment$TimePickerDialogFragmentListener;

    return-object v0
.end method

.method public static newInstance(Landroid/app/Fragment;ILjava/util/Date;)Lme/kuehle/carreport/util/gui/TimePickerDialogFragment;
    .locals 5
    .param p0, "parent"    # Landroid/app/Fragment;
    .param p1, "requestCode"    # I
    .param p2, "time"    # Ljava/util/Date;

    .prologue
    .line 38
    new-instance v1, Lme/kuehle/carreport/util/gui/TimePickerDialogFragment;

    invoke-direct {v1}, Lme/kuehle/carreport/util/gui/TimePickerDialogFragment;-><init>()V

    .line 39
    .local v1, "f":Lme/kuehle/carreport/util/gui/TimePickerDialogFragment;
    invoke-virtual {v1, p0, p1}, Lme/kuehle/carreport/util/gui/TimePickerDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "time"

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 43
    invoke-virtual {v1, v0}, Lme/kuehle/carreport/util/gui/TimePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/TimePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 51
    .local v6, "args":Landroid/os/Bundle;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 52
    .local v7, "cal":Ljava/util/Calendar;
    const-string v0, "time"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 54
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/TimePickerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v2, 0xc

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/TimePickerDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v0
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 4
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 61
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 62
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 63
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 65
    invoke-direct {p0}, Lme/kuehle/carreport/util/gui/TimePickerDialogFragment;->getListener()Lme/kuehle/carreport/util/gui/TimePickerDialogFragment$TimePickerDialogFragmentListener;

    move-result-object v1

    invoke-virtual {p0}, Lme/kuehle/carreport/util/gui/TimePickerDialogFragment;->getTargetRequestCode()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lme/kuehle/carreport/util/gui/TimePickerDialogFragment$TimePickerDialogFragmentListener;->onDialogPositiveClick(ILjava/util/Date;)V

    .line 67
    return-void
.end method

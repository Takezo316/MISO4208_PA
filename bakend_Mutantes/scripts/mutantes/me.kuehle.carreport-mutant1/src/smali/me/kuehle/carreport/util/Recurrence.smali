.class public Lme/kuehle/carreport/util/Recurrence;
.super Ljava/lang/Object;
.source "Recurrence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/util/Recurrence$1;
    }
.end annotation


# instance fields
.field private interval:Lme/kuehle/carreport/util/RecurrenceInterval;

.field private multiplier:I


# direct methods
.method public constructor <init>(Lme/kuehle/carreport/util/RecurrenceInterval;)V
    .locals 1
    .param p1, "interval"    # Lme/kuehle/carreport/util/RecurrenceInterval;

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lme/kuehle/carreport/util/Recurrence;-><init>(Lme/kuehle/carreport/util/RecurrenceInterval;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lme/kuehle/carreport/util/RecurrenceInterval;I)V
    .locals 0
    .param p1, "interval"    # Lme/kuehle/carreport/util/RecurrenceInterval;
    .param p2, "multiplier"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lme/kuehle/carreport/util/Recurrence;->interval:Lme/kuehle/carreport/util/RecurrenceInterval;

    .line 36
    iput p2, p0, Lme/kuehle/carreport/util/Recurrence;->multiplier:I

    .line 37
    return-void
.end method


# virtual methods
.method public getInterval()Lme/kuehle/carreport/util/RecurrenceInterval;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lme/kuehle/carreport/util/Recurrence;->interval:Lme/kuehle/carreport/util/RecurrenceInterval;

    return-object v0
.end method

.method public getMultiplier()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lme/kuehle/carreport/util/Recurrence;->multiplier:I

    return v0
.end method

.method public getRecurrencesSince(Ljava/util/Date;)I
    .locals 6
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 48
    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3, p1}, Lorg/joda/time/DateTime;-><init>(Ljava/lang/Object;)V

    .line 49
    .local v3, "then":Lorg/joda/time/DateTime;
    new-instance v1, Lorg/joda/time/DateTime;

    invoke-direct {v1}, Lorg/joda/time/DateTime;-><init>()V

    .line 51
    .local v1, "now":Lorg/joda/time/DateTime;
    const/4 v0, 0x1

    .line 52
    .local v0, "count":I
    sget-object v4, Lme/kuehle/carreport/util/Recurrence$1;->$SwitchMap$me$kuehle$carreport$util$RecurrenceInterval:[I

    iget-object v5, p0, Lme/kuehle/carreport/util/Recurrence;->interval:Lme/kuehle/carreport/util/RecurrenceInterval;

    invoke-virtual {v5}, Lme/kuehle/carreport/util/RecurrenceInterval;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 69
    :goto_0
    :pswitch_0
    return v0

    .line 56
    :pswitch_1
    invoke-static {v3, v1}, Lorg/joda/time/Days;->daysBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Days;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/Days;->getDays()I

    move-result v4

    iget v5, p0, Lme/kuehle/carreport/util/Recurrence;->multiplier:I

    div-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 57
    goto :goto_0

    .line 59
    :pswitch_2
    invoke-static {v3, v1}, Lorg/joda/time/Months;->monthsBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Months;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/Months;->getMonths()I

    move-result v4

    iget v5, p0, Lme/kuehle/carreport/util/Recurrence;->multiplier:I

    div-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 60
    goto :goto_0

    .line 62
    :pswitch_3
    invoke-static {v3, v1}, Lorg/joda/time/Months;->monthsBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Months;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/Months;->getMonths()I

    move-result v4

    div-int/lit8 v2, v4, 0x3

    .line 63
    .local v2, "quarters":I
    iget v4, p0, Lme/kuehle/carreport/util/Recurrence;->multiplier:I

    div-int v4, v2, v4

    add-int/2addr v0, v4

    .line 64
    goto :goto_0

    .line 66
    .end local v2    # "quarters":I
    :pswitch_4
    invoke-static {v3, v1}, Lorg/joda/time/Years;->yearsBetween(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Years;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/Years;->getYears()I

    move-result v4

    iget v5, p0, Lme/kuehle/carreport/util/Recurrence;->multiplier:I

    div-int/2addr v4, v5

    add-int/2addr v0, v4

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

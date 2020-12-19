.class final Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;
.super Lorg/joda/time/field/BaseDateTimeField;
.source "ZonedChronology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/ZonedChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ZonedDateTimeField"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3714abfdb535d742L


# instance fields
.field final iDurationField:Lorg/joda/time/DurationField;

.field final iField:Lorg/joda/time/DateTimeField;

.field final iLeapDurationField:Lorg/joda/time/DurationField;

.field final iRangeDurationField:Lorg/joda/time/DurationField;

.field final iTimeField:Z

.field final iZone:Lorg/joda/time/DateTimeZone;


# direct methods
.method constructor <init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeZone;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/field/BaseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;)V

    .line 390
    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 393
    :cond_0
    iput-object p1, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    .line 394
    iput-object p2, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    .line 395
    iput-object p3, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    .line 396
    invoke-static {p3}, Lorg/joda/time/chrono/ZonedChronology;->useTimeArithmetic(Lorg/joda/time/DurationField;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iTimeField:Z

    .line 397
    iput-object p4, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iRangeDurationField:Lorg/joda/time/DurationField;

    .line 398
    iput-object p5, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iLeapDurationField:Lorg/joda/time/DurationField;

    .line 399
    return-void
.end method

.method private getOffsetToAdd(J)I
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 592
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->getOffset(J)I

    move-result v0

    .line 593
    int-to-long v1, v0

    add-long/2addr v1, p1

    .line 595
    xor-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    int-to-long v1, v0

    xor-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 596
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Adding time zone offset caused overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_0
    return v0
.end method


# virtual methods
.method public add(JI)J
    .locals 6

    .prologue
    .line 429
    iget-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iTimeField:Z

    if-eqz v0, :cond_0

    .line 430
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->getOffsetToAdd(J)I

    move-result v0

    .line 431
    iget-object v1, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3, p3}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v1

    .line 432
    int-to-long v3, v0

    sub-long v0, v1, v3

    .line 436
    :goto_0
    return-wide v0

    .line 434
    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 435
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1, p3}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v1

    .line 436
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public add(JJ)J
    .locals 6

    .prologue
    .line 441
    iget-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iTimeField:Z

    if-eqz v0, :cond_0

    .line 442
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->getOffsetToAdd(J)I

    move-result v0

    .line 443
    iget-object v1, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3, p3, p4}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide v1

    .line 444
    int-to-long v3, v0

    sub-long v0, v1, v3

    .line 448
    :goto_0
    return-wide v0

    .line 446
    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 447
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1, p3, p4}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide v1

    .line 448
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public addWrapField(JI)J
    .locals 6

    .prologue
    .line 453
    iget-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iTimeField:Z

    if-eqz v0, :cond_0

    .line 454
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->getOffsetToAdd(J)I

    move-result v0

    .line 455
    iget-object v1, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3, p3}, Lorg/joda/time/DateTimeField;->addWrapField(JI)J

    move-result-wide v1

    .line 456
    int-to-long v3, v0

    sub-long v0, v1, v3

    .line 460
    :goto_0
    return-wide v0

    .line 458
    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 459
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1, p3}, Lorg/joda/time/DateTimeField;->addWrapField(JI)J

    move-result-wide v1

    .line 460
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public get(J)I
    .locals 3

    .prologue
    .line 406
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 407
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getAsShortText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getAsShortText(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsShortText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 416
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 417
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1, p3}, Lorg/joda/time/DateTimeField;->getAsShortText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getAsText(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 412
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1, p3}, Lorg/joda/time/DateTimeField;->getAsText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDifference(JJ)I
    .locals 5

    .prologue
    .line 485
    invoke-direct {p0, p3, p4}, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->getOffsetToAdd(J)I

    move-result v1

    .line 486
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    iget-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iTimeField:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-long v3, v0

    add-long/2addr v3, p1

    int-to-long v0, v1

    add-long/2addr v0, p3

    invoke-virtual {v2, v3, v4, v0, v1}, Lorg/joda/time/DateTimeField;->getDifference(JJ)I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->getOffsetToAdd(J)I

    move-result v0

    goto :goto_0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 5

    .prologue
    .line 492
    invoke-direct {p0, p3, p4}, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->getOffsetToAdd(J)I

    move-result v1

    .line 493
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    iget-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iTimeField:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-long v3, v0

    add-long/2addr v3, p1

    int-to-long v0, v1

    add-long/2addr v0, p3

    invoke-virtual {v2, v3, v4, v0, v1}, Lorg/joda/time/DateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->getOffsetToAdd(J)I

    move-result v0

    goto :goto_0
.end method

.method public final getDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public getLeapAmount(J)I
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 513
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/DateTimeField;->getLeapAmount(J)I

    move-result v0

    return v0
.end method

.method public final getLeapDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iLeapDurationField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public getMaximumShortTextLength(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumShortTextLength(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMaximumValue()I

    move-result v0

    return v0
.end method

.method public getMaximumValue(J)I
    .locals 3

    .prologue
    .line 571
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 572
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/DateTimeField;->getMaximumValue(J)I

    move-result v0

    return v0
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;)I
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumValue(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    return v0
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getMinimumValue()I

    move-result v0

    return v0
.end method

.method public getMinimumValue(J)I
    .locals 3

    .prologue
    .line 554
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 555
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/DateTimeField;->getMinimumValue(J)I

    move-result v0

    return v0
.end method

.method public getMinimumValue(Lorg/joda/time/ReadablePartial;)I
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMinimumValue(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    return v0
.end method

.method public getMinimumValue(Lorg/joda/time/ReadablePartial;[I)I
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMinimumValue(Lorg/joda/time/ReadablePartial;[I)I

    move-result v0

    return v0
.end method

.method public final getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iRangeDurationField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public isLeap(J)Z
    .locals 3

    .prologue
    .line 507
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 508
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/DateTimeField;->isLeap(J)Z

    move-result v0

    return v0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->isLenient()Z

    move-result v0

    return v0
.end method

.method public remainder(J)J
    .locals 3

    .prologue
    .line 545
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 546
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundCeiling(J)J
    .locals 6

    .prologue
    .line 533
    iget-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iTimeField:Z

    if-eqz v0, :cond_0

    .line 534
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->getOffsetToAdd(J)I

    move-result v0

    .line 535
    iget-object v1, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide v1

    .line 536
    int-to-long v3, v0

    sub-long v0, v1, v3

    .line 540
    :goto_0
    return-wide v0

    .line 538
    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 539
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide v1

    .line 540
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public roundFloor(J)J
    .locals 6

    .prologue
    .line 521
    iget-boolean v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iTimeField:Z

    if-eqz v0, :cond_0

    .line 522
    invoke-direct {p0, p1, p2}, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->getOffsetToAdd(J)I

    move-result v0

    .line 523
    iget-object v1, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v1

    .line 524
    int-to-long v3, v0

    sub-long v0, v1, v3

    .line 528
    :goto_0
    return-wide v0

    .line 526
    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 527
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v1

    .line 528
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public set(JI)J
    .locals 8

    .prologue
    .line 465
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 466
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1, p3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v1

    .line 467
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide v3

    .line 468
    invoke-virtual {p0, v3, v4}, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->get(J)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 469
    new-instance v0, Lorg/joda/time/IllegalFieldValueException;

    iget-object v3, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v3}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal instant due to time zone offset transition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-static {v6}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v6

    new-instance v7, Lorg/joda/time/Instant;

    invoke-direct {v7, v1, v2}, Lorg/joda/time/Instant;-><init>(J)V

    invoke-virtual {v6, v7}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadableInstant;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v2}, Lorg/joda/time/DateTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_0
    return-wide v3
.end method

.method public set(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 6

    .prologue
    .line 479
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeZone;->convertUTCToLocal(J)J

    move-result-wide v0

    .line 480
    iget-object v2, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iField:Lorg/joda/time/DateTimeField;

    invoke-virtual {v2, v0, v1, p3, p4}, Lorg/joda/time/DateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v1

    .line 481
    iget-object v0, p0, Lorg/joda/time/chrono/ZonedChronology$ZonedDateTimeField;->iZone:Lorg/joda/time/DateTimeZone;

    const/4 v3, 0x0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZJ)J

    move-result-wide v0

    return-wide v0
.end method

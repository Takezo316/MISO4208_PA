.class Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;
.super Lorg/joda/time/field/DecoratedDateTimeField;
.source "LimitChronology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/chrono/LimitChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LimitDateTimeField"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x21cbf29565ca6e70L


# instance fields
.field private final iDurationField:Lorg/joda/time/DurationField;

.field private final iLeapDurationField:Lorg/joda/time/DurationField;

.field private final iRangeDurationField:Lorg/joda/time/DurationField;

.field final synthetic this$0:Lorg/joda/time/chrono/LimitChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/LimitChronology;Lorg/joda/time/DateTimeField;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V
    .locals 1

    .prologue
    .line 453
    iput-object p1, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    .line 454
    invoke-virtual {p2}, Lorg/joda/time/DateTimeField;->getType()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/joda/time/field/DecoratedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    .line 455
    iput-object p3, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    .line 456
    iput-object p4, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->iRangeDurationField:Lorg/joda/time/DurationField;

    .line 457
    iput-object p5, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->iLeapDurationField:Lorg/joda/time/DurationField;

    .line 458
    return-void
.end method


# virtual methods
.method public add(JI)J
    .locals 4

    .prologue
    .line 476
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v0

    .line 478
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 479
    return-wide v0
.end method

.method public add(JJ)J
    .locals 4

    .prologue
    .line 483
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide v0

    .line 485
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 486
    return-wide v0
.end method

.method public addWrapField(JI)J
    .locals 4

    .prologue
    .line 490
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->addWrapField(JI)J

    move-result-wide v0

    .line 492
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 493
    return-wide v0
.end method

.method public get(J)I
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getAsShortText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->getAsShortText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsText(JLjava/util/Locale;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->getAsText(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDifference(JJ)I
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 498
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifference(JJ)I

    move-result v0

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "minuend"

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 504
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v1, "subtrahend"

    invoke-virtual {v0, p3, p4, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public getLeapAmount(J)I
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getLeapAmount(J)I

    move-result v0

    return v0
.end method

.method public final getLeapDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->iLeapDurationField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public getMaximumShortTextLength(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 601
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumShortTextLength(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 597
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/DateTimeField;->getMaximumTextLength(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public getMaximumValue(J)I
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMaximumValue(J)I

    move-result v0

    return v0
.end method

.method public getMinimumValue(J)I
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 588
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->getMinimumValue(J)I

    move-result v0

    return v0
.end method

.method public final getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->iRangeDurationField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public isLeap(J)Z
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->isLeap(J)Z

    move-result v0

    return v0
.end method

.method public remainder(J)J
    .locals 4

    .prologue
    .line 580
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide v0

    .line 582
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 583
    return-wide v0
.end method

.method public roundCeiling(J)J
    .locals 4

    .prologue
    .line 552
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundCeiling(J)J

    move-result-wide v0

    .line 554
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 555
    return-wide v0
.end method

.method public roundFloor(J)J
    .locals 4

    .prologue
    .line 545
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v0

    .line 547
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 548
    return-wide v0
.end method

.method public roundHalfCeiling(J)J
    .locals 4

    .prologue
    .line 566
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundHalfCeiling(J)J

    move-result-wide v0

    .line 568
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 569
    return-wide v0
.end method

.method public roundHalfEven(J)J
    .locals 4

    .prologue
    .line 573
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundHalfEven(J)J

    move-result-wide v0

    .line 575
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 576
    return-wide v0
.end method

.method public roundHalfFloor(J)J
    .locals 4

    .prologue
    .line 559
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundHalfFloor(J)J

    move-result-wide v0

    .line 561
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 562
    return-wide v0
.end method

.method public set(JI)J
    .locals 4

    .prologue
    .line 509
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 511
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 512
    return-wide v0
.end method

.method public set(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 4

    .prologue
    .line 516
    iget-object v0, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->set(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide v0

    .line 518
    iget-object v2, p0, Lorg/joda/time/chrono/LimitChronology$LimitDateTimeField;->this$0:Lorg/joda/time/chrono/LimitChronology;

    const-string v3, "resulting"

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/chrono/LimitChronology;->checkLimits(JLjava/lang/String;)V

    .line 519
    return-wide v0
.end method

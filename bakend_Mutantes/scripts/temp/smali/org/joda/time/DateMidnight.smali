.class public final Lorg/joda/time/DateMidnight;
.super Lorg/joda/time/base/BaseDateTime;
.source "DateMidnight.java"

# interfaces
.implements Lorg/joda/time/ReadableDateTime;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/DateMidnight$Property;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x8e382f5e4032L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lorg/joda/time/base/BaseDateTime;-><init>()V

    .line 158
    return-void
.end method

.method public constructor <init>(III)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 310
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIII)V

    .line 311
    return-void
.end method

.method public constructor <init>(IIILorg/joda/time/Chronology;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 343
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    move v7, v4

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    .line 344
    return-void
.end method

.method public constructor <init>(IIILorg/joda/time/DateTimeZone;)V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 326
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    move v7, v4

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/base/BaseDateTime;-><init>(IIIIIIILorg/joda/time/DateTimeZone;)V

    .line 327
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseDateTime;-><init>(J)V

    .line 199
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/Chronology;)V

    .line 228
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/DateTimeZone;)V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BaseDateTime;-><init>(JLorg/joda/time/DateTimeZone;)V

    .line 213
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    check-cast v0, Lorg/joda/time/Chronology;

    invoke-direct {p0, p1, v0}, Lorg/joda/time/base/BaseDateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    .line 250
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 1

    .prologue
    .line 296
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/joda/time/base/BaseDateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    .line 297
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseDateTime;-><init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V

    .line 275
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseDateTime;-><init>(Lorg/joda/time/Chronology;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lorg/joda/time/base/BaseDateTime;-><init>(Lorg/joda/time/DateTimeZone;)V

    .line 172
    return-void
.end method

.method public static now()Lorg/joda/time/DateMidnight;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lorg/joda/time/DateMidnight;

    invoke-direct {v0}, Lorg/joda/time/DateMidnight;-><init>()V

    return-object v0
.end method

.method public static now(Lorg/joda/time/Chronology;)Lorg/joda/time/DateMidnight;
    .locals 2

    .prologue
    .line 117
    if-nez p0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Chronology must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    new-instance v0, Lorg/joda/time/DateMidnight;

    invoke-direct {v0, p0}, Lorg/joda/time/DateMidnight;-><init>(Lorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public static now(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateMidnight;
    .locals 2

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Zone must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    new-instance v0, Lorg/joda/time/DateMidnight;

    invoke-direct {v0, p0}, Lorg/joda/time/DateMidnight;-><init>(Lorg/joda/time/DateTimeZone;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/DateMidnight;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->dateTimeParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->withOffsetParsed()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/joda/time/DateMidnight;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/DateMidnight;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->parseDateTime(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->toDateMidnight()Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public centuryOfEra()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    .prologue
    .line 1099
    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method protected checkInstant(JLorg/joda/time/Chronology;)J
    .locals 2

    .prologue
    .line 354
    invoke-virtual {p3}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public dayOfMonth()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    .prologue
    .line 1171
    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public dayOfWeek()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    .prologue
    .line 1180
    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public dayOfYear()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    .prologue
    .line 1162
    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public era()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    .prologue
    .line 1090
    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public minus(J)Lorg/joda/time/DateMidnight;
    .locals 1

    .prologue
    .line 705
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/DateMidnight;->withDurationAdded(JI)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/DateMidnight;
    .locals 1

    .prologue
    .line 718
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/DateMidnight;->withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public minus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/DateMidnight;
    .locals 1

    .prologue
    .line 735
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/DateMidnight;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public minusDays(I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 828
    if-nez p1, :cond_0

    .line 832
    :goto_0
    return-object p0

    .line 831
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 832
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p0

    goto :goto_0
.end method

.method public minusMonths(I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 780
    if-nez p1, :cond_0

    .line 784
    :goto_0
    return-object p0

    .line 783
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 784
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p0

    goto :goto_0
.end method

.method public minusWeeks(I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 804
    if-nez p1, :cond_0

    .line 808
    :goto_0
    return-object p0

    .line 807
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 808
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p0

    goto :goto_0
.end method

.method public minusYears(I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 756
    if-nez p1, :cond_0

    .line 760
    :goto_0
    return-object p0

    .line 759
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 760
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p0

    goto :goto_0
.end method

.method public monthOfYear()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    .prologue
    .line 1144
    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public plus(J)Lorg/joda/time/DateMidnight;
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/DateMidnight;->withDurationAdded(JI)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lorg/joda/time/ReadableDuration;)Lorg/joda/time/DateMidnight;
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/DateMidnight;->withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/DateMidnight;
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/DateMidnight;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 687
    if-nez p1, :cond_0

    .line 691
    :goto_0
    return-object p0

    .line 690
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 691
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p0

    goto :goto_0
.end method

.method public plusMonths(I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 639
    if-nez p1, :cond_0

    .line 643
    :goto_0
    return-object p0

    .line 642
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 643
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p0

    goto :goto_0
.end method

.method public plusWeeks(I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 663
    if-nez p1, :cond_0

    .line 667
    :goto_0
    return-object p0

    .line 666
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 667
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p0

    goto :goto_0
.end method

.method public plusYears(I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 615
    if-nez p1, :cond_0

    .line 619
    :goto_0
    return-object p0

    .line 618
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 619
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p0

    goto :goto_0
.end method

.method public property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/DateMidnight$Property;
    .locals 3

    .prologue
    .line 844
    if-nez p1, :cond_0

    .line 845
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DateTimeFieldType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 847
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 848
    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->isSupported()Z

    move-result v1

    if-nez v1, :cond_1

    .line 849
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_1
    new-instance v1, Lorg/joda/time/DateMidnight$Property;

    invoke-direct {v1, p0, v0}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v1
.end method

.method public toInterval()Lorg/joda/time/Interval;
    .locals 6

    .prologue
    .line 888
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    .line 889
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    .line 890
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v3

    .line 891
    new-instance v0, Lorg/joda/time/Interval;

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/Interval;-><init>(JJLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toLocalDate()Lorg/joda/time/LocalDate;
    .locals 4

    .prologue
    .line 875
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toYearMonthDay()Lorg/joda/time/YearMonthDay;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 864
    new-instance v0, Lorg/joda/time/YearMonthDay;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/YearMonthDay;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public weekOfWeekyear()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    .prologue
    .line 1153
    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public weekyear()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    .prologue
    .line 1135
    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public withCenturyOfEra(I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 924
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public withChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 396
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/DateMidnight;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1}, Lorg/joda/time/DateMidnight;-><init>(JLorg/joda/time/Chronology;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withDayOfMonth(I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 1063
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfWeek(I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 1079
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 1047
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public withDurationAdded(JI)Lorg/joda/time/DateMidnight;
    .locals 6

    .prologue
    .line 506
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-object p0

    .line 509
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/Chronology;->add(JJI)J

    move-result-wide v0

    .line 510
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p0

    goto :goto_0
.end method

.method public withDurationAdded(Lorg/joda/time/ReadableDuration;I)Lorg/joda/time/DateMidnight;
    .locals 2

    .prologue
    .line 524
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-interface {p1}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/joda/time/DateMidnight;->withDurationAdded(JI)Lorg/joda/time/DateMidnight;

    move-result-object p0

    goto :goto_0
.end method

.method public withEra(I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 908
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public withField(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 458
    if-nez p1, :cond_0

    .line 459
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 462
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 484
    if-nez p1, :cond_0

    .line 485
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_0
    if-nez p2, :cond_1

    .line 491
    :goto_0
    return-object p0

    .line 490
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 491
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p0

    goto :goto_0
.end method

.method public withFields(Lorg/joda/time/ReadablePartial;)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 432
    if-nez p1, :cond_0

    .line 435
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p0

    goto :goto_0
.end method

.method public withMillis(J)Lorg/joda/time/DateMidnight;
    .locals 5

    .prologue
    .line 369
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 370
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/DateMidnight;->checkInstant(JLorg/joda/time/Chronology;)J

    move-result-wide v1

    .line 371
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance p0, Lorg/joda/time/DateMidnight;

    invoke-direct {p0, v1, v2, v0}, Lorg/joda/time/DateMidnight;-><init>(JLorg/joda/time/Chronology;)V

    goto :goto_0
.end method

.method public withMonthOfYear(I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 1010
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 546
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-object p0

    .line 549
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2, p2}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v0

    .line 550
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object p0

    goto :goto_0
.end method

.method public withWeekOfWeekyear(I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 1031
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public withWeekyear(I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 994
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 972
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public withYearOfCentury(I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 956
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public withYearOfEra(I)Lorg/joda/time/DateMidnight;
    .locals 3

    .prologue
    .line 940
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/DateMidnight;->withMillis(J)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public withZoneRetainFields(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateMidnight;
    .locals 5

    .prologue
    .line 408
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v1

    .line 409
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 410
    if-ne v1, v0, :cond_0

    .line 415
    :goto_0
    return-object p0

    .line 414
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/joda/time/DateTimeZone;->getMillisKeepLocal(Lorg/joda/time/DateTimeZone;J)J

    move-result-wide v2

    .line 415
    new-instance v0, Lorg/joda/time/DateMidnight;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/DateMidnight;-><init>(JLorg/joda/time/Chronology;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public year()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    .prologue
    .line 1126
    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public yearOfCentury()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    .prologue
    .line 1108
    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public yearOfEra()Lorg/joda/time/DateMidnight$Property;
    .locals 2

    .prologue
    .line 1117
    new-instance v0, Lorg/joda/time/DateMidnight$Property;

    invoke-virtual {p0}, Lorg/joda/time/DateMidnight;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/DateMidnight$Property;-><init>(Lorg/joda/time/DateMidnight;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

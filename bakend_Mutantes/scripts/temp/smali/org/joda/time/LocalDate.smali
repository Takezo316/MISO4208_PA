.class public final Lorg/joda/time/LocalDate;
.super Lorg/joda/time/base/BaseLocal;
.source "LocalDate.java"

# interfaces
.implements Lorg/joda/time/ReadablePartial;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/LocalDate$Property;
    }
.end annotation


# static fields
.field private static final DATE_DURATION_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/joda/time/DurationFieldType;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAY_OF_MONTH:I = 0x2

.field private static final MONTH_OF_YEAR:I = 0x1

.field private static final YEAR:I = 0x0

.field private static final serialVersionUID:J = -0x7fb2c1b144bL


# instance fields
.field private final iChronology:Lorg/joda/time/Chronology;

.field private volatile transient iHash:I

.field private final iLocalMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    .line 97
    sget-object v0, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weekyears()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->centuries()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    invoke-static {}, Lorg/joda/time/DurationFieldType;->eras()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 258
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    .line 259
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .prologue
    .line 423
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/joda/time/LocalDate;-><init>(IIILorg/joda/time/Chronology;)V

    .line 424
    return-void
.end method

.method public constructor <init>(IIILorg/joda/time/Chronology;)V
    .locals 3

    .prologue
    .line 442
    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    .line 443
    invoke-static {p4}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 444
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide v1

    .line 445
    iput-object v0, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    .line 446
    iput-wide v1, p0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    .line 447
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    .line 300
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;)V
    .locals 4

    .prologue
    .line 326
    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    .line 327
    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    sget-object v2, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-virtual {v1, v2, p1, p2}, Lorg/joda/time/DateTimeZone;->getMillisKeepLocal(Lorg/joda/time/DateTimeZone;J)J

    move-result-wide v1

    .line 330
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    .line 332
    iput-object v0, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    .line 333
    return-void
.end method

.method public constructor <init>(JLorg/joda/time/DateTimeZone;)V
    .locals 1

    .prologue
    .line 313
    invoke-static {p3}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    .line 314
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    check-cast v0, Lorg/joda/time/Chronology;

    invoke-direct {p0, p1, v0}, Lorg/joda/time/LocalDate;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    .line 355
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 401
    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    .line 402
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getPartialConverter(Ljava/lang/Object;)Lorg/joda/time/convert/PartialConverter;

    move-result-object v0

    .line 403
    invoke-interface {v0, p1, p2}, Lorg/joda/time/convert/PartialConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 404
    invoke-static {v1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 405
    invoke-virtual {v1}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v2

    iput-object v2, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    .line 406
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-interface {v0, p0, p1, v1, v2}, Lorg/joda/time/convert/PartialConverter;->getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)[I

    move-result-object v0

    .line 407
    iget-object v1, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    aget v2, v0, v5

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v0, v0, v4

    invoke-virtual {v1, v2, v3, v0, v5}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    .line 408
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 375
    invoke-direct {p0}, Lorg/joda/time/base/BaseLocal;-><init>()V

    .line 376
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getPartialConverter(Ljava/lang/Object;)Lorg/joda/time/convert/PartialConverter;

    move-result-object v0

    .line 377
    invoke-interface {v0, p1, p2}, Lorg/joda/time/convert/PartialConverter;->getChronology(Ljava/lang/Object;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 378
    invoke-static {v1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 379
    invoke-virtual {v1}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v2

    iput-object v2, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    .line 380
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v2

    invoke-interface {v0, p0, p1, v1, v2}, Lorg/joda/time/convert/PartialConverter;->getPartialValues(Lorg/joda/time/ReadablePartial;Ljava/lang/Object;Lorg/joda/time/Chronology;Lorg/joda/time/format/DateTimeFormatter;)[I

    move-result-object v0

    .line 381
    iget-object v1, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    aget v2, v0, v5

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v0, v0, v4

    invoke-virtual {v1, v2, v3, v0, v5}, Lorg/joda/time/Chronology;->getDateTimeMillis(IIII)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    .line 382
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/Chronology;)V
    .locals 2

    .prologue
    .line 286
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    .line 287
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeZone;)V
    .locals 3

    .prologue
    .line 272
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lorg/joda/time/chrono/ISOChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ISOChronology;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    .line 273
    return-void
.end method

.method public static fromCalendarFields(Ljava/util/Calendar;)Lorg/joda/time/LocalDate;
    .locals 4

    .prologue
    .line 206
    if-nez p0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The calendar must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    new-instance v0, Lorg/joda/time/LocalDate;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/LocalDate;-><init>(III)V

    return-object v0
.end method

.method public static fromDateFields(Ljava/util/Date;)Lorg/joda/time/LocalDate;
    .locals 4

    .prologue
    .line 238
    if-nez p0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The date must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/LocalDate;-><init>(III)V

    return-object v0
.end method

.method public static now()Lorg/joda/time/LocalDate;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-direct {v0}, Lorg/joda/time/LocalDate;-><init>()V

    return-object v0
.end method

.method public static now(Lorg/joda/time/Chronology;)Lorg/joda/time/LocalDate;
    .locals 2

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Chronology must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-direct {v0, p0}, Lorg/joda/time/LocalDate;-><init>(Lorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public static now(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/LocalDate;
    .locals 2

    .prologue
    .line 135
    if-nez p0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Zone must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-direct {v0, p0}, Lorg/joda/time/LocalDate;-><init>(Lorg/joda/time/DateTimeZone;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/LocalDate;
    .locals 1
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->localDateParser()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/joda/time/LocalDate;->parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lorg/joda/time/format/DateTimeFormatter;)Lorg/joda/time/LocalDate;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p1, p0}, Lorg/joda/time/format/DateTimeFormatter;->parseLocalDate(Ljava/lang/String;)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 454
    iget-object v0, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    if-nez v0, :cond_1

    .line 455
    new-instance v0, Lorg/joda/time/LocalDate;

    iget-wide v1, p0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    move-object p0, v0

    .line 460
    :cond_0
    :goto_0
    return-object p0

    .line 457
    :cond_1
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    iget-object v1, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/joda/time/DateTimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Lorg/joda/time/LocalDate;

    iget-wide v1, p0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    iget-object v3, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v3}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public centuryOfEra()Lorg/joda/time/LocalDate$Property;
    .locals 2

    .prologue
    .line 1710
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 81
    check-cast p1, Lorg/joda/time/ReadablePartial;

    invoke-virtual {p0, p1}, Lorg/joda/time/LocalDate;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/joda/time/ReadablePartial;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 663
    if-ne p0, p1, :cond_0

    .line 674
    :goto_0
    return v1

    .line 666
    :cond_0
    instance-of v0, p1, Lorg/joda/time/LocalDate;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 667
    check-cast v0, Lorg/joda/time/LocalDate;

    .line 668
    iget-object v2, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    iget-object v3, v0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 669
    iget-wide v2, p0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    iget-wide v4, v0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v0, -0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    iget-wide v4, v0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 674
    :cond_3
    invoke-super {p0, p1}, Lorg/joda/time/base/BaseLocal;->compareTo(Lorg/joda/time/ReadablePartial;)I

    move-result v1

    goto :goto_0
.end method

.method public dayOfMonth()Lorg/joda/time/LocalDate$Property;
    .locals 2

    .prologue
    .line 1782
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public dayOfWeek()Lorg/joda/time/LocalDate$Property;
    .locals 2

    .prologue
    .line 1791
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public dayOfYear()Lorg/joda/time/LocalDate$Property;
    .locals 2

    .prologue
    .line 1773
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 619
    if-ne p0, p1, :cond_0

    .line 628
    :goto_0
    return v1

    .line 622
    :cond_0
    instance-of v0, p1, Lorg/joda/time/LocalDate;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 623
    check-cast v0, Lorg/joda/time/LocalDate;

    .line 624
    iget-object v2, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    iget-object v3, v0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 625
    iget-wide v2, p0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    iget-wide v4, v0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 628
    :cond_2
    invoke-super {p0, p1}, Lorg/joda/time/base/BaseLocal;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public era()Lorg/joda/time/LocalDate$Property;
    .locals 2

    .prologue
    .line 1701
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public get(Lorg/joda/time/DateTimeFieldType;)I
    .locals 3

    .prologue
    .line 539
    if-nez p1, :cond_0

    .line 540
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DateTimeFieldType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_0
    invoke-virtual {p0, p1}, Lorg/joda/time/LocalDate;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
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

    .line 545
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getCenturyOfEra()I
    .locals 3

    .prologue
    .line 1418
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getChronology()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 3

    .prologue
    .line 1503
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getDayOfWeek()I
    .locals 3

    .prologue
    .line 1514
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getDayOfYear()I
    .locals 3

    .prologue
    .line 1492
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getEra()I
    .locals 3

    .prologue
    .line 1409
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method protected getField(ILorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;
    .locals 3

    .prologue
    .line 486
    packed-switch p1, :pswitch_data_0

    .line 494
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :pswitch_0
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 492
    :goto_0
    return-object v0

    .line 490
    :pswitch_1
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto :goto_0

    .line 492
    :pswitch_2
    invoke-virtual {p2}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    goto :goto_0

    .line 486
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getLocalMillis()J
    .locals 2

    .prologue
    .line 597
    iget-wide v0, p0, Lorg/joda/time/LocalDate;->iLocalMillis:J

    return-wide v0
.end method

.method public getMonthOfYear()I
    .locals 3

    .prologue
    .line 1469
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getValue(I)I
    .locals 3

    .prologue
    .line 511
    packed-switch p1, :pswitch_data_0

    .line 519
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :pswitch_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    .line 517
    :goto_0
    return v0

    .line 515
    :pswitch_1
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    goto :goto_0

    .line 517
    :pswitch_2
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    goto :goto_0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getWeekOfWeekyear()I
    .locals 3

    .prologue
    .line 1483
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getWeekyear()I
    .locals 3

    .prologue
    .line 1460
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 3

    .prologue
    .line 1445
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getYearOfCentury()I
    .locals 3

    .prologue
    .line 1436
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public getYearOfEra()I
    .locals 3

    .prologue
    .line 1427
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lorg/joda/time/LocalDate;->iHash:I

    .line 639
    if-nez v0, :cond_0

    .line 640
    invoke-super {p0}, Lorg/joda/time/base/BaseLocal;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/joda/time/LocalDate;->iHash:I

    .line 642
    :cond_0
    return v0
.end method

.method public isSupported(Lorg/joda/time/DateTimeFieldType;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 557
    if-nez p1, :cond_1

    .line 566
    :cond_0
    :goto_0
    return v0

    .line 560
    :cond_1
    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    .line 561
    sget-object v2, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v3

    invoke-virtual {v3}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 564
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->isSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public isSupported(Lorg/joda/time/DurationFieldType;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 577
    if-nez p1, :cond_1

    .line 585
    :cond_0
    :goto_0
    return v0

    .line 580
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v1

    .line 581
    sget-object v2, Lorg/joda/time/LocalDate;->DATE_DURATION_TYPES:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 583
    :cond_2
    invoke-virtual {v1}, Lorg/joda/time/DurationField;->isSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public minus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/LocalDate;
    .locals 1

    .prologue
    .line 1282
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/LocalDate;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public minusDays(I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1376
    if-nez p1, :cond_0

    .line 1380
    :goto_0
    return-object p0

    .line 1379
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1380
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_0
.end method

.method public minusMonths(I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1330
    if-nez p1, :cond_0

    .line 1334
    :goto_0
    return-object p0

    .line 1333
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1334
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_0
.end method

.method public minusWeeks(I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1353
    if-nez p1, :cond_0

    .line 1357
    :goto_0
    return-object p0

    .line 1356
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1357
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_0
.end method

.method public minusYears(I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1304
    if-nez p1, :cond_0

    .line 1308
    :goto_0
    return-object p0

    .line 1307
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->subtract(JI)J

    move-result-wide v0

    .line 1308
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_0
.end method

.method public monthOfYear()Lorg/joda/time/LocalDate$Property;
    .locals 2

    .prologue
    .line 1755
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public plus(Lorg/joda/time/ReadablePeriod;)Lorg/joda/time/LocalDate;
    .locals 1

    .prologue
    .line 1163
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/LocalDate;->withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public plusDays(I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1257
    if-nez p1, :cond_0

    .line 1261
    :goto_0
    return-object p0

    .line 1260
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1261
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_0
.end method

.method public plusMonths(I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1211
    if-nez p1, :cond_0

    .line 1215
    :goto_0
    return-object p0

    .line 1214
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1215
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_0
.end method

.method public plusWeeks(I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1234
    if-nez p1, :cond_0

    .line 1238
    :goto_0
    return-object p0

    .line 1237
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weeks()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1238
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_0
.end method

.method public plusYears(I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1185
    if-nez p1, :cond_0

    .line 1189
    :goto_0
    return-object p0

    .line 1188
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1189
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_0
.end method

.method public property(Lorg/joda/time/DateTimeFieldType;)Lorg/joda/time/LocalDate$Property;
    .locals 3

    .prologue
    .line 1393
    if-nez p1, :cond_0

    .line 1394
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DateTimeFieldType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1396
    :cond_0
    invoke-virtual {p0, p1}, Lorg/joda/time/LocalDate;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1397
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

    .line 1399
    :cond_1
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x3

    return v0
.end method

.method public toDate()Ljava/util/Date;
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    .line 986
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getDayOfMonth()I

    move-result v2

    .line 987
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, -0x76c

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getMonthOfYear()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v1, v0, v3, v2}, Ljava/util/Date;-><init>(III)V

    .line 988
    invoke-static {v1}, Lorg/joda/time/LocalDate;->fromDateFields(Ljava/util/Date;)Lorg/joda/time/LocalDate;

    move-result-object v0

    .line 989
    invoke-virtual {v0, p0}, Lorg/joda/time/LocalDate;->isBefore(Lorg/joda/time/ReadablePartial;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 992
    :goto_0
    invoke-virtual {v0, p0}, Lorg/joda/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 993
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 994
    invoke-static {v1}, Lorg/joda/time/LocalDate;->fromDateFields(Ljava/util/Date;)Lorg/joda/time/LocalDate;

    move-result-object v0

    goto :goto_0

    .line 997
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 998
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v3, v7

    invoke-virtual {v1, v3, v4}, Ljava/util/Date;->setTime(J)V

    goto :goto_1

    .line 1001
    :cond_1
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    add-long/2addr v2, v7

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    move-object v0, v1

    .line 1009
    :cond_2
    :goto_2
    return-object v0

    .line 1002
    :cond_3
    invoke-virtual {v0, p0}, Lorg/joda/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1004
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 1005
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v3

    if-eq v3, v2, :cond_2

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method public toDateMidnight()Lorg/joda/time/DateMidnight;
    .locals 1

    .prologue
    .line 827
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalDate;->toDateMidnight(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateMidnight;

    move-result-object v0

    return-object v0
.end method

.method public toDateMidnight(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateMidnight;
    .locals 5

    .prologue
    .line 848
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 849
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 850
    new-instance v1, Lorg/joda/time/DateMidnight;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getMonthOfYear()I

    move-result v3

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getDayOfMonth()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/joda/time/DateMidnight;-><init>(IIILorg/joda/time/Chronology;)V

    return-object v1
.end method

.method public toDateTime(Lorg/joda/time/LocalTime;)Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 900
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/joda/time/LocalDate;->toDateTime(Lorg/joda/time/LocalTime;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public toDateTime(Lorg/joda/time/LocalTime;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 922
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 923
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The chronology of the time does not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 925
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v2

    .line 926
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v0

    .line 927
    invoke-virtual {v2, p0, v0, v1}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    .line 928
    if-eqz p1, :cond_1

    .line 929
    invoke-virtual {v2, p1, v0, v1}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    .line 931
    :cond_1
    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3, v0, v1, v2}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v3
.end method

.method public toDateTimeAtCurrentTime()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalDate;->toDateTimeAtCurrentTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public toDateTimeAtCurrentTime(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 4

    .prologue
    .line 802
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 803
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 804
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide v1

    .line 805
    invoke-virtual {v0, p0, v1, v2}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v1

    .line 806
    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3, v1, v2, v0}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v3
.end method

.method public toDateTimeAtMidnight()Lorg/joda/time/DateTime;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 740
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalDate;->toDateTimeAtMidnight(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public toDateTimeAtMidnight(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 763
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 764
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v8

    .line 765
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getMonthOfYear()I

    move-result v2

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getDayOfMonth()I

    move-result v3

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/DateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toDateTimeAtStartOfDay()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 693
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalDate;->toDateTimeAtStartOfDay(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public toDateTimeAtStartOfDay(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;
    .locals 6

    .prologue
    .line 715
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 716
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/joda/time/Chronology;->withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 717
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1499700

    add-long/2addr v2, v4

    .line 718
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lorg/joda/time/DateTimeZone;->convertLocalToUTC(JZ)J

    move-result-wide v2

    .line 719
    invoke-virtual {v1}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v2

    .line 720
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0, v2, v3, v1}, Lorg/joda/time/DateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v0
.end method

.method public toInterval()Lorg/joda/time/Interval;
    .locals 1

    .prologue
    .line 947
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/joda/time/LocalDate;->toInterval(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Interval;

    move-result-object v0

    return-object v0
.end method

.method public toInterval(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Interval;
    .locals 3

    .prologue
    .line 962
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    .line 963
    invoke-virtual {p0, v0}, Lorg/joda/time/LocalDate;->toDateTimeAtStartOfDay(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v1

    .line 964
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/joda/time/LocalDate;->plusDays(I)Lorg/joda/time/LocalDate;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/joda/time/LocalDate;->toDateTimeAtStartOfDay(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 965
    new-instance v2, Lorg/joda/time/Interval;

    invoke-direct {v2, v1, v0}, Lorg/joda/time/Interval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V

    return-object v2
.end method

.method public toLocalDateTime(Lorg/joda/time/LocalTime;)Lorg/joda/time/LocalDateTime;
    .locals 4

    .prologue
    .line 871
    if-nez p1, :cond_0

    .line 872
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The time must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/LocalTime;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 875
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The chronology of the time does not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/joda/time/LocalTime;->getLocalMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 878
    new-instance v2, Lorg/joda/time/LocalDateTime;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/joda/time/LocalDateTime;-><init>(JLorg/joda/time/Chronology;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .prologue
    .line 1802
    invoke-static {}, Lorg/joda/time/format/ISODateTimeFormat;->date()Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1812
    if-nez p1, :cond_0

    .line 1813
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1815
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1826
    if-nez p1, :cond_0

    .line 1827
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1829
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/joda/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/DateTimeFormatter;->print(Lorg/joda/time/ReadablePartial;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public weekOfWeekyear()Lorg/joda/time/LocalDate$Property;
    .locals 2

    .prologue
    .line 1764
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public weekyear()Lorg/joda/time/LocalDate$Property;
    .locals 2

    .prologue
    .line 1746
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public withCenturyOfEra(I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1545
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->centuryOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfMonth(I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1676
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfWeek(I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1691
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfWeek()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withDayOfYear(I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1661
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withEra(I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1530
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withField(Lorg/joda/time/DateTimeFieldType;I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1068
    if-nez p1, :cond_0

    .line 1069
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1071
    :cond_0
    invoke-virtual {p0, p1}, Lorg/joda/time/LocalDate;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1072
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

    .line 1074
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    .line 1075
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withFieldAdded(Lorg/joda/time/DurationFieldType;I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1097
    if-nez p1, :cond_0

    .line 1098
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1100
    :cond_0
    invoke-virtual {p0, p1}, Lorg/joda/time/LocalDate;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1101
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

    .line 1103
    :cond_1
    if-nez p2, :cond_2

    .line 1107
    :goto_0
    return-object p0

    .line 1106
    :cond_2
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide v0

    .line 1107
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_0
.end method

.method public withFields(Lorg/joda/time/ReadablePartial;)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1043
    if-nez p1, :cond_0

    .line 1046
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_0
.end method

.method withLocalMillis(J)Lorg/joda/time/LocalDate;
    .locals 5

    .prologue
    .line 1024
    iget-object v0, p0, Lorg/joda/time/LocalDate;->iChronology:Lorg/joda/time/Chronology;

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v1

    .line 1025
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/joda/time/LocalDate;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/LocalDate;-><init>(JLorg/joda/time/Chronology;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withMonthOfYear(I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1626
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->monthOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withPeriodAdded(Lorg/joda/time/ReadablePeriod;I)Lorg/joda/time/LocalDate;
    .locals 8

    .prologue
    .line 1130
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1142
    :cond_0
    :goto_0
    return-object p0

    .line 1133
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    .line 1134
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v3

    .line 1135
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1136
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v4

    invoke-static {v4, p2}, Lorg/joda/time/field/FieldUtils;->safeMultiply(II)I

    move-result v4

    int-to-long v4, v4

    .line 1137
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v6

    .line 1138
    invoke-virtual {p0, v6}, Lorg/joda/time/LocalDate;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1139
    invoke-virtual {v6, v3}, Lorg/joda/time/DurationFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DurationField;

    move-result-object v6

    invoke-virtual {v6, v1, v2, v4, v5}, Lorg/joda/time/DurationField;->add(JJ)J

    move-result-wide v1

    .line 1135
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1142
    :cond_3
    invoke-virtual {p0, v1, v2}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object p0

    goto :goto_0
.end method

.method public withWeekOfWeekyear(I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1646
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withWeekyear(I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1611
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->weekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withYear(I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1590
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withYearOfCentury(I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1575
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public withYearOfEra(I)Lorg/joda/time/LocalDate;
    .locals 3

    .prologue
    .line 1560
    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getLocalMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/LocalDate;->withLocalMillis(J)Lorg/joda/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public year()Lorg/joda/time/LocalDate$Property;
    .locals 2

    .prologue
    .line 1737
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public yearOfCentury()Lorg/joda/time/LocalDate$Property;
    .locals 2

    .prologue
    .line 1719
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->yearOfCentury()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

.method public yearOfEra()Lorg/joda/time/LocalDate$Property;
    .locals 2

    .prologue
    .line 1728
    new-instance v0, Lorg/joda/time/LocalDate$Property;

    invoke-virtual {p0}, Lorg/joda/time/LocalDate;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/Chronology;->yearOfEra()Lorg/joda/time/DateTimeField;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/joda/time/LocalDate$Property;-><init>(Lorg/joda/time/LocalDate;Lorg/joda/time/DateTimeField;)V

    return-object v0
.end method

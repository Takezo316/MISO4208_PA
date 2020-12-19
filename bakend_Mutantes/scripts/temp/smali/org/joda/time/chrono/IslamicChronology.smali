.class public final Lorg/joda/time/chrono/IslamicChronology;
.super Lorg/joda/time/chrono/BasicChronology;
.source "IslamicChronology.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;
    }
.end annotation


# static fields
.field public static final AH:I = 0x1

.field private static final CYCLE:I = 0x1e

.field private static final ERA_FIELD:Lorg/joda/time/DateTimeField;

.field private static final INSTANCE_UTC:Lorg/joda/time/chrono/IslamicChronology;

.field public static final LEAP_YEAR_15_BASED:Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

.field public static final LEAP_YEAR_16_BASED:Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

.field public static final LEAP_YEAR_HABASH_AL_HASIB:Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

.field public static final LEAP_YEAR_INDIAN:Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

.field private static final LONG_MONTH_LENGTH:I = 0x1e

.field private static final MAX_YEAR:I = 0x116bb3ae

.field private static final MILLIS_PER_CYCLE:J = 0xd5dbf68400L

.field private static final MILLIS_PER_LONG_MONTH:J = 0x9a7ec800L

.field private static final MILLIS_PER_LONG_YEAR:J = 0x724319400L

.field private static final MILLIS_PER_MONTH:J = 0x9813e400L

.field private static final MILLIS_PER_MONTH_PAIR:J = 0x12fd73400L

.field private static final MILLIS_PER_SHORT_YEAR:J = 0x71f0b3800L

.field private static final MILLIS_PER_YEAR:J = 0x720ee9f20L

.field private static final MILLIS_YEAR_1:J = -0x26ac5419b000L

.field private static final MIN_YEAR:I = -0x116bad19

.field private static final MONTH_PAIR_LENGTH:I = 0x3b

.field private static final SHORT_MONTH_LENGTH:I = 0x1d

.field private static final cCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/joda/time/DateTimeZone;",
            "[",
            "Lorg/joda/time/chrono/IslamicChronology;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x3550ceafb80L


# instance fields
.field private final iLeapYears:Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lorg/joda/time/chrono/BasicSingleEraDateTimeField;

    const-string v1, "AH"

    invoke-direct {v0, v1}, Lorg/joda/time/chrono/BasicSingleEraDateTimeField;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/joda/time/chrono/IslamicChronology;->ERA_FIELD:Lorg/joda/time/DateTimeField;

    .line 81
    new-instance v0, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    const/4 v1, 0x0

    const v2, 0x2524a4a4

    invoke-direct {v0, v1, v2}, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;-><init>(II)V

    sput-object v0, Lorg/joda/time/chrono/IslamicChronology;->LEAP_YEAR_15_BASED:Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    .line 83
    new-instance v0, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    const/4 v1, 0x1

    const v2, 0x252524a4

    invoke-direct {v0, v1, v2}, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;-><init>(II)V

    sput-object v0, Lorg/joda/time/chrono/IslamicChronology;->LEAP_YEAR_16_BASED:Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    .line 85
    new-instance v0, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    const/4 v1, 0x2

    const v2, 0x29292524

    invoke-direct {v0, v1, v2}, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;-><init>(II)V

    sput-object v0, Lorg/joda/time/chrono/IslamicChronology;->LEAP_YEAR_INDIAN:Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    .line 87
    new-instance v0, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    const/4 v1, 0x3

    const v2, 0x9292925

    invoke-direct {v0, v1, v2}, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;-><init>(II)V

    sput-object v0, Lorg/joda/time/chrono/IslamicChronology;->LEAP_YEAR_HABASH_AL_HASIB:Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/joda/time/chrono/IslamicChronology;->cCache:Ljava/util/Map;

    .line 148
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v0}, Lorg/joda/time/chrono/IslamicChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/IslamicChronology;

    move-result-object v0

    sput-object v0, Lorg/joda/time/chrono/IslamicChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/IslamicChronology;

    .line 149
    return-void
.end method

.method constructor <init>(Lorg/joda/time/Chronology;Ljava/lang/Object;Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;)V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;I)V

    .line 230
    iput-object p3, p0, Lorg/joda/time/chrono/IslamicChronology;->iLeapYears:Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    .line 231
    return-void
.end method

.method public static getInstance()Lorg/joda/time/chrono/IslamicChronology;
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    sget-object v1, Lorg/joda/time/chrono/IslamicChronology;->LEAP_YEAR_16_BASED:Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    invoke-static {v0, v1}, Lorg/joda/time/chrono/IslamicChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;)Lorg/joda/time/chrono/IslamicChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/IslamicChronology;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lorg/joda/time/chrono/IslamicChronology;->LEAP_YEAR_16_BASED:Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    invoke-static {p0, v0}, Lorg/joda/time/chrono/IslamicChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;)Lorg/joda/time/chrono/IslamicChronology;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;)Lorg/joda/time/chrono/IslamicChronology;
    .locals 11

    .prologue
    .line 192
    if-nez p0, :cond_0

    .line 193
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p0

    .line 196
    :cond_0
    sget-object v10, Lorg/joda/time/chrono/IslamicChronology;->cCache:Ljava/util/Map;

    monitor-enter v10

    .line 197
    :try_start_0
    sget-object v0, Lorg/joda/time/chrono/IslamicChronology;->cCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/chrono/IslamicChronology;

    .line 198
    if-nez v0, :cond_1

    .line 199
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/joda/time/chrono/IslamicChronology;

    .line 200
    sget-object v1, Lorg/joda/time/chrono/IslamicChronology;->cCache:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v9, v0

    .line 202
    iget-byte v0, p1, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;->index:B

    aget-object v0, v9, v0

    .line 203
    if-nez v0, :cond_2

    .line 204
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    if-ne p0, v0, :cond_3

    .line 206
    new-instance v8, Lorg/joda/time/chrono/IslamicChronology;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {v8, v0, v1, p1}, Lorg/joda/time/chrono/IslamicChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;)V

    .line 208
    new-instance v0, Lorg/joda/time/DateTime;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/joda/time/DateTime;-><init>(IIIIIIILorg/joda/time/Chronology;)V

    .line 209
    new-instance v1, Lorg/joda/time/chrono/IslamicChronology;

    const/4 v2, 0x0

    invoke-static {v8, v0, v2}, Lorg/joda/time/chrono/LimitChronology;->getInstance(Lorg/joda/time/Chronology;Lorg/joda/time/ReadableDateTime;Lorg/joda/time/ReadableDateTime;)Lorg/joda/time/chrono/LimitChronology;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lorg/joda/time/chrono/IslamicChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;)V

    move-object v0, v1

    .line 217
    :goto_0
    iget-byte v1, p1, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;->index:B

    aput-object v0, v9, v1

    .line 219
    :cond_2
    monitor-exit v10

    .line 220
    return-object v0

    .line 213
    :cond_3
    sget-object v0, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-static {v0, p1}, Lorg/joda/time/chrono/IslamicChronology;->getInstance(Lorg/joda/time/DateTimeZone;Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;)Lorg/joda/time/chrono/IslamicChronology;

    move-result-object v1

    .line 214
    new-instance v0, Lorg/joda/time/chrono/IslamicChronology;

    invoke-static {v1, p0}, Lorg/joda/time/chrono/ZonedChronology;->getInstance(Lorg/joda/time/Chronology;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/ZonedChronology;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lorg/joda/time/chrono/IslamicChronology;-><init>(Lorg/joda/time/Chronology;Ljava/lang/Object;Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;)V

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstanceUTC()Lorg/joda/time/chrono/IslamicChronology;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lorg/joda/time/chrono/IslamicChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/IslamicChronology;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lorg/joda/time/chrono/IslamicChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    .line 238
    if-nez v0, :cond_0

    invoke-static {}, Lorg/joda/time/chrono/IslamicChronology;->getInstanceUTC()Lorg/joda/time/chrono/IslamicChronology;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/joda/time/Chronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/chrono/IslamicChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/IslamicChronology;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V
    .locals 2

    .prologue
    .line 468
    invoke-virtual {p0}, Lorg/joda/time/chrono/IslamicChronology;->getBase()Lorg/joda/time/Chronology;

    move-result-object v0

    if-nez v0, :cond_0

    .line 469
    invoke-super {p0, p1}, Lorg/joda/time/chrono/BasicChronology;->assemble(Lorg/joda/time/chrono/AssembledChronology$Fields;)V

    .line 471
    sget-object v0, Lorg/joda/time/chrono/IslamicChronology;->ERA_FIELD:Lorg/joda/time/DateTimeField;

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->era:Lorg/joda/time/DateTimeField;

    .line 472
    new-instance v0, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Lorg/joda/time/chrono/BasicMonthOfYearDateTimeField;-><init>(Lorg/joda/time/chrono/BasicChronology;I)V

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    .line 473
    iget-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->monthOfYear:Lorg/joda/time/DateTimeField;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/chrono/AssembledChronology$Fields;->months:Lorg/joda/time/DurationField;

    .line 475
    :cond_0
    return-void
.end method

.method calculateFirstDayOfYearMillis(I)J
    .locals 7

    .prologue
    const v4, 0x116bb3ae

    const v3, -0x116bad19

    .line 427
    if-le p1, v4, :cond_0

    .line 428
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Year is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_0
    if-ge p1, v3, :cond_1

    .line 431
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Year is too small: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_1
    add-int/lit8 v0, p1, -0x1

    .line 439
    div-int/lit8 v1, v0, 0x1e

    int-to-long v1, v1

    .line 440
    const-wide v3, -0x26ac5419b000L

    const-wide v5, 0xd5dbf68400L

    mul-long/2addr v1, v5

    add-long/2addr v1, v3

    .line 441
    rem-int/lit8 v0, v0, 0x1e

    add-int/lit8 v5, v0, 0x1

    .line 443
    const/4 v0, 0x1

    move-wide v3, v1

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_3

    .line 444
    invoke-virtual {p0, v2}, Lorg/joda/time/chrono/IslamicChronology;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide v0, 0x724319400L

    :goto_1
    add-long/2addr v3, v0

    .line 443
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 444
    :cond_2
    const-wide v0, 0x71f0b3800L

    goto :goto_1

    .line 447
    :cond_3
    return-wide v3
.end method

.method getApproxMillisAtEpochDividedByTwo()J
    .locals 2

    .prologue
    .line 463
    const-wide v0, 0x13562a0cd800L

    return-wide v0
.end method

.method getAverageMillisPerMonth()J
    .locals 2

    .prologue
    .line 422
    const-wide v0, 0x9813e400L

    return-wide v0
.end method

.method getAverageMillisPerYear()J
    .locals 2

    .prologue
    .line 412
    const-wide v0, 0x720ee9f20L

    return-wide v0
.end method

.method getAverageMillisPerYearDividedByTwo()J
    .locals 2

    .prologue
    .line 417
    const-wide v0, 0x390774f90L

    return-wide v0
.end method

.method getDayOfMonth(J)I
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/IslamicChronology;->getDayOfYear(J)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 354
    const/16 v1, 0x162

    if-ne v0, v1, :cond_0

    .line 355
    const/16 v0, 0x1e

    .line 357
    :goto_0
    return v0

    :cond_0
    rem-int/lit8 v0, v0, 0x3b

    rem-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getDaysInMonthMax()I
    .locals 1

    .prologue
    .line 385
    const/16 v0, 0x1e

    return v0
.end method

.method getDaysInMonthMax(I)I
    .locals 2

    .prologue
    const/16 v0, 0x1e

    .line 390
    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v1, p1, -0x1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v0, 0x1d

    goto :goto_0
.end method

.method getDaysInYear(I)I
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/IslamicChronology;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x163

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x162

    goto :goto_0
.end method

.method getDaysInYearMax()I
    .locals 1

    .prologue
    .line 367
    const/16 v0, 0x163

    return v0
.end method

.method getDaysInYearMonth(II)I
    .locals 2

    .prologue
    const/16 v0, 0x1e

    .line 377
    const/16 v1, 0xc

    if-ne p2, v1, :cond_1

    invoke-virtual {p0, p1}, Lorg/joda/time/chrono/IslamicChronology;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v1, p2, -0x1

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v0, 0x1d

    goto :goto_0
.end method

.method public getLeapYearPatternType()Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/joda/time/chrono/IslamicChronology;->iLeapYears:Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    return-object v0
.end method

.method getMaxYear()I
    .locals 1

    .prologue
    .line 457
    const v0, 0x116bb3ae

    return v0
.end method

.method getMinYear()I
    .locals 1

    .prologue
    .line 452
    const/4 v0, 0x1

    return v0
.end method

.method getMonthOfYear(JI)I
    .locals 4

    .prologue
    .line 398
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/IslamicChronology;->getYearMillis(I)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 399
    const/16 v1, 0x162

    if-ne v0, v1, :cond_0

    .line 400
    const/16 v0, 0xc

    .line 402
    :goto_0
    return v0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3b

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getTotalMillisByYearMonth(II)J
    .locals 5

    .prologue
    const-wide v3, 0x12fd73400L

    .line 341
    add-int/lit8 v0, p2, -0x1

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 342
    div-int/lit8 v0, v0, 0x2

    .line 343
    int-to-long v0, v0

    mul-long/2addr v0, v3

    const-wide v2, 0x9a7ec800L

    add-long/2addr v0, v2

    .line 346
    :goto_0
    return-wide v0

    .line 345
    :cond_0
    div-int/lit8 v0, v0, 0x2

    .line 346
    int-to-long v0, v0

    mul-long/2addr v0, v3

    goto :goto_0
.end method

.method getYear(J)I
    .locals 11

    .prologue
    const-wide v6, 0xd5dbf68400L

    const-wide v2, 0x724319400L

    const-wide v4, 0x71f0b3800L

    .line 290
    const-wide v0, -0x26ac5419b000L

    sub-long v0, p1, v0

    .line 291
    div-long v9, v0, v6

    .line 292
    rem-long v7, v0, v6

    .line 294
    const-wide/16 v0, 0x1e

    mul-long/2addr v0, v9

    const-wide/16 v9, 0x1

    add-long/2addr v0, v9

    long-to-int v6, v0

    .line 295
    invoke-virtual {p0, v6}, Lorg/joda/time/chrono/IslamicChronology;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, v2

    .line 296
    :goto_0
    cmp-long v9, v7, v0

    if-ltz v9, :cond_2

    .line 297
    sub-long/2addr v7, v0

    .line 298
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lorg/joda/time/chrono/IslamicChronology;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide v0, v2

    goto :goto_0

    :cond_0
    move-wide v0, v4

    .line 295
    goto :goto_0

    :cond_1
    move-wide v0, v4

    .line 298
    goto :goto_0

    .line 300
    :cond_2
    return v6
.end method

.method getYearDifference(JJ)J
    .locals 6

    .prologue
    .line 325
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/IslamicChronology;->getYear(J)I

    move-result v0

    .line 326
    invoke-virtual {p0, p3, p4}, Lorg/joda/time/chrono/IslamicChronology;->getYear(J)I

    move-result v1

    .line 329
    invoke-virtual {p0, v0}, Lorg/joda/time/chrono/IslamicChronology;->getYearMillis(I)J

    move-result-wide v2

    sub-long v2, p1, v2

    .line 330
    invoke-virtual {p0, v1}, Lorg/joda/time/chrono/IslamicChronology;->getYearMillis(I)J

    move-result-wide v4

    sub-long v4, p3, v4

    .line 332
    sub-int/2addr v0, v1

    .line 333
    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 334
    add-int/lit8 v0, v0, -0x1

    .line 336
    :cond_0
    int-to-long v0, v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 285
    invoke-super {p0}, Lorg/joda/time/chrono/BasicChronology;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    invoke-virtual {p0}, Lorg/joda/time/chrono/IslamicChronology;->getLeapYearPatternType()Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method isLeapYear(I)Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lorg/joda/time/chrono/IslamicChronology;->iLeapYears:Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;

    invoke-virtual {v0, p1}, Lorg/joda/time/chrono/IslamicChronology$LeapYearPatternType;->isLeapYear(I)Z

    move-result v0

    return v0
.end method

.method setYear(JI)J
    .locals 4

    .prologue
    .line 305
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/IslamicChronology;->getYear(J)I

    move-result v0

    .line 306
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/IslamicChronology;->getDayOfYear(JI)I

    move-result v0

    .line 307
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/IslamicChronology;->getMillisOfDay(J)I

    move-result v1

    .line 309
    const/16 v2, 0x162

    if-le v0, v2, :cond_0

    .line 311
    invoke-virtual {p0, p3}, Lorg/joda/time/chrono/IslamicChronology;->isLeapYear(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    add-int/lit8 v0, v0, -0x1

    .line 317
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, p3, v2, v0}, Lorg/joda/time/chrono/IslamicChronology;->getYearMonthDayMillis(III)J

    move-result-wide v2

    .line 318
    int-to-long v0, v1

    add-long/2addr v0, v2

    .line 319
    return-wide v0
.end method

.method public withUTC()Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lorg/joda/time/chrono/IslamicChronology;->INSTANCE_UTC:Lorg/joda/time/chrono/IslamicChronology;

    return-object v0
.end method

.method public withZone(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/Chronology;
    .locals 1

    .prologue
    .line 269
    if-nez p1, :cond_0

    .line 270
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p1

    .line 272
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/chrono/IslamicChronology;->getZone()Lorg/joda/time/DateTimeZone;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 275
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lorg/joda/time/chrono/IslamicChronology;->getInstance(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/chrono/IslamicChronology;

    move-result-object p0

    goto :goto_0
.end method

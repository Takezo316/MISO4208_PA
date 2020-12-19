.class final Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;
.super Lorg/joda/time/field/PreciseDurationDateTimeField;
.source "BasicDayOfYearDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = -0x5ea9e6bfdc33a54dL


# instance fields
.field private final iChronology:Lorg/joda/time/chrono/BasicChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/field/PreciseDurationDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;)V

    .line 42
    iput-object p1, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    .line 43
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->dayOfYear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(J)I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getDayOfYear(J)I

    move-result v0

    return v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMax()I

    move-result v0

    return v0
.end method

.method public getMaximumValue(J)I
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    .line 69
    iget-object v1, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYear(I)I

    move-result v0

    return v0
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;)I
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    .line 75
    iget-object v1, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYear(I)I

    move-result v0

    .line 77
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMax()I

    move-result v0

    goto :goto_0
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I
    .locals 4

    .prologue
    .line 81
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v1

    .line 82
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 83
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 84
    aget v0, p2, v0

    .line 85
    iget-object v1, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYear(I)I

    move-result v0

    .line 88
    :goto_1
    return v0

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMax()I

    move-result v0

    goto :goto_1
.end method

.method protected getMaximumValueForSet(JI)I
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMax()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 93
    if-gt p3, v0, :cond_0

    const/4 v1, 0x1

    if-ge p3, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->getMaximumValue(J)I

    move-result v0

    :cond_1
    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->years()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

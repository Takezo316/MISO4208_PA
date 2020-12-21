.class Lorg/joda/time/chrono/BasicYearDateTimeField;
.super Lorg/joda/time/field/ImpreciseDateTimeField;
.source "BasicYearDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = -0x59b3cbe617dfL


# instance fields
.field protected final iChronology:Lorg/joda/time/chrono/BasicChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/BasicChronology;)V
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/chrono/BasicChronology;->getAverageMillisPerYear()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lorg/joda/time/field/ImpreciseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;J)V

    .line 46
    iput-object p1, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    .line 47
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->year()Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(JI)J
    .locals 1

    .prologue
    .line 58
    if-nez p3, :cond_0

    .line 63
    :goto_0
    return-wide p1

    .line 61
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicYearDateTimeField;->get(J)I

    move-result v0

    .line 62
    invoke-static {v0, p3}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v0

    .line 63
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicYearDateTimeField;->set(JI)J

    move-result-wide p1

    goto :goto_0
.end method

.method public add(JJ)J
    .locals 2

    .prologue
    .line 67
    invoke-static {p3, p4}, Lorg/joda/time/field/FieldUtils;->safeToInt(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicYearDateTimeField;->add(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public addWrapField(JI)J
    .locals 3

    .prologue
    .line 71
    if-nez p3, :cond_0

    .line 78
    :goto_0
    return-wide p1

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    .line 76
    iget-object v1, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    move-result v1

    iget-object v2, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v2}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    move-result v2

    invoke-static {v0, p3, v1, v2}, Lorg/joda/time/field/FieldUtils;->getWrappedValue(IIII)I

    move-result v0

    .line 78
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/BasicYearDateTimeField;->set(JI)J

    move-result-wide p1

    goto :goto_0
.end method

.method public get(J)I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 2

    .prologue
    .line 88
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p3, p4, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYearDifference(JJ)J

    move-result-wide v0

    neg-long v0, v0

    .line 91
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/chrono/BasicChronology;->getYearDifference(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLeapAmount(J)I
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicYearDateTimeField;->get(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/joda/time/chrono/BasicChronology;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLeapDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->days()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    move-result v0

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    move-result v0

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLeap(J)Z
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicYearDateTimeField;->get(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/joda/time/chrono/BasicChronology;->isLeapYear(I)Z

    move-result v0

    return v0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public remainder(J)J
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicYearDateTimeField;->roundFloor(J)J

    move-result-wide v0

    sub-long v0, p1, v0

    return-wide v0
.end method

.method public roundCeiling(J)J
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicYearDateTimeField;->get(J)I

    move-result v0

    .line 128
    iget-object v1, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, v0}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide v1

    .line 129
    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide p1

    .line 133
    :cond_0
    return-wide p1
.end method

.method public roundFloor(J)J
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicYearDateTimeField;->get(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/joda/time/chrono/BasicChronology;->getYearMillis(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(JI)J
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getMinYear()I

    move-result v0

    iget-object v1, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1}, Lorg/joda/time/chrono/BasicChronology;->getMaxYear()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 84
    iget-object v0, p0, Lorg/joda/time/chrono/BasicYearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->setYear(JI)J

    move-result-wide v0

    return-wide v0
.end method

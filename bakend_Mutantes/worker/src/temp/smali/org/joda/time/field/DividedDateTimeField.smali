.class public Lorg/joda/time/field/DividedDateTimeField;
.super Lorg/joda/time/field/DecoratedDateTimeField;
.source "DividedDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = 0x7371290d64b04a35L


# instance fields
.field final iDivisor:I

.field final iDurationField:Lorg/joda/time/DurationField;

.field private final iMax:I

.field private final iMin:I


# direct methods
.method public constructor <init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;I)V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/joda/time/field/DecoratedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    .line 58
    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The divisor must be at least 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joda/time/field/DividedDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    .line 70
    :goto_0
    iput p3, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    .line 72
    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->getMinimumValue()I

    move-result v0

    .line 73
    if-ltz v0, :cond_2

    div-int/2addr v0, p3

    .line 75
    :goto_1
    invoke-virtual {p1}, Lorg/joda/time/DateTimeField;->getMaximumValue()I

    move-result v1

    .line 76
    if-ltz v1, :cond_3

    div-int/2addr v1, p3

    .line 78
    :goto_2
    iput v0, p0, Lorg/joda/time/field/DividedDateTimeField;->iMin:I

    .line 79
    iput v1, p0, Lorg/joda/time/field/DividedDateTimeField;->iMax:I

    .line 80
    return-void

    .line 66
    :cond_1
    new-instance v1, Lorg/joda/time/field/ScaledDurationField;

    invoke-virtual {p2}, Lorg/joda/time/DateTimeFieldType;->getDurationType()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    invoke-direct {v1, v0, v2, p3}, Lorg/joda/time/field/ScaledDurationField;-><init>(Lorg/joda/time/DurationField;Lorg/joda/time/DurationFieldType;I)V

    iput-object v1, p0, Lorg/joda/time/field/DividedDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    goto :goto_0

    .line 73
    :cond_2
    add-int/lit8 v0, v0, 0x1

    div-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 76
    :cond_3
    add-int/lit8 v1, v1, 0x1

    div-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public constructor <init>(Lorg/joda/time/field/RemainderDateTimeField;Lorg/joda/time/DateTimeFieldType;)V
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p1}, Lorg/joda/time/field/RemainderDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/field/DecoratedDateTimeField;-><init>(Lorg/joda/time/DateTimeField;Lorg/joda/time/DateTimeFieldType;)V

    .line 91
    iget v1, p1, Lorg/joda/time/field/RemainderDateTimeField;->iDivisor:I

    iput v1, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    .line 92
    iget-object v0, p1, Lorg/joda/time/field/RemainderDateTimeField;->iRangeField:Lorg/joda/time/DurationField;

    iput-object v0, p0, Lorg/joda/time/field/DividedDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    .line 94
    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Lorg/joda/time/DateTimeField;->getMinimumValue()I

    move-result v0

    .line 96
    if-ltz v0, :cond_0

    div-int/2addr v0, v1

    .line 98
    :goto_0
    invoke-virtual {v2}, Lorg/joda/time/DateTimeField;->getMaximumValue()I

    move-result v2

    .line 99
    if-ltz v2, :cond_1

    div-int v1, v2, v1

    .line 101
    :goto_1
    iput v0, p0, Lorg/joda/time/field/DividedDateTimeField;->iMin:I

    .line 102
    iput v1, p0, Lorg/joda/time/field/DividedDateTimeField;->iMax:I

    .line 103
    return-void

    .line 96
    :cond_0
    add-int/lit8 v0, v0, 0x1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 99
    :cond_1
    add-int/lit8 v2, v2, 0x1

    div-int v1, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private getRemainder(I)I
    .locals 3

    .prologue
    .line 222
    if-ltz p1, :cond_0

    .line 223
    iget v0, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    rem-int v0, p1, v0

    .line 225
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public add(JI)J
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    mul-int/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/DateTimeField;->add(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public add(JJ)J
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    iget v1, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    int-to-long v1, v1

    mul-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/joda/time/DateTimeField;->add(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public addWrapField(JI)J
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/DividedDateTimeField;->get(J)I

    move-result v0

    iget v1, p0, Lorg/joda/time/field/DividedDateTimeField;->iMin:I

    iget v2, p0, Lorg/joda/time/field/DividedDateTimeField;->iMax:I

    invoke-static {v0, p3, v1, v2}, Lorg/joda/time/field/FieldUtils;->getWrappedValue(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/field/DividedDateTimeField;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(J)I
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    .line 113
    if-ltz v0, :cond_0

    .line 114
    iget v1, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    div-int/2addr v0, v1

    .line 116
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getDifference(JJ)I
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifference(JJ)I

    move-result v0

    iget v1, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getDifferenceAsLong(JJ)J
    .locals 4

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DateTimeField;->getDifferenceAsLong(JJ)J

    move-result-wide v0

    iget v2, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getDivisor()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    return v0
.end method

.method public getDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/joda/time/field/DividedDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lorg/joda/time/field/DividedDateTimeField;->iMax:I

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lorg/joda/time/field/DividedDateTimeField;->iMin:I

    return v0
.end method

.method public remainder(J)J
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->remainder(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/field/DividedDateTimeField;->get(J)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/field/DividedDateTimeField;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundFloor(J)J
    .locals 3

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 205
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/DividedDateTimeField;->get(J)I

    move-result v1

    iget v2, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, p1, p2, v1}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/DateTimeField;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(JI)J
    .locals 3

    .prologue
    .line 173
    iget v0, p0, Lorg/joda/time/field/DividedDateTimeField;->iMin:I

    iget v1, p0, Lorg/joda/time/field/DividedDateTimeField;->iMax:I

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 174
    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/joda/time/field/DividedDateTimeField;->getRemainder(I)I

    move-result v0

    .line 175
    invoke-virtual {p0}, Lorg/joda/time/field/DividedDateTimeField;->getWrappedField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget v2, p0, Lorg/joda/time/field/DividedDateTimeField;->iDivisor:I

    mul-int/2addr v2, p3

    add-int/2addr v0, v2

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/DateTimeField;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method

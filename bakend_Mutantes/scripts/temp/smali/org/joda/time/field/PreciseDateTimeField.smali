.class public Lorg/joda/time/field/PreciseDateTimeField;
.super Lorg/joda/time/field/PreciseDurationDateTimeField;
.source "PreciseDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = -0x4d884e26ad310a78L


# instance fields
.field private final iRange:I

.field private final iRangeField:Lorg/joda/time/DurationField;


# direct methods
.method public constructor <init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;Lorg/joda/time/DurationField;)V
    .locals 4

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/joda/time/field/PreciseDurationDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;)V

    .line 59
    invoke-virtual {p3}, Lorg/joda/time/DurationField;->isPrecise()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Range duration field must be precise"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-virtual {p3}, Lorg/joda/time/DurationField;->getUnitMillis()J

    move-result-wide v0

    .line 64
    invoke-virtual {p0}, Lorg/joda/time/field/PreciseDateTimeField;->getUnitMillis()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lorg/joda/time/field/PreciseDateTimeField;->iRange:I

    .line 65
    iget v0, p0, Lorg/joda/time/field/PreciseDateTimeField;->iRange:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The effective range must be at least 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    iput-object p3, p0, Lorg/joda/time/field/PreciseDateTimeField;->iRangeField:Lorg/joda/time/DurationField;

    .line 70
    return-void
.end method


# virtual methods
.method public addWrapField(JI)J
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/PreciseDateTimeField;->get(J)I

    move-result v0

    .line 96
    invoke-virtual {p0}, Lorg/joda/time/field/PreciseDateTimeField;->getMinimumValue()I

    move-result v1

    invoke-virtual {p0}, Lorg/joda/time/field/PreciseDateTimeField;->getMaximumValue()I

    move-result v2

    invoke-static {v0, p3, v1, v2}, Lorg/joda/time/field/FieldUtils;->getWrappedValue(IIII)I

    move-result v1

    .line 99
    sub-int v0, v1, v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lorg/joda/time/field/PreciseDateTimeField;->getUnitMillis()J

    move-result-wide v2

    mul-long/2addr v0, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public get(J)I
    .locals 5

    .prologue
    .line 79
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lorg/joda/time/field/PreciseDateTimeField;->getUnitMillis()J

    move-result-wide v0

    div-long v0, p1, v0

    iget v2, p0, Lorg/joda/time/field/PreciseDateTimeField;->iRange:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 82
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/joda/time/field/PreciseDateTimeField;->iRange:I

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    invoke-virtual {p0}, Lorg/joda/time/field/PreciseDateTimeField;->getUnitMillis()J

    move-result-wide v3

    div-long/2addr v1, v3

    iget v3, p0, Lorg/joda/time/field/PreciseDateTimeField;->iRange:I

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lorg/joda/time/field/PreciseDateTimeField;->iRange:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getRange()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lorg/joda/time/field/PreciseDateTimeField;->iRange:I

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/joda/time/field/PreciseDateTimeField;->iRangeField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public set(JI)J
    .locals 4

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/joda/time/field/PreciseDateTimeField;->getMinimumValue()I

    move-result v0

    invoke-virtual {p0}, Lorg/joda/time/field/PreciseDateTimeField;->getMaximumValue()I

    move-result v1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 112
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/field/PreciseDateTimeField;->get(J)I

    move-result v0

    sub-int v0, p3, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lorg/joda/time/field/PreciseDateTimeField;->iUnitMillis:J

    mul-long/2addr v0, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

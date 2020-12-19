.class final Lorg/joda/time/chrono/GJEraDateTimeField;
.super Lorg/joda/time/field/BaseDateTimeField;
.source "GJEraDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = 0x3adb02c66a0dae08L


# instance fields
.field private final iChronology:Lorg/joda/time/chrono/BasicChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/BasicChronology;)V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->era()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/field/BaseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;)V

    .line 47
    iput-object p1, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    .line 48
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(J)I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    if-gtz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAsText(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-static {p2}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->eraValueToText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lorg/joda/time/DurationFieldType;->eras()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/field/UnsupportedDurationField;->getInstance(Lorg/joda/time/DurationFieldType;)Lorg/joda/time/field/UnsupportedDurationField;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .locals 1

    .prologue
    .line 143
    invoke-static {p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/chrono/GJLocaleSymbols;->getEraMaxTextLength()I

    move-result v0

    return v0
.end method

.method public getMaximumValue()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method public getMinimumValue()I
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public roundCeiling(J)J
    .locals 4

    .prologue
    .line 104
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->get(J)I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/joda/time/chrono/BasicChronology;->setYear(JI)J

    move-result-wide v0

    .line 107
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public roundFloor(J)J
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 96
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->get(J)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 97
    iget-object v0, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/joda/time/chrono/BasicChronology;->setYear(JI)J

    move-result-wide v0

    .line 99
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0
.end method

.method public roundHalfCeiling(J)J
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundHalfEven(J)J
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public roundHalfFloor(J)J
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->roundFloor(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public set(JI)J
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 82
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->get(J)I

    move-result v0

    .line 83
    if-eq v0, p3, :cond_0

    .line 84
    iget-object v0, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result v0

    .line 85
    iget-object v1, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    neg-int v0, v0

    invoke-virtual {v1, p1, p2, v0}, Lorg/joda/time/chrono/BasicChronology;->setYear(JI)J

    move-result-wide p1

    .line 87
    :cond_0
    return-wide p1
.end method

.method public set(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 2

    .prologue
    .line 92
    invoke-static {p4}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/joda/time/chrono/GJLocaleSymbols;->eraTextToValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/chrono/GJEraDateTimeField;->set(JI)J

    move-result-wide v0

    return-wide v0
.end method

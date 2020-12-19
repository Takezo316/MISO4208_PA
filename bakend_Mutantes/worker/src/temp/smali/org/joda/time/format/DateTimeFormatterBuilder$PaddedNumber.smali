.class Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;
.super Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PaddedNumber"
.end annotation


# instance fields
.field protected final iMinPrintedDigits:I


# direct methods
.method protected constructor <init>(Lorg/joda/time/DateTimeFieldType;IZI)V
    .locals 0

    .prologue
    .line 1425
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/format/DateTimeFormatterBuilder$NumberFormatter;-><init>(Lorg/joda/time/DateTimeFieldType;IZ)V

    .line 1426
    iput p4, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->iMinPrintedDigits:I

    .line 1427
    return-void
.end method


# virtual methods
.method public estimatePrintedLength()I
    .locals 1

    .prologue
    .line 1430
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->iMaxParsedDigits:I

    return v0
.end method

.method public printTo(Ljava/io/Writer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1448
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, p4}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 1449
    invoke-virtual {v0, p2, p3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->iMinPrintedDigits:I

    invoke-static {p1, v0, v1}, Lorg/joda/time/format/FormatUtils;->writePaddedInteger(Ljava/io/Writer;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1453
    :goto_0
    return-void

    .line 1450
    :catch_0
    move-exception v0

    .line 1451
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->iMinPrintedDigits:I

    invoke-static {p1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->printUnknownString(Ljava/io/Writer;I)V

    goto :goto_0
.end method

.method public printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1468
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p2, v0}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1470
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p2, v0}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->iMinPrintedDigits:I

    invoke-static {p1, v0, v1}, Lorg/joda/time/format/FormatUtils;->writePaddedInteger(Ljava/io/Writer;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1477
    :goto_0
    return-void

    .line 1471
    :catch_0
    move-exception v0

    .line 1472
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->iMinPrintedDigits:I

    invoke-static {p1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->printUnknownString(Ljava/io/Writer;I)V

    goto :goto_0

    .line 1475
    :cond_0
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->iMinPrintedDigits:I

    invoke-static {p1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->printUnknownString(Ljava/io/Writer;I)V

    goto :goto_0
.end method

.method public printTo(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 1437
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, p4}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    .line 1438
    invoke-virtual {v0, p2, p3}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->iMinPrintedDigits:I

    invoke-static {p1, v0, v1}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1442
    :goto_0
    return-void

    .line 1439
    :catch_0
    move-exception v0

    .line 1440
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->iMinPrintedDigits:I

    invoke-static {p1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendUnknownString(Ljava/lang/StringBuffer;I)V

    goto :goto_0
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 1456
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p2, v0}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1458
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->iFieldType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p2, v0}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->iMinPrintedDigits:I

    invoke-static {p1, v0, v1}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1465
    :goto_0
    return-void

    .line 1459
    :catch_0
    move-exception v0

    .line 1460
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->iMinPrintedDigits:I

    invoke-static {p1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendUnknownString(Ljava/lang/StringBuffer;I)V

    goto :goto_0

    .line 1463
    :cond_0
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$PaddedNumber;->iMinPrintedDigits:I

    invoke-static {p1, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder;->appendUnknownString(Ljava/lang/StringBuffer;I)V

    goto :goto_0
.end method

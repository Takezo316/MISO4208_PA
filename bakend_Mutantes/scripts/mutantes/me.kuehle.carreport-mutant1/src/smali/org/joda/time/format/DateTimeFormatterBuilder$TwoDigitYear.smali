.class Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/DateTimePrinter;
.implements Lorg/joda/time/format/DateTimeParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TwoDigitYear"
.end annotation


# instance fields
.field private final iLenientParse:Z

.field private final iPivot:I

.field private final iType:Lorg/joda/time/DateTimeFieldType;


# direct methods
.method constructor <init>(Lorg/joda/time/DateTimeFieldType;IZ)V
    .locals 0

    .prologue
    .line 1523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1524
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    .line 1525
    iput p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iPivot:I

    .line 1526
    iput-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iLenientParse:Z

    .line 1527
    return-void
.end method

.method private getTwoDigitYear(JLorg/joda/time/Chronology;)I
    .locals 1

    .prologue
    .line 1662
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0, p3}, Lorg/joda/time/DateTimeFieldType;->getField(Lorg/joda/time/Chronology;)Lorg/joda/time/DateTimeField;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/DateTimeField;->get(J)I

    move-result v0

    .line 1663
    if-gez v0, :cond_0

    .line 1664
    neg-int v0, v0

    .line 1666
    :cond_0
    rem-int/lit8 v0, v0, 0x64
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1668
    :goto_0
    return v0

    .line 1667
    :catch_0
    move-exception v0

    .line 1668
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getTwoDigitYear(Lorg/joda/time/ReadablePartial;)I
    .locals 1

    .prologue
    .line 1693
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1695
    :try_start_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    .line 1696
    if-gez v0, :cond_0

    .line 1697
    neg-int v0, v0

    .line 1699
    :cond_0
    rem-int/lit8 v0, v0, 0x64
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1702
    :goto_0
    return v0

    .line 1700
    :catch_0
    move-exception v0

    .line 1702
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .prologue
    .line 1530
    iget-boolean v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iLenientParse:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public estimatePrintedLength()I
    .locals 1

    .prologue
    .line 1633
    const/4 v0, 0x2

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/16 v10, 0x39

    const/16 v9, 0x30

    const/4 v8, 0x2

    const/4 v0, 0x0

    .line 1534
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    .line 1536
    iget-boolean v3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iLenientParse:Z

    if-nez v3, :cond_0

    .line 1537
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1538
    if-ge v1, v8, :cond_c

    .line 1539
    xor-int/lit8 v1, p3, -0x1

    .line 1629
    :goto_0
    return v1

    :cond_0
    move v3, v0

    move v4, v0

    move v5, v0

    move v6, v1

    .line 1545
    :goto_1
    if-ge v3, v6, :cond_5

    .line 1546
    add-int v1, p3, v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1547
    if-nez v3, :cond_4

    const/16 v7, 0x2d

    if-eq v1, v7, :cond_1

    const/16 v7, 0x2b

    if-ne v1, v7, :cond_4

    .line 1549
    :cond_1
    const/16 v4, 0x2d

    if-ne v1, v4, :cond_2

    move v1, v2

    .line 1550
    :goto_2
    if-eqz v1, :cond_3

    .line 1551
    add-int/lit8 v3, v3, 0x1

    move v4, v1

    move v5, v2

    goto :goto_1

    :cond_2
    move v1, v0

    .line 1549
    goto :goto_2

    .line 1554
    :cond_3
    add-int/lit8 p3, p3, 0x1

    .line 1555
    add-int/lit8 v4, v6, -0x1

    move v5, v2

    move v6, v4

    move v4, v1

    .line 1557
    goto :goto_1

    .line 1559
    :cond_4
    if-lt v1, v9, :cond_5

    if-le v1, v10, :cond_6

    .line 1565
    :cond_5
    if-nez v3, :cond_7

    .line 1566
    xor-int/lit8 v1, p3, -0x1

    goto :goto_0

    .line 1562
    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    .line 1563
    goto :goto_1

    .line 1569
    :cond_7
    if-nez v5, :cond_8

    if-eq v3, v8, :cond_c

    .line 1571
    :cond_8
    const/16 v0, 0x9

    if-lt v3, v0, :cond_a

    .line 1574
    add-int v1, p3, v3

    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1594
    :cond_9
    :goto_3
    iget-object v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1, v2, v0}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/DateTimeFieldType;I)V

    goto :goto_0

    .line 1577
    :cond_a
    if-eqz v4, :cond_14

    .line 1578
    add-int/lit8 v0, p3, 0x1

    move v1, v0

    .line 1581
    :goto_4
    add-int/lit8 v0, v1, 0x1

    :try_start_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/lit8 v2, v1, -0x30

    .line 1585
    add-int v1, p3, v3

    move v11, v0

    move v0, v2

    move v2, v11

    .line 1586
    :goto_5
    if-ge v2, v1, :cond_b

    .line 1587
    shl-int/lit8 v3, v0, 0x3

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x30

    move v11, v0

    move v0, v2

    move v2, v11

    goto :goto_5

    .line 1582
    :catch_0
    move-exception v0

    .line 1583
    xor-int/lit8 v1, p3, -0x1

    goto :goto_0

    .line 1589
    :cond_b
    if-eqz v4, :cond_9

    .line 1590
    neg-int v0, v0

    goto :goto_3

    .line 1600
    :cond_c
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1601
    if-lt v1, v9, :cond_d

    if-le v1, v10, :cond_e

    .line 1602
    :cond_d
    xor-int/lit8 v1, p3, -0x1

    goto/16 :goto_0

    .line 1604
    :cond_e
    add-int/lit8 v1, v1, -0x30

    .line 1605
    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1606
    if-lt v2, v9, :cond_f

    if-le v2, v10, :cond_10

    .line 1607
    :cond_f
    xor-int/lit8 v1, p3, -0x1

    goto/16 :goto_0

    .line 1609
    :cond_10
    shl-int/lit8 v3, v1, 0x3

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, -0x30

    .line 1611
    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iPivot:I

    .line 1613
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->getPivotYear()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 1614
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->getPivotYear()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1617
    :cond_11
    add-int/lit8 v3, v1, -0x32

    .line 1620
    if-ltz v3, :cond_13

    .line 1621
    rem-int/lit8 v1, v3, 0x64

    .line 1626
    :goto_6
    if-ge v2, v1, :cond_12

    const/16 v0, 0x64

    :cond_12
    add-int/2addr v0, v3

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 1628
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {p1, v1, v0}, Lorg/joda/time/format/DateTimeParserBucket;->saveField(Lorg/joda/time/DateTimeFieldType;I)V

    .line 1629
    add-int/lit8 v1, p3, 0x2

    goto/16 :goto_0

    .line 1623
    :cond_13
    add-int/lit8 v1, v3, 0x1

    rem-int/lit8 v1, v1, 0x64

    add-int/lit8 v1, v1, 0x63

    goto :goto_6

    :cond_14
    move v1, p3

    goto :goto_4
.end method

.method public printTo(Ljava/io/Writer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v1, 0xfffd

    .line 1651
    invoke-direct {p0, p2, p3, p4}, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->getTwoDigitYear(JLorg/joda/time/Chronology;)I

    move-result v0

    .line 1652
    if-gez v0, :cond_0

    .line 1653
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 1654
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 1658
    :goto_0
    return-void

    .line 1656
    :cond_0
    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lorg/joda/time/format/FormatUtils;->writePaddedInteger(Ljava/io/Writer;II)V

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
    const v1, 0xfffd

    .line 1683
    invoke-direct {p0, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->getTwoDigitYear(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    .line 1684
    if-gez v0, :cond_0

    .line 1685
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 1686
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 1690
    :goto_0
    return-void

    .line 1688
    :cond_0
    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lorg/joda/time/format/FormatUtils;->writePaddedInteger(Ljava/io/Writer;II)V

    goto :goto_0
.end method

.method public printTo(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 2

    .prologue
    const v1, 0xfffd

    .line 1639
    invoke-direct {p0, p2, p3, p4}, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->getTwoDigitYear(JLorg/joda/time/Chronology;)I

    move-result v0

    .line 1640
    if-gez v0, :cond_0

    .line 1641
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1642
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1646
    :goto_0
    return-void

    .line 1644
    :cond_0
    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    goto :goto_0
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 2

    .prologue
    const v1, 0xfffd

    .line 1673
    invoke-direct {p0, p2}, Lorg/joda/time/format/DateTimeFormatterBuilder$TwoDigitYear;->getTwoDigitYear(Lorg/joda/time/ReadablePartial;)I

    move-result v0

    .line 1674
    if-gez v0, :cond_0

    .line 1675
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1676
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1680
    :goto_0
    return-void

    .line 1678
    :cond_0
    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    goto :goto_0
.end method

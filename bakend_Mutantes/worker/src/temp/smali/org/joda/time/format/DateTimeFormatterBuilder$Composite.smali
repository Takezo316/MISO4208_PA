.class Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;
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
    name = "Composite"
.end annotation


# instance fields
.field private final iParsedLengthEstimate:I

.field private final iParsers:[Lorg/joda/time/format/DateTimeParser;

.field private final iPrintedLengthEstimate:I

.field private final iPrinters:[Lorg/joda/time/format/DateTimePrinter;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 2569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2571
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2572
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2574
    invoke-direct {p0, p1, v4, v5}, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->decompose(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 2576
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2577
    iput-object v8, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/DateTimePrinter;

    .line 2578
    iput v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrintedLengthEstimate:I

    .line 2591
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 2592
    iput-object v8, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/DateTimeParser;

    .line 2593
    iput v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsedLengthEstimate:I

    .line 2605
    :goto_1
    return-void

    .line 2580
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 2581
    new-array v0, v6, [Lorg/joda/time/format/DateTimePrinter;

    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/DateTimePrinter;

    move v2, v1

    move v3, v1

    .line 2583
    :goto_2
    if-ge v2, v6, :cond_1

    .line 2584
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/DateTimePrinter;

    .line 2585
    invoke-interface {v0}, Lorg/joda/time/format/DateTimePrinter;->estimatePrintedLength()I

    move-result v7

    add-int/2addr v3, v7

    .line 2586
    iget-object v7, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/DateTimePrinter;

    aput-object v0, v7, v2

    .line 2583
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 2588
    :cond_1
    iput v3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrintedLengthEstimate:I

    goto :goto_0

    .line 2595
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 2596
    new-array v0, v3, [Lorg/joda/time/format/DateTimeParser;

    iput-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/DateTimeParser;

    move v2, v1

    .line 2598
    :goto_3
    if-ge v1, v3, :cond_3

    .line 2599
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/DateTimeParser;

    .line 2600
    invoke-interface {v0}, Lorg/joda/time/format/DateTimeParser;->estimateParsedLength()I

    move-result v4

    add-int/2addr v2, v4

    .line 2601
    iget-object v4, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/DateTimeParser;

    aput-object v0, v4, v1

    .line 2598
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 2603
    :cond_3
    iput v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsedLengthEstimate:I

    goto :goto_1
.end method

.method private addArrayToList(Ljava/util/List;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2736
    if-eqz p2, :cond_0

    .line 2737
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 2738
    aget-object v1, p2, v0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2737
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2741
    :cond_0
    return-void
.end method

.method private decompose(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2713
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2714
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_4

    .line 2715
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2716
    instance-of v3, v0, Lorg/joda/time/format/DateTimePrinter;

    if-eqz v3, :cond_0

    .line 2717
    instance-of v3, v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    if-eqz v3, :cond_2

    .line 2718
    check-cast v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    iget-object v0, v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/DateTimePrinter;

    invoke-direct {p0, p2, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->addArrayToList(Ljava/util/List;[Ljava/lang/Object;)V

    .line 2724
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2725
    instance-of v3, v0, Lorg/joda/time/format/DateTimeParser;

    if-eqz v3, :cond_1

    .line 2726
    instance-of v3, v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    if-eqz v3, :cond_3

    .line 2727
    check-cast v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;

    iget-object v0, v0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/DateTimeParser;

    invoke-direct {p0, p3, v0}, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->addArrayToList(Ljava/util/List;[Ljava/lang/Object;)V

    .line 2714
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 2720
    :cond_2
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2729
    :cond_3
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2733
    :cond_4
    return-void
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .prologue
    .line 2684
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsedLengthEstimate:I

    return v0
.end method

.method public estimatePrintedLength()I
    .locals 1

    .prologue
    .line 2608
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrintedLengthEstimate:I

    return v0
.end method

.method isParser()Z
    .locals 1

    .prologue
    .line 2705
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/DateTimeParser;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPrinter()Z
    .locals 1

    .prologue
    .line 2701
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/DateTimePrinter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I
    .locals 4

    .prologue
    .line 2688
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iParsers:[Lorg/joda/time/format/DateTimeParser;

    .line 2689
    if-nez v1, :cond_0

    .line 2690
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2693
    :cond_0
    array-length v2, v1

    .line 2694
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    if-ltz p3, :cond_1

    .line 2695
    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3}, Lorg/joda/time/format/DateTimeParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I

    move-result p3

    .line 2694
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2697
    :cond_1
    return p3
.end method

.method public printTo(Ljava/io/Writer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2633
    iget-object v9, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/DateTimePrinter;

    .line 2634
    if-nez v9, :cond_0

    .line 2635
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2638
    :cond_0
    if-nez p7, :cond_2

    .line 2640
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 2643
    :goto_0
    array-length v10, v9

    .line 2644
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v10, :cond_1

    .line 2645
    aget-object v0, v9, v8

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v7}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/io/Writer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    .line 2644
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 2647
    :cond_1
    return-void

    :cond_2
    move-object/from16 v7, p7

    goto :goto_0
.end method

.method public printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2667
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/DateTimePrinter;

    .line 2668
    if-nez v1, :cond_0

    .line 2669
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2672
    :cond_0
    if-nez p3, :cond_1

    .line 2674
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 2677
    :cond_1
    array-length v2, v1

    .line 2678
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 2679
    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V

    .line 2678
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2681
    :cond_2
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 11

    .prologue
    .line 2614
    iget-object v9, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/DateTimePrinter;

    .line 2615
    if-nez v9, :cond_0

    .line 2616
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2619
    :cond_0
    if-nez p7, :cond_2

    .line 2621
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 2624
    :goto_0
    array-length v10, v9

    .line 2625
    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v10, :cond_1

    .line 2626
    aget-object v0, v9, v8

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v7}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    .line 2625
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    .line 2628
    :cond_1
    return-void

    :cond_2
    move-object/from16 v7, p7

    goto :goto_0
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 4

    .prologue
    .line 2650
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$Composite;->iPrinters:[Lorg/joda/time/format/DateTimePrinter;

    .line 2651
    if-nez v1, :cond_0

    .line 2652
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2655
    :cond_0
    if-nez p3, :cond_1

    .line 2657
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 2660
    :cond_1
    array-length v2, v1

    .line 2661
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 2662
    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2, p3}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V

    .line 2661
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2664
    :cond_2
    return-void
.end method

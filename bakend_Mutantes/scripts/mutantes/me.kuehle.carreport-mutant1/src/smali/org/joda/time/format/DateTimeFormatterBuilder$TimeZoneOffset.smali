.class Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;
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
    name = "TimeZoneOffset"
.end annotation


# instance fields
.field private final iMaxFields:I

.field private final iMinFields:I

.field private final iShowSeparators:Z

.field private final iZeroOffsetParseText:Ljava/lang/String;

.field private final iZeroOffsetPrintText:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 2083
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2084
    iput-object p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    .line 2085
    iput-object p2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    .line 2086
    iput-boolean p3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    .line 2087
    if-lez p4, :cond_0

    if-ge p5, p4, :cond_1

    .line 2088
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2090
    :cond_1
    if-le p4, v0, :cond_2

    move p5, v0

    .line 2094
    :goto_0
    iput v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    .line 2095
    iput p5, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    .line 2096
    return-void

    :cond_2
    move v0, p4

    goto :goto_0
.end method

.method private digitCount(Ljava/lang/String;II)I
    .locals 4

    .prologue
    .line 2415
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2416
    const/4 v1, 0x0

    .line 2417
    :goto_0
    if-lez v0, :cond_0

    .line 2418
    add-int v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2419
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-le v2, v3, :cond_1

    .line 2424
    :cond_0
    return v1

    .line 2422
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 2417
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .prologue
    .line 2236
    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->estimatePrintedLength()I

    move-result v0

    return v0
.end method

.method public estimatePrintedLength()I
    .locals 2

    .prologue
    .line 2099
    iget v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x1

    .line 2100
    iget-boolean v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz v1, :cond_0

    .line 2101
    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 2103
    :cond_0
    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 2104
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2106
    :cond_1
    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I
    .locals 10

    .prologue
    const/16 v9, 0x2d

    const/16 v7, 0x2b

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v8, 0x2

    .line 2240
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v6, v0, p3

    .line 2243
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2244
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 2246
    if-lez v6, :cond_1

    .line 2247
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2248
    if-eq v0, v9, :cond_0

    if-ne v0, v7, :cond_1

    .line 2263
    :cond_0
    if-gt v6, v1, :cond_3

    .line 2264
    xor-int/lit8 p3, p3, -0x1

    .line 2407
    :goto_0
    return p3

    .line 2252
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/format/DateTimeParserBucket;->setOffset(Ljava/lang/Integer;)V

    goto :goto_0

    .line 2255
    :cond_2
    iget-object v3, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p2

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2256
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/format/DateTimeParserBucket;->setOffset(Ljava/lang/Integer;)V

    .line 2257
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetParseText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p3, v0

    goto :goto_0

    .line 2268
    :cond_3
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2269
    if-ne v0, v9, :cond_4

    move v0, v1

    .line 2277
    :goto_1
    add-int/lit8 v2, v6, -0x1

    .line 2278
    add-int/lit8 v3, p3, 0x1

    .line 2292
    invoke-direct {p0, p2, v3, v8}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/String;II)I

    move-result v5

    if-ge v5, v8, :cond_6

    .line 2294
    xor-int/lit8 p3, v3, -0x1

    goto :goto_0

    .line 2271
    :cond_4
    if-ne v0, v7, :cond_5

    move v0, v4

    .line 2272
    goto :goto_1

    .line 2274
    :cond_5
    xor-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 2299
    :cond_6
    invoke-static {p2, v3}, Lorg/joda/time/format/FormatUtils;->parseTwoDigits(Ljava/lang/String;I)I

    move-result v5

    .line 2300
    const/16 v6, 0x17

    if-le v5, v6, :cond_7

    .line 2301
    xor-int/lit8 p3, v3, -0x1

    goto :goto_0

    .line 2303
    :cond_7
    const v6, 0x36ee80

    mul-int/2addr v5, v6

    .line 2304
    add-int/lit8 v2, v2, -0x2

    .line 2305
    add-int/lit8 v3, v3, 0x2

    .line 2311
    if-gtz v2, :cond_9

    move v1, v5

    move p3, v3

    .line 2406
    :cond_8
    :goto_2
    if-eqz v0, :cond_1b

    neg-int v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/joda/time/format/DateTimeParserBucket;->setOffset(Ljava/lang/Integer;)V

    goto :goto_0

    .line 2316
    :cond_9
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2317
    const/16 v7, 0x3a

    if-ne v6, v7, :cond_b

    .line 2319
    add-int/lit8 v2, v2, -0x1

    .line 2320
    add-int/lit8 v3, v3, 0x1

    move v4, v1

    .line 2329
    :cond_a
    invoke-direct {p0, p2, v3, v8}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/String;II)I

    move-result v6

    .line 2330
    if-nez v6, :cond_d

    if-nez v4, :cond_d

    move v1, v5

    move p3, v3

    .line 2331
    goto :goto_2

    .line 2321
    :cond_b
    const/16 v7, 0x30

    if-lt v6, v7, :cond_c

    const/16 v7, 0x39

    if-le v6, v7, :cond_a

    :cond_c
    move v1, v5

    move p3, v3

    goto :goto_2

    .line 2332
    :cond_d
    if-ge v6, v8, :cond_e

    .line 2334
    xor-int/lit8 p3, v3, -0x1

    goto/16 :goto_0

    .line 2337
    :cond_e
    invoke-static {p2, v3}, Lorg/joda/time/format/FormatUtils;->parseTwoDigits(Ljava/lang/String;I)I

    move-result v6

    .line 2338
    const/16 v7, 0x3b

    if-le v6, v7, :cond_f

    .line 2339
    xor-int/lit8 p3, v3, -0x1

    goto/16 :goto_0

    .line 2341
    :cond_f
    const v7, 0xea60

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 2342
    add-int/lit8 v2, v2, -0x2

    .line 2343
    add-int/lit8 v3, v3, 0x2

    .line 2347
    if-gtz v2, :cond_10

    move v1, v5

    move p3, v3

    .line 2348
    goto :goto_2

    .line 2351
    :cond_10
    if-eqz v4, :cond_12

    .line 2352
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_11

    move v1, v5

    move p3, v3

    .line 2353
    goto :goto_2

    .line 2355
    :cond_11
    add-int/lit8 v2, v2, -0x1

    .line 2356
    add-int/lit8 v3, v3, 0x1

    .line 2359
    :cond_12
    invoke-direct {p0, p2, v3, v8}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/String;II)I

    move-result v6

    .line 2360
    if-nez v6, :cond_13

    if-nez v4, :cond_13

    move v1, v5

    move p3, v3

    .line 2361
    goto :goto_2

    .line 2362
    :cond_13
    if-ge v6, v8, :cond_14

    .line 2364
    xor-int/lit8 p3, v3, -0x1

    goto/16 :goto_0

    .line 2367
    :cond_14
    invoke-static {p2, v3}, Lorg/joda/time/format/FormatUtils;->parseTwoDigits(Ljava/lang/String;I)I

    move-result v6

    .line 2368
    const/16 v7, 0x3b

    if-le v6, v7, :cond_15

    .line 2369
    xor-int/lit8 p3, v3, -0x1

    goto/16 :goto_0

    .line 2371
    :cond_15
    mul-int/lit16 v6, v6, 0x3e8

    add-int/2addr v5, v6

    .line 2372
    add-int/lit8 v6, v2, -0x2

    .line 2373
    add-int/lit8 v2, v3, 0x2

    .line 2377
    if-gtz v6, :cond_16

    move v1, v5

    move p3, v2

    .line 2378
    goto/16 :goto_2

    .line 2381
    :cond_16
    if-eqz v4, :cond_18

    .line 2382
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x2e

    if-eq v3, v7, :cond_17

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x2c

    if-eq v3, v7, :cond_17

    move v1, v5

    move p3, v2

    .line 2383
    goto/16 :goto_2

    .line 2385
    :cond_17
    add-int/lit8 v3, v6, -0x1

    .line 2386
    add-int/lit8 v2, v2, 0x1

    .line 2389
    :cond_18
    const/4 v3, 0x3

    invoke-direct {p0, p2, v2, v3}, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->digitCount(Ljava/lang/String;II)I

    move-result v6

    .line 2390
    if-nez v6, :cond_19

    if-nez v4, :cond_19

    move v1, v5

    move p3, v2

    .line 2391
    goto/16 :goto_2

    .line 2392
    :cond_19
    if-ge v6, v1, :cond_1a

    .line 2394
    xor-int/lit8 p3, v2, -0x1

    goto/16 :goto_0

    .line 2397
    :cond_1a
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v2, v5

    .line 2398
    if-le v6, v1, :cond_1c

    .line 2399
    add-int/lit8 p3, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v2

    .line 2400
    if-le v6, v8, :cond_8

    .line 2401
    add-int/lit8 v3, p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    move p3, v3

    goto/16 :goto_2

    :cond_1b
    move v0, v1

    .line 2406
    goto/16 :goto_3

    :cond_1c
    move v1, v2

    move p3, v3

    goto/16 :goto_2
.end method

.method public printTo(Ljava/io/Writer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v6, 0xea60

    const/16 v5, 0x3a

    const/4 v2, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 2171
    if-nez p6, :cond_1

    .line 2225
    :cond_0
    :goto_0
    return-void

    .line 2174
    :cond_1
    if-nez p5, :cond_2

    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2175
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 2178
    :cond_2
    if-ltz p5, :cond_9

    .line 2179
    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 2185
    :goto_1
    const v0, 0x36ee80

    div-int v0, p5, v0

    .line 2186
    invoke-static {p1, v0, v3}, Lorg/joda/time/format/FormatUtils;->writePaddedInteger(Ljava/io/Writer;II)V

    .line 2187
    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    if-eq v1, v2, :cond_0

    .line 2190
    const v1, 0x36ee80

    mul-int/2addr v0, v1

    sub-int v0, p5, v0

    .line 2191
    if-nez v0, :cond_3

    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-eq v1, v2, :cond_0

    .line 2195
    :cond_3
    div-int v1, v0, v6

    .line 2196
    iget-boolean v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz v2, :cond_4

    .line 2197
    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 2199
    :cond_4
    invoke-static {p1, v1, v3}, Lorg/joda/time/format/FormatUtils;->writePaddedInteger(Ljava/io/Writer;II)V

    .line 2200
    iget v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    if-eq v2, v3, :cond_0

    .line 2203
    mul-int/2addr v1, v6

    sub-int/2addr v0, v1

    .line 2204
    if-nez v0, :cond_5

    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-eq v1, v3, :cond_0

    .line 2208
    :cond_5
    div-int/lit16 v1, v0, 0x3e8

    .line 2209
    iget-boolean v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz v2, :cond_6

    .line 2210
    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 2212
    :cond_6
    invoke-static {p1, v1, v3}, Lorg/joda/time/format/FormatUtils;->writePaddedInteger(Ljava/io/Writer;II)V

    .line 2213
    iget v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    if-eq v2, v4, :cond_0

    .line 2216
    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v0, v1

    .line 2217
    if-nez v0, :cond_7

    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-eq v1, v4, :cond_0

    .line 2221
    :cond_7
    iget-boolean v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz v1, :cond_8

    .line 2222
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 2224
    :cond_8
    invoke-static {p1, v0, v4}, Lorg/joda/time/format/FormatUtils;->writePaddedInteger(Ljava/io/Writer;II)V

    goto :goto_0

    .line 2181
    :cond_9
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 2182
    neg-int p5, p5

    goto :goto_1
.end method

.method public printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2233
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 7

    .prologue
    const v6, 0xea60

    const/16 v5, 0x3a

    const/4 v2, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 2112
    if-nez p6, :cond_1

    .line 2166
    :cond_0
    :goto_0
    return-void

    .line 2115
    :cond_1
    if-nez p5, :cond_2

    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2116
    iget-object v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iZeroOffsetPrintText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2119
    :cond_2
    if-ltz p5, :cond_9

    .line 2120
    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2126
    :goto_1
    const v0, 0x36ee80

    div-int v0, p5, v0

    .line 2127
    invoke-static {p1, v0, v3}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    .line 2128
    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    if-eq v1, v2, :cond_0

    .line 2131
    const v1, 0x36ee80

    mul-int/2addr v0, v1

    sub-int v0, p5, v0

    .line 2132
    if-nez v0, :cond_3

    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-le v1, v2, :cond_0

    .line 2136
    :cond_3
    div-int v1, v0, v6

    .line 2137
    iget-boolean v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz v2, :cond_4

    .line 2138
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2140
    :cond_4
    invoke-static {p1, v1, v3}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    .line 2141
    iget v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    if-eq v2, v3, :cond_0

    .line 2144
    mul-int/2addr v1, v6

    sub-int/2addr v0, v1

    .line 2145
    if-nez v0, :cond_5

    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-le v1, v3, :cond_0

    .line 2149
    :cond_5
    div-int/lit16 v1, v0, 0x3e8

    .line 2150
    iget-boolean v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz v2, :cond_6

    .line 2151
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2153
    :cond_6
    invoke-static {p1, v1, v3}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    .line 2154
    iget v2, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMaxFields:I

    if-eq v2, v4, :cond_0

    .line 2157
    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v0, v1

    .line 2158
    if-nez v0, :cond_7

    iget v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iMinFields:I

    if-le v1, v4, :cond_0

    .line 2162
    :cond_7
    iget-boolean v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$TimeZoneOffset;->iShowSeparators:Z

    if-eqz v1, :cond_8

    .line 2163
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2165
    :cond_8
    invoke-static {p1, v0, v4}, Lorg/joda/time/format/FormatUtils;->appendPaddedInteger(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    .line 2122
    :cond_9
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2123
    neg-int p5, p5

    goto :goto_1
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 2229
    return-void
.end method

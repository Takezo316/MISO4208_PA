.class Lorg/joda/time/format/DateTimeFormat$StyleFormatter;
.super Ljava/lang/Object;
.source "DateTimeFormat.java"

# interfaces
.implements Lorg/joda/time/format/DateTimePrinter;
.implements Lorg/joda/time/format/DateTimeParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StyleFormatter"
.end annotation


# static fields
.field private static final cCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/format/DateTimeFormatter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final iDateStyle:I

.field private final iTimeStyle:I

.field private final iType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 767
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->cCache:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    .prologue
    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    iput p1, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iDateStyle:I

    .line 776
    iput p2, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iTimeStyle:I

    .line 777
    iput p3, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iType:I

    .line 778
    return-void
.end method

.method private getFormatter(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;
    .locals 4

    .prologue
    .line 818
    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 819
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iType:I

    iget v2, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iDateStyle:I

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    iget v2, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iTimeStyle:I

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 821
    sget-object v2, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->cCache:Ljava/util/Map;

    monitor-enter v2

    .line 822
    :try_start_0
    sget-object v0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->cCache:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/format/DateTimeFormatter;

    .line 823
    if-nez v0, :cond_1

    .line 824
    invoke-virtual {p0, p1}, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->getPattern(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 825
    invoke-static {v0}, Lorg/joda/time/format/DateTimeFormat;->forPattern(Ljava/lang/String;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    .line 826
    sget-object v3, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->cCache:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    :cond_1
    monitor-exit v2

    .line 829
    return-object v0

    .line 828
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .prologue
    .line 809
    const/16 v0, 0x28

    return v0
.end method

.method public estimatePrintedLength()I
    .locals 1

    .prologue
    .line 781
    const/16 v0, 0x28

    return v0
.end method

.method getPattern(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 833
    const/4 v0, 0x0

    .line 834
    iget v1, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iType:I

    packed-switch v1, :pswitch_data_0

    .line 845
    :goto_0
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-nez v1, :cond_0

    .line 846
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No datetime pattern for locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :pswitch_0
    iget v0, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iDateStyle:I

    invoke-static {v0, p1}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_0

    .line 839
    :pswitch_1
    iget v0, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iTimeStyle:I

    invoke-static {v0, p1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_0

    .line 842
    :pswitch_2
    iget v0, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iDateStyle:I

    iget v1, p0, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->iTimeStyle:I

    invoke-static {v0, v1, p1}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_0

    .line 848
    :cond_0
    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 813
    invoke-virtual {p1}, Lorg/joda/time/format/DateTimeParserBucket;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->getFormatter(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->getParser()Lorg/joda/time/format/DateTimeParser;

    move-result-object v0

    .line 814
    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/DateTimeParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public printTo(Ljava/io/Writer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 794
    invoke-direct {p0, p7}, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->getFormatter(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->getPrinter()Lorg/joda/time/format/DateTimePrinter;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 795
    invoke-interface/range {v0 .. v7}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/io/Writer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    .line 796
    return-void
.end method

.method public printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 804
    invoke-direct {p0, p3}, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->getFormatter(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->getPrinter()Lorg/joda/time/format/DateTimePrinter;

    move-result-object v0

    .line 805
    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/io/Writer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V

    .line 806
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 8

    .prologue
    .line 787
    invoke-direct {p0, p7}, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->getFormatter(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->getPrinter()Lorg/joda/time/format/DateTimePrinter;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 788
    invoke-interface/range {v0 .. v7}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V

    .line 789
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 799
    invoke-direct {p0, p3}, Lorg/joda/time/format/DateTimeFormat$StyleFormatter;->getFormatter(Ljava/util/Locale;)Lorg/joda/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/format/DateTimeFormatter;->getPrinter()Lorg/joda/time/format/DateTimePrinter;

    move-result-object v0

    .line 800
    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/DateTimePrinter;->printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V

    .line 801
    return-void
.end method

.class Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;
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
    name = "CharacterLiteral"
.end annotation


# instance fields
.field private final iValue:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .prologue
    .line 1169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1170
    iput-char p1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;->iValue:C

    .line 1171
    return-void
.end method


# virtual methods
.method public estimateParsedLength()I
    .locals 1

    .prologue
    .line 1198
    const/4 v0, 0x1

    return v0
.end method

.method public estimatePrintedLength()I
    .locals 1

    .prologue
    .line 1174
    const/4 v0, 0x1

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I
    .locals 2

    .prologue
    .line 1202
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p3, v0, :cond_0

    .line 1203
    xor-int/lit8 v0, p3, -0x1

    .line 1221
    :goto_0
    return v0

    .line 1206
    :cond_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1207
    iget-char v1, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;->iValue:C

    .line 1209
    if-eq v0, v1, :cond_1

    .line 1210
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 1211
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 1212
    if-eq v0, v1, :cond_1

    .line 1213
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 1214
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 1215
    if-eq v0, v1, :cond_1

    .line 1216
    xor-int/lit8 v0, p3, -0x1

    goto :goto_0

    .line 1221
    :cond_1
    add-int/lit8 v0, p3, 0x1

    goto :goto_0
.end method

.method public printTo(Ljava/io/Writer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1186
    iget-char v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;->iValue:C

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1187
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
    .line 1194
    iget-char v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;->iValue:C

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 1195
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;JLorg/joda/time/Chronology;ILorg/joda/time/DateTimeZone;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 1180
    iget-char v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;->iValue:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1181
    return-void
.end method

.method public printTo(Ljava/lang/StringBuffer;Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 1190
    iget-char v0, p0, Lorg/joda/time/format/DateTimeFormatterBuilder$CharacterLiteral;->iValue:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1191
    return-void
.end method

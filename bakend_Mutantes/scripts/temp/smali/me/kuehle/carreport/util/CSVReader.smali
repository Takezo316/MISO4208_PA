.class public Lme/kuehle/carreport/util/CSVReader;
.super Ljava/lang/Object;
.source "CSVReader.java"


# static fields
.field private static final ESCAPE:C = '\\'

.field private static final NEW_LINE:C = '\n'

.field private static final QUOTE:C = '\"'

.field private static final SEPARATOR:C


# instance fields
.field private data:[[Ljava/lang/String;

.field private header:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "locale":Ljava/lang/String;
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    const/16 v1, 0x3b

    sput-char v1, Lme/kuehle/carreport/util/CSVReader;->SEPARATOR:C

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    const/16 v1, 0x2c

    sput-char v1, Lme/kuehle/carreport/util/CSVReader;->SEPARATOR:C

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lme/kuehle/carreport/util/CSVReader;-><init>(Ljava/lang/String;Z)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 11
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "hasHeader"    # Z

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "rows":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v2, "dataRows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 76
    .local v3, "maxColumnCount":I
    const/4 v5, 0x0

    .local v5, "r":I
    :goto_0
    array-length v8, v7

    if-ge v5, v8, :cond_2

    .line 77
    aget-object v8, v7, v5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 76
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 81
    :cond_0
    aget-object v8, v7, v5

    const/4 v9, 0x1

    aget-object v10, v7, v5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x22

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-char v10, Lme/kuehle/carreport/util/CSVReader;->SEPARATOR:C

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x22

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "cols":[Ljava/lang/String;
    array-length v8, v1

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 85
    array-length v8, v1

    new-array v6, v8, [Ljava/lang/String;

    .line 86
    .local v6, "row":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_2
    array-length v8, v1

    if-ge v0, v8, :cond_1

    .line 87
    aget-object v8, v1, v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x5c

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x22

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x22

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    aget-object v8, v1, v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x5c

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5c

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x5c

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    aget-object v8, v1, v0

    aput-object v8, v6, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 97
    :cond_1
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 101
    .end local v0    # "c":I
    .end local v1    # "cols":[Ljava/lang/String;
    .end local v6    # "row":[Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 102
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 103
    .restart local v6    # "row":[Ljava/lang/String;
    array-length v8, v6

    if-ge v8, v3, :cond_3

    .line 104
    new-array v4, v3, [Ljava/lang/String;

    .line 105
    .local v4, "newRow":[Ljava/lang/String;
    const-string v8, ""

    invoke-static {v4, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v6

    invoke-static {v6, v8, v4, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    invoke-virtual {v2, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 101
    .end local v4    # "newRow":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 111
    .end local v6    # "row":[Ljava/lang/String;
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 112
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    iput-object v8, p0, Lme/kuehle/carreport/util/CSVReader;->header:[Ljava/lang/String;

    .line 113
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 118
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [[Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Ljava/lang/String;

    iput-object v8, p0, Lme/kuehle/carreport/util/CSVReader;->data:[[Ljava/lang/String;

    .line 119
    return-void

    .line 115
    :cond_5
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    iput-object v8, p0, Lme/kuehle/carreport/util/CSVReader;->header:[Ljava/lang/String;

    goto :goto_4
.end method

.method public static fromFile(Ljava/io/File;Z)Lme/kuehle/carreport/util/CSVReader;
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "hasHeader"    # Z

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v0, "data":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 52
    .local v1, "in":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 56
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 60
    :goto_1
    new-instance v3, Lme/kuehle/carreport/util/CSVReader;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lme/kuehle/carreport/util/CSVReader;-><init>(Ljava/lang/String;Z)V

    return-object v3

    .line 55
    .restart local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 57
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private parseDate(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/text/DateFormat;

    .prologue
    .line 181
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 183
    :goto_0
    return-object v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseFloat(Ljava/lang/String;)F
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 189
    :try_start_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 190
    .local v1, "floatFormat":Ljava/text/NumberFormat;
    invoke-virtual {v1, p1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 192
    .end local v1    # "floatFormat":Ljava/text/NumberFormat;
    :goto_0
    return v2

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 198
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 200
    :goto_0
    return v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 206
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 208
    :goto_0
    return-wide v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getColumnCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 122
    iget-object v1, p0, Lme/kuehle/carreport/util/CSVReader;->data:[[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lme/kuehle/carreport/util/CSVReader;->data:[[Ljava/lang/String;

    aget-object v0, v1, v0

    array-length v0, v0

    :cond_0
    return v0
.end method

.method public getData()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lme/kuehle/carreport/util/CSVReader;->data:[[Ljava/lang/String;

    return-object v0
.end method

.method public getDate(IILjava/text/DateFormat;)Ljava/util/Date;
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "format"    # Ljava/text/DateFormat;

    .prologue
    .line 148
    invoke-virtual {p0, p1, p2}, Lme/kuehle/carreport/util/CSVReader;->getString(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lme/kuehle/carreport/util/CSVReader;->parseDate(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDate(ILjava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;
    .locals 1
    .param p1, "row"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/text/DateFormat;

    .prologue
    .line 152
    invoke-virtual {p0, p1, p2}, Lme/kuehle/carreport/util/CSVReader;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lme/kuehle/carreport/util/CSVReader;->parseDate(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(II)F
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 156
    invoke-virtual {p0, p1, p2}, Lme/kuehle/carreport/util/CSVReader;->getString(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/kuehle/carreport/util/CSVReader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getFloat(ILjava/lang/String;)F
    .locals 1
    .param p1, "row"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p0, p1, p2}, Lme/kuehle/carreport/util/CSVReader;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/kuehle/carreport/util/CSVReader;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getInt(II)I
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 164
    invoke-virtual {p0, p1, p2}, Lme/kuehle/carreport/util/CSVReader;->getString(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/kuehle/carreport/util/CSVReader;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInt(ILjava/lang/String;)I
    .locals 1
    .param p1, "row"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-virtual {p0, p1, p2}, Lme/kuehle/carreport/util/CSVReader;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/kuehle/carreport/util/CSVReader;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLong(II)J
    .locals 2
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 172
    invoke-virtual {p0, p1, p2}, Lme/kuehle/carreport/util/CSVReader;->getString(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/kuehle/carreport/util/CSVReader;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(ILjava/lang/String;)J
    .locals 2
    .param p1, "row"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-virtual {p0, p1, p2}, Lme/kuehle/carreport/util/CSVReader;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/kuehle/carreport/util/CSVReader;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lme/kuehle/carreport/util/CSVReader;->data:[[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lme/kuehle/carreport/util/CSVReader;->data:[[Ljava/lang/String;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    return-object v0
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "row"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lme/kuehle/carreport/util/CSVReader;->header:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 139
    iget-object v1, p0, Lme/kuehle/carreport/util/CSVReader;->header:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p0, p1, v0}, Lme/kuehle/carreport/util/CSVReader;->getString(II)Ljava/lang/String;

    move-result-object v1

    .line 144
    :goto_1
    return-object v1

    .line 138
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

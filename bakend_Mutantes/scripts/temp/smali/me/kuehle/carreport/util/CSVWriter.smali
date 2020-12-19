.class public Lme/kuehle/carreport/util/CSVWriter;
.super Ljava/lang/Object;
.source "CSVWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;
    }
.end annotation


# static fields
.field private static final ESCAPE:C = '\\'

.field private static final NEW_LINE:C = '\n'

.field private static final QUOTE:C = '\"'

.field private static final SEPARATOR:C


# instance fields
.field private data:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 60
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

    .line 62
    .local v0, "locale":Ljava/lang/String;
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const/16 v1, 0x3b

    sput-char v1, Lme/kuehle/carreport/util/CSVWriter;->SEPARATOR:C

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    const/16 v1, 0x2c

    sput-char v1, Lme/kuehle/carreport/util/CSVWriter;->SEPARATOR:C

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lme/kuehle/carreport/util/CSVWriter;->data:Ljava/lang/StringBuilder;

    .line 73
    return-void
.end method


# virtual methods
.method public toFile(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 133
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 134
    .local v0, "out":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lme/kuehle/carreport/util/CSVWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0    # "out":Ljava/io/PrintWriter;
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lme/kuehle/carreport/util/CSVWriter;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Landroid/database/Cursor;Landroid/util/SparseArray;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/util/SparseArray",
            "<",
            "Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "columnTypes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lme/kuehle/carreport/util/CSVWriter;->write(Landroid/database/Cursor;Landroid/util/SparseArray;Z)V

    .line 77
    return-void
.end method

.method public write(Landroid/database/Cursor;Landroid/util/SparseArray;Z)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p3, "includeHeader"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/util/SparseArray",
            "<",
            "Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "columnTypes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;>;"
    if-eqz p3, :cond_0

    .line 82
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lme/kuehle/carreport/util/CSVWriter;->writeLine([Ljava/lang/String;)V

    .line 85
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 86
    .local v0, "floatFormat":Ljava/text/NumberFormat;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 87
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_5

    .line 88
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 89
    if-eqz v1, :cond_1

    .line 90
    iget-object v2, p0, Lme/kuehle/carreport/util/CSVWriter;->data:Ljava/lang/StringBuilder;

    sget-char v3, Lme/kuehle/carreport/util/CSVWriter;->SEPARATOR:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    :cond_1
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 94
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lme/kuehle/carreport/util/CSVWriter;->writeColumn(Ljava/lang/String;)V

    .line 88
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 95
    :cond_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 96
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lme/kuehle/carreport/util/CSVWriter;->writeColumn(Ljava/lang/String;)V

    goto :goto_2

    .line 98
    :cond_3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lme/kuehle/carreport/util/CSVWriter;->writeColumn(Ljava/lang/String;)V

    goto :goto_2

    .line 101
    :cond_4
    iget-object v2, p0, Lme/kuehle/carreport/util/CSVWriter;->data:Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 104
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method public writeColumn(Ljava/lang/String;)V
    .locals 5
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x5c

    const/16 v3, 0x22

    .line 117
    iget-object v2, p0, Lme/kuehle/carreport/util/CSVWriter;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    if-eqz p1, :cond_3

    .line 119
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 121
    .local v1, "nextChar":C
    if-eq v1, v3, :cond_0

    if-ne v1, v4, :cond_2

    .line 122
    :cond_0
    iget-object v2, p0, Lme/kuehle/carreport/util/CSVWriter;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_2
    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 124
    iget-object v2, p0, Lme/kuehle/carreport/util/CSVWriter;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 128
    .end local v0    # "j":I
    .end local v1    # "nextChar":C
    :cond_3
    iget-object v2, p0, Lme/kuehle/carreport/util/CSVWriter;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    return-void
.end method

.method public writeLine([Ljava/lang/String;)V
    .locals 3
    .param p1, "line"    # [Ljava/lang/String;

    .prologue
    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 108
    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lme/kuehle/carreport/util/CSVWriter;->data:Ljava/lang/StringBuilder;

    sget-char v2, Lme/kuehle/carreport/util/CSVWriter;->SEPARATOR:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lme/kuehle/carreport/util/CSVWriter;->writeColumn(Ljava/lang/String;)V

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    iget-object v1, p0, Lme/kuehle/carreport/util/CSVWriter;->data:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 114
    return-void
.end method

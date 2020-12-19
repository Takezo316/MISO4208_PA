.class public Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;
.super Ljava/lang/Object;
.source "CSVWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/util/CSVWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpecialColumnType"
.end annotation


# instance fields
.field private format:Ljava/text/Format;

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/text/Format;)V
    .locals 0
    .param p2, "format"    # Ljava/text/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/text/Format;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;->type:Ljava/lang/Class;

    .line 37
    iput-object p2, p0, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;->format:Ljava/text/Format;

    .line 38
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v2, p0, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;->type:Ljava/lang/Class;

    const-class v3, Ljava/util/Date;

    if-ne v2, v3, :cond_0

    .line 43
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 44
    .local v0, "date":Ljava/util/Date;
    iget-object v2, p0, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;->format:Ljava/text/Format;

    invoke-virtual {v2, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 49
    .end local v0    # "date":Ljava/util/Date;
    :goto_0
    return-object v2

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, ""

    goto :goto_0

    .line 49
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.class public final Lcom/dropbox/client2/jsonextract/JsonList$Extractor;
.super Lcom/dropbox/client2/jsonextract/JsonExtractor;
.source "JsonList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/jsonextract/JsonList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Extractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/client2/jsonextract/JsonExtractor",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field public final elementExtractor:Lcom/dropbox/client2/jsonextract/JsonExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/client2/jsonextract/JsonExtractor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/client2/jsonextract/JsonExtractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/client2/jsonextract/JsonExtractor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/dropbox/client2/jsonextract/JsonList$Extractor;, "Lcom/dropbox/client2/jsonextract/JsonList$Extractor<TT;>;"
    .local p1, "elementExtractor":Lcom/dropbox/client2/jsonextract/JsonExtractor;, "Lcom/dropbox/client2/jsonextract/JsonExtractor<TT;>;"
    invoke-direct {p0}, Lcom/dropbox/client2/jsonextract/JsonExtractor;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/dropbox/client2/jsonextract/JsonList$Extractor;->elementExtractor:Lcom/dropbox/client2/jsonextract/JsonExtractor;

    .line 69
    return-void
.end method


# virtual methods
.method public bridge synthetic extract(Lcom/dropbox/client2/jsonextract/JsonThing;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/dropbox/client2/jsonextract/JsonThing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/jsonextract/JsonExtractionException;
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/dropbox/client2/jsonextract/JsonList$Extractor;, "Lcom/dropbox/client2/jsonextract/JsonList$Extractor<TT;>;"
    invoke-virtual {p0, p1}, Lcom/dropbox/client2/jsonextract/JsonList$Extractor;->extract(Lcom/dropbox/client2/jsonextract/JsonThing;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public extract(Lcom/dropbox/client2/jsonextract/JsonThing;)Ljava/util/List;
    .locals 2
    .param p1, "jt"    # Lcom/dropbox/client2/jsonextract/JsonThing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/client2/jsonextract/JsonThing;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/jsonextract/JsonExtractionException;
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/dropbox/client2/jsonextract/JsonList$Extractor;, "Lcom/dropbox/client2/jsonextract/JsonList$Extractor<TT;>;"
    invoke-virtual {p1}, Lcom/dropbox/client2/jsonextract/JsonThing;->expectList()Lcom/dropbox/client2/jsonextract/JsonList;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/client2/jsonextract/JsonList$Extractor;->elementExtractor:Lcom/dropbox/client2/jsonextract/JsonExtractor;

    invoke-virtual {v0, v1}, Lcom/dropbox/client2/jsonextract/JsonList;->extract(Lcom/dropbox/client2/jsonextract/JsonExtractor;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

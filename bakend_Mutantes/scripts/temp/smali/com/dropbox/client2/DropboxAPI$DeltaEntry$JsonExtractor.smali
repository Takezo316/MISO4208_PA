.class public final Lcom/dropbox/client2/DropboxAPI$DeltaEntry$JsonExtractor;
.super Lcom/dropbox/client2/jsonextract/JsonExtractor;
.source "DropboxAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/DropboxAPI$DeltaEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonExtractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MD:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/client2/jsonextract/JsonExtractor",
        "<",
        "Lcom/dropbox/client2/DropboxAPI$DeltaEntry",
        "<TMD;>;>;"
    }
.end annotation


# instance fields
.field public final mdExtractor:Lcom/dropbox/client2/jsonextract/JsonExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/client2/jsonextract/JsonExtractor",
            "<TMD;>;"
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
            "<TMD;>;)V"
        }
    .end annotation

    .prologue
    .line 2357
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$DeltaEntry$JsonExtractor;, "Lcom/dropbox/client2/DropboxAPI$DeltaEntry$JsonExtractor<TMD;>;"
    .local p1, "mdExtractor":Lcom/dropbox/client2/jsonextract/JsonExtractor;, "Lcom/dropbox/client2/jsonextract/JsonExtractor<TMD;>;"
    invoke-direct {p0}, Lcom/dropbox/client2/jsonextract/JsonExtractor;-><init>()V

    .line 2358
    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI$DeltaEntry$JsonExtractor;->mdExtractor:Lcom/dropbox/client2/jsonextract/JsonExtractor;

    .line 2359
    return-void
.end method

.method public static extract(Lcom/dropbox/client2/jsonextract/JsonThing;Lcom/dropbox/client2/jsonextract/JsonExtractor;)Lcom/dropbox/client2/DropboxAPI$DeltaEntry;
    .locals 4
    .param p0, "j"    # Lcom/dropbox/client2/jsonextract/JsonThing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MD:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/client2/jsonextract/JsonThing;",
            "Lcom/dropbox/client2/jsonextract/JsonExtractor",
            "<TMD;>;)",
            "Lcom/dropbox/client2/DropboxAPI$DeltaEntry",
            "<TMD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/jsonextract/JsonExtractionException;
        }
    .end annotation

    .prologue
    .line 2366
    .local p1, "mdExtractor":Lcom/dropbox/client2/jsonextract/JsonExtractor;, "Lcom/dropbox/client2/jsonextract/JsonExtractor<TMD;>;"
    invoke-virtual {p0}, Lcom/dropbox/client2/jsonextract/JsonThing;->expectList()Lcom/dropbox/client2/jsonextract/JsonList;

    move-result-object v0

    .line 2367
    .local v0, "l":Lcom/dropbox/client2/jsonextract/JsonList;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/dropbox/client2/jsonextract/JsonList;->get(I)Lcom/dropbox/client2/jsonextract/JsonThing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/client2/jsonextract/JsonThing;->expectString()Ljava/lang/String;

    move-result-object v2

    .line 2368
    .local v2, "path":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/dropbox/client2/jsonextract/JsonList;->get(I)Lcom/dropbox/client2/jsonextract/JsonThing;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/dropbox/client2/jsonextract/JsonThing;->optionalExtract(Lcom/dropbox/client2/jsonextract/JsonExtractor;)Ljava/lang/Object;

    move-result-object v1

    .line 2369
    .local v1, "metadata":Ljava/lang/Object;, "TMD;"
    new-instance v3, Lcom/dropbox/client2/DropboxAPI$DeltaEntry;

    invoke-direct {v3, v2, v1}, Lcom/dropbox/client2/DropboxAPI$DeltaEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3
.end method


# virtual methods
.method public extract(Lcom/dropbox/client2/jsonextract/JsonThing;)Lcom/dropbox/client2/DropboxAPI$DeltaEntry;
    .locals 1
    .param p1, "j"    # Lcom/dropbox/client2/jsonextract/JsonThing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/client2/jsonextract/JsonThing;",
            ")",
            "Lcom/dropbox/client2/DropboxAPI$DeltaEntry",
            "<TMD;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/jsonextract/JsonExtractionException;
        }
    .end annotation

    .prologue
    .line 2362
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$DeltaEntry$JsonExtractor;, "Lcom/dropbox/client2/DropboxAPI$DeltaEntry$JsonExtractor<TMD;>;"
    iget-object v0, p0, Lcom/dropbox/client2/DropboxAPI$DeltaEntry$JsonExtractor;->mdExtractor:Lcom/dropbox/client2/jsonextract/JsonExtractor;

    invoke-static {p1, v0}, Lcom/dropbox/client2/DropboxAPI$DeltaEntry$JsonExtractor;->extract(Lcom/dropbox/client2/jsonextract/JsonThing;Lcom/dropbox/client2/jsonextract/JsonExtractor;)Lcom/dropbox/client2/DropboxAPI$DeltaEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic extract(Lcom/dropbox/client2/jsonextract/JsonThing;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/dropbox/client2/jsonextract/JsonThing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/jsonextract/JsonExtractionException;
        }
    .end annotation

    .prologue
    .line 2354
    .local p0, "this":Lcom/dropbox/client2/DropboxAPI$DeltaEntry$JsonExtractor;, "Lcom/dropbox/client2/DropboxAPI$DeltaEntry$JsonExtractor<TMD;>;"
    invoke-virtual {p0, p1}, Lcom/dropbox/client2/DropboxAPI$DeltaEntry$JsonExtractor;->extract(Lcom/dropbox/client2/jsonextract/JsonThing;)Lcom/dropbox/client2/DropboxAPI$DeltaEntry;

    move-result-object v0

    return-object v0
.end method

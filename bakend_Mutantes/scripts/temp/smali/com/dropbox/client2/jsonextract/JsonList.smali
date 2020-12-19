.class public final Lcom/dropbox/client2/jsonextract/JsonList;
.super Lcom/dropbox/client2/jsonextract/JsonBase;
.source "JsonList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/client2/jsonextract/JsonList$1;,
        Lcom/dropbox/client2/jsonextract/JsonList$Extractor;,
        Lcom/dropbox/client2/jsonextract/JsonList$WrapperIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/client2/jsonextract/JsonBase",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/Object;",
        ">;>;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/dropbox/client2/jsonextract/JsonThing;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
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
    .line 19
    .local p1, "internal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/dropbox/client2/jsonextract/JsonBase;-><init>(Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "internal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/jsonextract/JsonBase;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .prologue
    .line 12
    invoke-static {p0, p1}, Lcom/dropbox/client2/jsonextract/JsonList;->pathConcatIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static pathConcatIndex(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->pathConcat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/dropbox/client2/jsonextract/JsonBase;->error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;

    move-result-object v0

    return-object v0
.end method

.method public expectLength(I)V
    .locals 2
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/jsonextract/JsonExtractionException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonList;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expecting array to have length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", but it has length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonList;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonList;->error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;

    move-result-object v0

    throw v0

    .line 37
    :cond_0
    return-void
.end method

.method public extract(Lcom/dropbox/client2/jsonextract/JsonExtractor;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/client2/jsonextract/JsonExtractor",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/jsonextract/JsonExtractionException;
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "elementExtractor":Lcom/dropbox/client2/jsonextract/JsonExtractor;, "Lcom/dropbox/client2/jsonextract/JsonExtractor<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/dropbox/client2/jsonextract/JsonList;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v3, p0, Lcom/dropbox/client2/jsonextract/JsonList;->internal:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 79
    .local v1, "o":Ljava/lang/Object;
    new-instance v3, Lcom/dropbox/client2/jsonextract/JsonThing;

    invoke-direct {v3, v1}, Lcom/dropbox/client2/jsonextract/JsonThing;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Lcom/dropbox/client2/jsonextract/JsonExtractor;->extract(Lcom/dropbox/client2/jsonextract/JsonThing;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

.method public get(I)Lcom/dropbox/client2/jsonextract/JsonThing;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/jsonextract/JsonExtractionException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonList;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expecting array to have an element at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", but it only has length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonList;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonList;->error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;

    move-result-object v0

    throw v0

    .line 30
    :cond_0
    new-instance v1, Lcom/dropbox/client2/jsonextract/JsonThing;

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonList;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/dropbox/client2/jsonextract/JsonList;->path:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/dropbox/client2/jsonextract/JsonList;->pathConcatIndex(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dropbox/client2/jsonextract/JsonThing;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dropbox/client2/jsonextract/JsonThing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Lcom/dropbox/client2/jsonextract/JsonList$WrapperIterator;

    iget-object v2, p0, Lcom/dropbox/client2/jsonextract/JsonList;->path:Ljava/lang/String;

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonList;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dropbox/client2/jsonextract/JsonList$WrapperIterator;-><init>(Ljava/lang/String;Ljava/util/Iterator;Lcom/dropbox/client2/jsonextract/JsonList$1;)V

    return-object v1
.end method

.method public length()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonList;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

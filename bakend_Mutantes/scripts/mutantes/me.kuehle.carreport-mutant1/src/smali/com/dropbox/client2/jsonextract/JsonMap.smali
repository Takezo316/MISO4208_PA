.class public final Lcom/dropbox/client2/jsonextract/JsonMap;
.super Lcom/dropbox/client2/jsonextract/JsonBase;
.source "JsonMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/client2/jsonextract/JsonMap$1;,
        Lcom/dropbox/client2/jsonextract/JsonMap$WrappedEntry;,
        Lcom/dropbox/client2/jsonextract/JsonMap$WrapperIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/client2/jsonextract/JsonBase",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Lcom/dropbox/client2/jsonextract/JsonThing;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "internal":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/dropbox/client2/jsonextract/JsonBase;-><init>(Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "internal":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/jsonextract/JsonBase;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {p0, p1}, Lcom/dropbox/client2/jsonextract/JsonMap;->pathConcatField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isEnglishDigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 36
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEnglishLetter(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 32
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isIdentLike(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 28
    :cond_0
    :goto_0
    return v2

    .line 23
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/dropbox/client2/jsonextract/JsonMap;->isEnglishLetter(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 25
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 26
    .local v0, "c":C
    invoke-static {v0}, Lcom/dropbox/client2/jsonextract/JsonMap;->isEnglishLetter(C)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/dropbox/client2/jsonextract/JsonMap;->isEnglishDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 28
    .end local v0    # "c":C
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static pathConcatField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    .line 40
    move-object v0, p1

    .line 41
    .local v0, "suffix":Ljava/lang/String;
    invoke-static {p1}, Lcom/dropbox/client2/jsonextract/JsonMap;->isIdentLike(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_0
    invoke-static {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->pathConcat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/dropbox/client2/jsonextract/JsonBase;->error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonThing;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/jsonextract/JsonExtractionException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonMap;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expecting object to have field \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", but it does not"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/client2/jsonextract/JsonMap;->error(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonExtractionException;

    move-result-object v0

    throw v0

    .line 51
    :cond_0
    new-instance v1, Lcom/dropbox/client2/jsonextract/JsonThing;

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonMap;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/dropbox/client2/jsonextract/JsonMap;->path:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/dropbox/client2/jsonextract/JsonMap;->pathConcatField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dropbox/client2/jsonextract/JsonThing;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public getOrNull(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonThing;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonMap;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/dropbox/client2/jsonextract/JsonThing;

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonMap;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/dropbox/client2/jsonextract/JsonMap;->path:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/dropbox/client2/jsonextract/JsonMap;->pathConcatField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/dropbox/client2/jsonextract/JsonThing;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/dropbox/client2/jsonextract/JsonThing;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v1, Lcom/dropbox/client2/jsonextract/JsonMap$WrapperIterator;

    iget-object v2, p0, Lcom/dropbox/client2/jsonextract/JsonMap;->path:Ljava/lang/String;

    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonMap;->internal:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/dropbox/client2/jsonextract/JsonMap$WrapperIterator;-><init>(Ljava/lang/String;Ljava/util/Iterator;Lcom/dropbox/client2/jsonextract/JsonMap$1;)V

    return-object v1
.end method

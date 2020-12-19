.class final Lcom/dropbox/client2/jsonextract/JsonMap$WrappedEntry;
.super Ljava/lang/Object;
.source "JsonMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/jsonextract/JsonMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WrappedEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Lcom/dropbox/client2/jsonextract/JsonThing;",
        ">;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Lcom/dropbox/client2/jsonextract/JsonThing;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map$Entry;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "original":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonMap$WrappedEntry;->key:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/dropbox/client2/jsonextract/JsonThing;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/client2/jsonextract/JsonMap$WrappedEntry;->key:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/dropbox/client2/jsonextract/JsonMap;->access$100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/client2/jsonextract/JsonThing;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonMap$WrappedEntry;->value:Lcom/dropbox/client2/jsonextract/JsonThing;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map$Entry;Lcom/dropbox/client2/jsonextract/JsonMap$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/Map$Entry;
    .param p3, "x2"    # Lcom/dropbox/client2/jsonextract/JsonMap$1;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/jsonextract/JsonMap$WrappedEntry;-><init>(Ljava/lang/String;Ljava/util/Map$Entry;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/dropbox/client2/jsonextract/JsonMap$WrappedEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonMap$WrappedEntry;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/dropbox/client2/jsonextract/JsonThing;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonMap$WrappedEntry;->value:Lcom/dropbox/client2/jsonextract/JsonThing;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/dropbox/client2/jsonextract/JsonMap$WrappedEntry;->getValue()Lcom/dropbox/client2/jsonextract/JsonThing;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/dropbox/client2/jsonextract/JsonThing;)Lcom/dropbox/client2/jsonextract/JsonThing;
    .locals 1
    .param p1, "jsonThing"    # Lcom/dropbox/client2/jsonextract/JsonThing;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 80
    check-cast p1, Lcom/dropbox/client2/jsonextract/JsonThing;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/dropbox/client2/jsonextract/JsonMap$WrappedEntry;->setValue(Lcom/dropbox/client2/jsonextract/JsonThing;)Lcom/dropbox/client2/jsonextract/JsonThing;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/dropbox/client2/jsonextract/JsonThing$OptionalExtractor;
.super Lcom/dropbox/client2/jsonextract/JsonExtractor;
.source "JsonThing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/jsonextract/JsonThing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OptionalExtractor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/client2/jsonextract/JsonExtractor",
        "<TT;>;"
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
    .line 206
    .local p0, "this":Lcom/dropbox/client2/jsonextract/JsonThing$OptionalExtractor;, "Lcom/dropbox/client2/jsonextract/JsonThing$OptionalExtractor<TT;>;"
    .local p1, "elementExtractor":Lcom/dropbox/client2/jsonextract/JsonExtractor;, "Lcom/dropbox/client2/jsonextract/JsonExtractor<TT;>;"
    invoke-direct {p0}, Lcom/dropbox/client2/jsonextract/JsonExtractor;-><init>()V

    .line 207
    iput-object p1, p0, Lcom/dropbox/client2/jsonextract/JsonThing$OptionalExtractor;->elementExtractor:Lcom/dropbox/client2/jsonextract/JsonExtractor;

    .line 208
    return-void
.end method


# virtual methods
.method public extract(Lcom/dropbox/client2/jsonextract/JsonThing;)Ljava/lang/Object;
    .locals 1
    .param p1, "jt"    # Lcom/dropbox/client2/jsonextract/JsonThing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/client2/jsonextract/JsonThing;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/jsonextract/JsonExtractionException;
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lcom/dropbox/client2/jsonextract/JsonThing$OptionalExtractor;, "Lcom/dropbox/client2/jsonextract/JsonThing$OptionalExtractor<TT;>;"
    iget-object v0, p0, Lcom/dropbox/client2/jsonextract/JsonThing$OptionalExtractor;->elementExtractor:Lcom/dropbox/client2/jsonextract/JsonExtractor;

    invoke-virtual {p1, v0}, Lcom/dropbox/client2/jsonextract/JsonThing;->optionalExtract(Lcom/dropbox/client2/jsonextract/JsonExtractor;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

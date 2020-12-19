.class public final Lcom/dropbox/client2/DropboxAPI$CreatedCopyRef;
.super Ljava/lang/Object;
.source "DropboxAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/DropboxAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreatedCopyRef"
.end annotation


# instance fields
.field public final copyRef:Ljava/lang/String;

.field public final expiration:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "copyRef"    # Ljava/lang/String;
    .param p2, "expiration"    # Ljava/lang/String;

    .prologue
    .line 2422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2423
    iput-object p1, p0, Lcom/dropbox/client2/DropboxAPI$CreatedCopyRef;->copyRef:Ljava/lang/String;

    .line 2424
    iput-object p2, p0, Lcom/dropbox/client2/DropboxAPI$CreatedCopyRef;->expiration:Ljava/lang/String;

    .line 2425
    return-void
.end method

.method public static extractFromJson(Lcom/dropbox/client2/jsonextract/JsonThing;)Lcom/dropbox/client2/DropboxAPI$CreatedCopyRef;
    .locals 4
    .param p0, "j"    # Lcom/dropbox/client2/jsonextract/JsonThing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/client2/jsonextract/JsonExtractionException;
        }
    .end annotation

    .prologue
    .line 2428
    invoke-virtual {p0}, Lcom/dropbox/client2/jsonextract/JsonThing;->expectMap()Lcom/dropbox/client2/jsonextract/JsonMap;

    move-result-object v1

    .line 2429
    .local v1, "m":Lcom/dropbox/client2/jsonextract/JsonMap;
    const-string v3, "copy_ref"

    invoke-virtual {v1, v3}, Lcom/dropbox/client2/jsonextract/JsonMap;->get(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonThing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/client2/jsonextract/JsonThing;->expectString()Ljava/lang/String;

    move-result-object v2

    .line 2430
    .local v2, "string":Ljava/lang/String;
    const-string v3, "expires"

    invoke-virtual {v1, v3}, Lcom/dropbox/client2/jsonextract/JsonMap;->get(Ljava/lang/String;)Lcom/dropbox/client2/jsonextract/JsonThing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/client2/jsonextract/JsonThing;->expectString()Ljava/lang/String;

    move-result-object v0

    .line 2431
    .local v0, "expiration":Ljava/lang/String;
    new-instance v3, Lcom/dropbox/client2/DropboxAPI$CreatedCopyRef;

    invoke-direct {v3, v2, v0}, Lcom/dropbox/client2/DropboxAPI$CreatedCopyRef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

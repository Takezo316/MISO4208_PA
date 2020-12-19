.class public Lcom/dropbox/client2/exception/DropboxServerException$Error;
.super Ljava/lang/Object;
.source "DropboxServerException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/client2/exception/DropboxServerException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# instance fields
.field public error:Ljava/lang/String;

.field public fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public userError:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 6
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
    .line 50
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/dropbox/client2/exception/DropboxServerException$Error;->fields:Ljava/util/Map;

    .line 52
    const-string v5, "error"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 53
    .local v1, "err":Ljava/lang/Object;
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 54
    check-cast v1, Ljava/lang/String;

    .end local v1    # "err":Ljava/lang/Object;
    iput-object v1, p0, Lcom/dropbox/client2/exception/DropboxServerException$Error;->error:Ljava/lang/String;

    .line 63
    :cond_0
    const-string v5, "user_error"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 64
    .local v3, "uerr":Ljava/lang/Object;
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 65
    check-cast v3, Ljava/lang/String;

    .end local v3    # "uerr":Ljava/lang/Object;
    iput-object v3, p0, Lcom/dropbox/client2/exception/DropboxServerException$Error;->userError:Ljava/lang/String;

    .line 68
    :cond_1
    return-void

    .line 55
    .restart local v1    # "err":Ljava/lang/Object;
    :cond_2
    instance-of v5, v1, Ljava/util/Map;

    if-eqz v5, :cond_0

    move-object v0, v1

    .line 56
    check-cast v0, Ljava/util/Map;

    .line 57
    .local v0, "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 58
    .local v4, "val":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 59
    check-cast v4, Ljava/lang/String;

    .end local v4    # "val":Ljava/lang/Object;
    iput-object v4, p0, Lcom/dropbox/client2/exception/DropboxServerException$Error;->error:Ljava/lang/String;

    goto :goto_0
.end method

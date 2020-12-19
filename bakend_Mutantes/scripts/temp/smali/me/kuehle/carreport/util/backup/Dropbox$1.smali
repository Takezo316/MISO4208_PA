.class Lme/kuehle/carreport/util/backup/Dropbox$1;
.super Landroid/os/AsyncTask;
.source "Dropbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/util/backup/Dropbox;->finishAuthentication(Lme/kuehle/carreport/util/backup/Dropbox$OnAuthenticationFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private accountName:Ljava/lang/String;

.field private remoteDataAvailable:Z

.field final synthetic this$0:Lme/kuehle/carreport/util/backup/Dropbox;

.field final synthetic val$callback:Lme/kuehle/carreport/util/backup/Dropbox$OnAuthenticationFinishedListener;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/util/backup/Dropbox;Lme/kuehle/carreport/util/backup/Dropbox$OnAuthenticationFinishedListener;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lme/kuehle/carreport/util/backup/Dropbox$1;->this$0:Lme/kuehle/carreport/util/backup/Dropbox;

    iput-object p2, p0, Lme/kuehle/carreport/util/backup/Dropbox$1;->val$callback:Lme/kuehle/carreport/util/backup/Dropbox$OnAuthenticationFinishedListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 106
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Dropbox$1;->this$0:Lme/kuehle/carreport/util/backup/Dropbox;

    invoke-static {v0}, Lme/kuehle/carreport/util/backup/Dropbox;->access$000(Lme/kuehle/carreport/util/backup/Dropbox;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/kuehle/carreport/util/backup/Dropbox$1;->accountName:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Dropbox$1;->accountName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 108
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 112
    :cond_0
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v0

    invoke-virtual {v0}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v7, "localFile":Ljava/io/File;
    :try_start_0
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Dropbox$1;->this$0:Lme/kuehle/carreport/util/backup/Dropbox;

    invoke-static {v0}, Lme/kuehle/carreport/util/backup/Dropbox;->access$100(Lme/kuehle/carreport/util/backup/Dropbox;)Lcom/dropbox/client2/DropboxAPI;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/client2/DropboxAPI;->metadata(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;

    move-result-object v8

    .line 118
    .local v8, "remoteEntry":Lcom/dropbox/client2/DropboxAPI$Entry;
    iget-boolean v0, v8, Lcom/dropbox/client2/DropboxAPI$Entry;->isDeleted:Z

    if-nez v0, :cond_1

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/kuehle/carreport/util/backup/Dropbox$1;->remoteDataAvailable:Z
    :try_end_0
    .catch Lcom/dropbox/client2/exception/DropboxServerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dropbox/client2/exception/DropboxUnlinkedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dropbox/client2/exception/DropboxException; {:try_start_0 .. :try_end_0} :catch_2

    .line 132
    .end local v8    # "remoteEntry":Lcom/dropbox/client2/DropboxAPI$Entry;
    :cond_1
    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v6

    .line 122
    .local v6, "e":Lcom/dropbox/client2/exception/DropboxServerException;
    iget v0, v6, Lcom/dropbox/client2/exception/DropboxServerException;->error:I

    const/16 v1, 0x194

    if-eq v0, v1, :cond_1

    .line 123
    iput-boolean v9, p0, Lme/kuehle/carreport/util/backup/Dropbox$1;->remoteDataAvailable:Z

    goto :goto_1

    .line 125
    .end local v6    # "e":Lcom/dropbox/client2/exception/DropboxServerException;
    :catch_1
    move-exception v6

    .line 126
    .local v6, "e":Lcom/dropbox/client2/exception/DropboxUnlinkedException;
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Dropbox$1;->this$0:Lme/kuehle/carreport/util/backup/Dropbox;

    invoke-virtual {v0}, Lme/kuehle/carreport/util/backup/Dropbox;->unlink()V

    .line 127
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 128
    .end local v6    # "e":Lcom/dropbox/client2/exception/DropboxUnlinkedException;
    :catch_2
    move-exception v6

    .line 129
    .local v6, "e":Lcom/dropbox/client2/exception/DropboxException;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lme/kuehle/carreport/util/backup/Dropbox$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 137
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Dropbox$1;->val$callback:Lme/kuehle/carreport/util/backup/Dropbox$OnAuthenticationFinishedListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lme/kuehle/carreport/util/backup/Dropbox$1;->accountName:Ljava/lang/String;

    iget-boolean v3, p0, Lme/kuehle/carreport/util/backup/Dropbox$1;->remoteDataAvailable:Z

    invoke-interface {v0, v1, v2, v3}, Lme/kuehle/carreport/util/backup/Dropbox$OnAuthenticationFinishedListener;->authenticationFinished(ZLjava/lang/String;Z)V

    .line 139
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 100
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lme/kuehle/carreport/util/backup/Dropbox$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

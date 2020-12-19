.class Lme/kuehle/carreport/util/backup/Dropbox$2;
.super Landroid/os/AsyncTask;
.source "Dropbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/util/backup/Dropbox;->synchronize(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/util/backup/Dropbox;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/util/backup/Dropbox;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lme/kuehle/carreport/util/backup/Dropbox$2;->this$0:Lme/kuehle/carreport/util/backup/Dropbox;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 19
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 184
    new-instance v15, Lme/kuehle/carreport/Preferences;

    move-object/from16 v0, p0

    iget-object v1, v0, Lme/kuehle/carreport/util/backup/Dropbox$2;->this$0:Lme/kuehle/carreport/util/backup/Dropbox;

    invoke-static {v1}, Lme/kuehle/carreport/util/backup/Dropbox;->access$200(Lme/kuehle/carreport/util/backup/Dropbox;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v15, v1}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 185
    .local v15, "prefs":Lme/kuehle/carreport/Preferences;
    new-instance v11, Ljava/io/File;

    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1


    const-string v9, "68773544fe604ab395ab7047a750a912"

    invoke-direct {v11, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V


    .line 187
    .local v11, "localFile":Ljava/io/File;
    invoke-virtual {v15}, Lme/kuehle/carreport/Preferences;->getDropboxLocalRev()Ljava/lang/String;

    move-result-object v12

    .line 189
    .local v12, "localRev":Ljava/lang/String;
    const/16 v17, 0x0

    .line 191
    .local v17, "remoteRev":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lme/kuehle/carreport/util/backup/Dropbox$2;->this$0:Lme/kuehle/carreport/util/backup/Dropbox;

    invoke-static {v1}, Lme/kuehle/carreport/util/backup/Dropbox;->access$100(Lme/kuehle/carreport/util/backup/Dropbox;)Lcom/dropbox/client2/DropboxAPI;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/dropbox/client2/DropboxAPI;->metadata(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Lcom/dropbox/client2/DropboxAPI$Entry;

    move-result-object v16

    .line 193
    .local v16, "remoteEntry":Lcom/dropbox/client2/DropboxAPI$Entry;
    move-object/from16 v0, v16

    iget-boolean v1, v0, Lcom/dropbox/client2/DropboxAPI$Entry;->isDeleted:Z

    if-nez v1, :cond_b

    .line 194
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/dropbox/client2/DropboxAPI$Entry;->rev:Ljava/lang/String;
    :try_end_0
    .catch Lcom/dropbox/client2/exception/DropboxServerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dropbox/client2/exception/DropboxUnlinkedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dropbox/client2/exception/DropboxException; {:try_start_0 .. :try_end_0} :catch_2

    .line 207
    .end local v16    # "remoteEntry":Lcom/dropbox/client2/DropboxAPI$Entry;
    .end local v17    # "remoteRev":Ljava/lang/String;
    .local v6, "remoteRev":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    if-eqz v6, :cond_0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 212
    :cond_0
    sget-object v18, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v18

    .line 213
    const/4 v10, 0x0

    .line 215
    .local v10, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Lcom/dropbox/client2/exception/DropboxException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 216
    .end local v10    # "inputStream":Ljava/io/FileInputStream;
    .local v3, "inputStream":Ljava/io/FileInputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lme/kuehle/carreport/util/backup/Dropbox$2;->this$0:Lme/kuehle/carreport/util/backup/Dropbox;

    invoke-static {v1}, Lme/kuehle/carreport/util/backup/Dropbox;->access$100(Lme/kuehle/carreport/util/backup/Dropbox;)Lcom/dropbox/client2/DropboxAPI;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v4

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/dropbox/client2/DropboxAPI;->putFile(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$Entry;

    move-result-object v16

    .line 219
    .restart local v16    # "remoteEntry":Lcom/dropbox/client2/DropboxAPI$Entry;
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/dropbox/client2/DropboxAPI$Entry;->rev:Ljava/lang/String;

    invoke-virtual {v15, v1}, Lme/kuehle/carreport/Preferences;->setDropboxLocalRev(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/dropbox/client2/exception/DropboxException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 225
    if-eqz v3, :cond_1

    .line 227
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    :cond_1
    :goto_1
    :try_start_4
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 259
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v16    # "remoteEntry":Lcom/dropbox/client2/DropboxAPI$Entry;
    :goto_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_3
    return-object v1

    .line 196
    .end local v6    # "remoteRev":Ljava/lang/String;
    .restart local v17    # "remoteRev":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 197
    .local v8, "e":Lcom/dropbox/client2/exception/DropboxServerException;
    iget v1, v8, Lcom/dropbox/client2/exception/DropboxServerException;->error:I

    const/16 v2, 0x194

    if-eq v1, v2, :cond_2

    .line 198
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v6, v17

    .end local v17    # "remoteRev":Ljava/lang/String;
    .restart local v6    # "remoteRev":Ljava/lang/String;
    goto :goto_3

    .end local v6    # "remoteRev":Ljava/lang/String;
    .restart local v17    # "remoteRev":Ljava/lang/String;
    :cond_2
    move-object/from16 v6, v17

    .line 205
    .end local v17    # "remoteRev":Ljava/lang/String;
    .restart local v6    # "remoteRev":Ljava/lang/String;
    goto :goto_0

    .line 200
    .end local v6    # "remoteRev":Ljava/lang/String;
    .end local v8    # "e":Lcom/dropbox/client2/exception/DropboxServerException;
    .restart local v17    # "remoteRev":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 201
    .local v8, "e":Lcom/dropbox/client2/exception/DropboxUnlinkedException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lme/kuehle/carreport/util/backup/Dropbox$2;->this$0:Lme/kuehle/carreport/util/backup/Dropbox;

    invoke-virtual {v1}, Lme/kuehle/carreport/util/backup/Dropbox;->unlink()V

    .line 202
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v6, v17

    .end local v17    # "remoteRev":Ljava/lang/String;
    .restart local v6    # "remoteRev":Ljava/lang/String;
    goto :goto_3

    .line 203
    .end local v6    # "remoteRev":Ljava/lang/String;
    .end local v8    # "e":Lcom/dropbox/client2/exception/DropboxUnlinkedException;
    .restart local v17    # "remoteRev":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 204
    .local v8, "e":Lcom/dropbox/client2/exception/DropboxException;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v6, v17

    .end local v17    # "remoteRev":Ljava/lang/String;
    .restart local v6    # "remoteRev":Ljava/lang/String;
    goto :goto_3

    .line 220
    .end local v8    # "e":Lcom/dropbox/client2/exception/DropboxException;
    .restart local v10    # "inputStream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v8

    move-object v3, v10

    .line 221
    .end local v10    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v8    # "e":Lcom/dropbox/client2/exception/DropboxException;
    :goto_4
    const/4 v1, 0x0

    :try_start_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move-result-object v1

    .line 225
    if-eqz v3, :cond_3

    .line 227
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 229
    :cond_3
    :goto_5
    :try_start_7
    monitor-exit v18

    goto :goto_3

    .line 232
    .end local v8    # "e":Lcom/dropbox/client2/exception/DropboxException;
    :catchall_0
    move-exception v1

    monitor-exit v18
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v1

    .line 222
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v10    # "inputStream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v8

    move-object v3, v10

    .line 223
    .end local v10    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .local v8, "e":Ljava/io/FileNotFoundException;
    :goto_6
    const/4 v1, 0x0

    :try_start_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    move-result-object v1

    .line 225
    if-eqz v3, :cond_4

    .line 227
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 229
    :cond_4
    :goto_7
    :try_start_a
    monitor-exit v18
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 225
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v10    # "inputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v1

    move-object v3, v10

    .end local v10    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :goto_8
    if-eqz v3, :cond_5

    .line 227
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 229
    :cond_5
    :goto_9
    :try_start_c
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 235
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    :cond_6
    sget-object v2, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 236
    const/4 v13, 0x0

    .line 238
    .local v13, "outputStream":Ljava/io/FileOutputStream;
    :try_start_d
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Lcom/dropbox/client2/exception/DropboxException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 239
    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .local v14, "outputStream":Ljava/io/FileOutputStream;
    :try_start_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lme/kuehle/carreport/util/backup/Dropbox$2;->this$0:Lme/kuehle/carreport/util/backup/Dropbox;

    invoke-static {v1}, Lme/kuehle/carreport/util/backup/Dropbox;->access$100(Lme/kuehle/carreport/util/backup/Dropbox;)Lcom/dropbox/client2/DropboxAPI;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v14, v7}, Lcom/dropbox/client2/DropboxAPI;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lcom/dropbox/client2/ProgressListener;)Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;

    move-result-object v9

    .line 242
    .local v9, "info":Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;
    invoke-virtual {v9}, Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;->getMetadata()Lcom/dropbox/client2/DropboxAPI$Entry;

    move-result-object v1

    iget-object v1, v1, Lcom/dropbox/client2/DropboxAPI$Entry;->rev:Ljava/lang/String;

    invoke-virtual {v15, v1}, Lme/kuehle/carreport/Preferences;->setDropboxLocalRev(Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->reinitialize()V
    :try_end_e
    .catch Lcom/dropbox/client2/exception/DropboxException; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 249
    if-eqz v14, :cond_7

    .line 251
    :try_start_f
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 256
    :cond_7
    :goto_a
    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_2

    :catchall_2
    move-exception v1

    move-object v13, v14

    .end local v9    # "info":Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;
    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outputStream":Ljava/io/FileOutputStream;
    :goto_b
    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    throw v1

    .line 244
    :catch_5
    move-exception v8

    .line 245
    .local v8, "e":Lcom/dropbox/client2/exception/DropboxException;
    :goto_c
    const/4 v1, 0x0

    :try_start_12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move-result-object v1

    .line 249
    if-eqz v13, :cond_8

    .line 251
    :try_start_13
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 253
    :cond_8
    :goto_d
    :try_start_14
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto/16 :goto_3

    .line 256
    .end local v8    # "e":Lcom/dropbox/client2/exception/DropboxException;
    :catchall_3
    move-exception v1

    goto :goto_b

    .line 246
    :catch_6
    move-exception v8

    .line 247
    .local v8, "e":Ljava/io/FileNotFoundException;
    :goto_e
    const/4 v1, 0x0

    :try_start_15
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    move-result-object v1

    .line 249
    if-eqz v13, :cond_9

    .line 251
    :try_start_16
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_d
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 253
    :cond_9
    :goto_f
    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    goto/16 :goto_3

    .line 249
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :catchall_4
    move-exception v1

    :goto_10
    if-eqz v13, :cond_a

    .line 251
    :try_start_18
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_e
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 253
    :cond_a
    :goto_11
    :try_start_19
    throw v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 228
    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v16    # "remoteEntry":Lcom/dropbox/client2/DropboxAPI$Entry;
    :catch_7
    move-exception v1

    goto/16 :goto_1

    .end local v16    # "remoteEntry":Lcom/dropbox/client2/DropboxAPI$Entry;
    .local v8, "e":Lcom/dropbox/client2/exception/DropboxException;
    :catch_8
    move-exception v2

    goto/16 :goto_5

    .local v8, "e":Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v2

    goto :goto_7

    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :catch_a
    move-exception v2

    goto :goto_9

    .line 252
    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "info":Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    :catch_b
    move-exception v1

    goto :goto_a

    .end local v9    # "info":Lcom/dropbox/client2/DropboxAPI$DropboxFileInfo;
    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .local v8, "e":Lcom/dropbox/client2/exception/DropboxException;
    .restart local v13    # "outputStream":Ljava/io/FileOutputStream;
    :catch_c
    move-exception v4

    goto :goto_d

    .local v8, "e":Ljava/io/FileNotFoundException;
    :catch_d
    move-exception v4

    goto :goto_f

    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :catch_e
    move-exception v4

    goto :goto_11

    .line 249
    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v1

    move-object v13, v14

    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_10

    .line 246
    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    :catch_f
    move-exception v8

    move-object v13, v14

    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_e

    .line 244
    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    :catch_10
    move-exception v8

    move-object v13, v14

    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_c

    .line 225
    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "inputStream":Ljava/io/FileInputStream;
    :catchall_6
    move-exception v1

    goto/16 :goto_8

    .line 222
    :catch_11
    move-exception v8

    goto/16 :goto_6

    .line 220
    :catch_12
    move-exception v8

    goto/16 :goto_4

    .end local v3    # "inputStream":Ljava/io/FileInputStream;
    .end local v6    # "remoteRev":Ljava/lang/String;
    .restart local v16    # "remoteEntry":Lcom/dropbox/client2/DropboxAPI$Entry;
    .restart local v17    # "remoteRev":Ljava/lang/String;
    :cond_b
    move-object/from16 v6, v17

    .end local v17    # "remoteRev":Ljava/lang/String;
    .restart local v6    # "remoteRev":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 181
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lme/kuehle/carreport/util/backup/Dropbox$2;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 264
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Dropbox$2;->this$0:Lme/kuehle/carreport/util/backup/Dropbox;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lme/kuehle/carreport/util/backup/Dropbox;->access$302(Lme/kuehle/carreport/util/backup/Dropbox;Z)Z

    .line 265
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Dropbox$2;->this$0:Lme/kuehle/carreport/util/backup/Dropbox;

    invoke-static {v0}, Lme/kuehle/carreport/util/backup/Dropbox;->access$400(Lme/kuehle/carreport/util/backup/Dropbox;)Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Dropbox$2;->this$0:Lme/kuehle/carreport/util/backup/Dropbox;

    invoke-static {v0}, Lme/kuehle/carreport/util/backup/Dropbox;->access$400(Lme/kuehle/carreport/util/backup/Dropbox;)Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;->synchronizationFinished(Z)V

    .line 268
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 181
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lme/kuehle/carreport/util/backup/Dropbox$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Dropbox$2;->this$0:Lme/kuehle/carreport/util/backup/Dropbox;

    invoke-static {v0}, Lme/kuehle/carreport/util/backup/Dropbox;->access$400(Lme/kuehle/carreport/util/backup/Dropbox;)Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Dropbox$2;->this$0:Lme/kuehle/carreport/util/backup/Dropbox;

    invoke-static {v0}, Lme/kuehle/carreport/util/backup/Dropbox;->access$400(Lme/kuehle/carreport/util/backup/Dropbox;)Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;

    move-result-object v0

    invoke-interface {v0}, Lme/kuehle/carreport/util/backup/Dropbox$OnSynchronizeListener;->synchronizationStarted()V

    .line 275
    :cond_0
    return-void
.end method

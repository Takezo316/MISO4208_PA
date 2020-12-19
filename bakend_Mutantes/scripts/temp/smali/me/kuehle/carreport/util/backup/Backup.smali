.class public Lme/kuehle/carreport/util/backup/Backup;
.super Ljava/lang/Object;
.source "Backup.java"


# static fields
.field public static final FILE_NAME:Ljava/lang/String; = "carreport.backup"


# instance fields
.field private backupFile:Ljava/io/File;

.field private dbFile:Ljava/io/File;

.field private dir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lme/kuehle/carreport/util/backup/Backup;->dir:Ljava/io/File;

    .line 36
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lme/kuehle/carreport/util/backup/Backup;->dbFile:Ljava/io/File;

    .line 37
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lme/kuehle/carreport/util/backup/Backup;->dir:Ljava/io/File;

    const-string v2, "carreport.backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lme/kuehle/carreport/util/backup/Backup;->backupFile:Ljava/io/File;

    .line 38
    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 9
    .param p1, "from"    # Ljava/io/File;
    .param p2, "to"    # Ljava/io/File;

    .prologue
    .line 70
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 71
    .local v7, "inStream":Ljava/io/FileInputStream;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 72
    .local v8, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 73
    .local v1, "src":Ljava/nio/channels/FileChannel;
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 74
    .local v0, "dst":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 75
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 76
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 77
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 78
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const/4 v2, 0x1

    .line 81
    .end local v0    # "dst":Ljava/nio/channels/FileChannel;
    .end local v1    # "src":Ljava/nio/channels/FileChannel;
    .end local v7    # "inStream":Ljava/io/FileInputStream;
    .end local v8    # "outStream":Ljava/io/FileOutputStream;
    :goto_0
    return v2

    .line 80
    :catch_0
    move-exception v6

    .line 81
    .local v6, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public backup()Z
    .locals 3

    .prologue
    .line 41
    sget-object v1, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Backup;->dbFile:Ljava/io/File;

    iget-object v2, p0, Lme/kuehle/carreport/util/backup/Backup;->backupFile:Ljava/io/File;

    invoke-direct {p0, v0, v2}, Lme/kuehle/carreport/util/backup/Backup;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public backupFileExists()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Backup;->backupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public canBackup()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Backup;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public canRestore()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/Backup;->backupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public restore()Z
    .locals 4

    .prologue
    .line 59
    sget-object v2, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 60
    :try_start_0
    iget-object v1, p0, Lme/kuehle/carreport/util/backup/Backup;->backupFile:Ljava/io/File;

    iget-object v3, p0, Lme/kuehle/carreport/util/backup/Backup;->dbFile:Ljava/io/File;

    invoke-direct {p0, v1, v3}, Lme/kuehle/carreport/util/backup/Backup;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 61
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->reinitialize()V

    .line 64
    :cond_0
    monitor-exit v2

    return v0

    .line 65
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

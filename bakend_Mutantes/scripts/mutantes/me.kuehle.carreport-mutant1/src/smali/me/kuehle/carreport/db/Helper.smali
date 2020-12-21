.class public Lme/kuehle/carreport/db/Helper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "Helper.java"


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "data.db"

.field public static final DB_VERSION:I = 0x6

.field public static final dbLock:[Ljava/lang/Object;

.field private static instance:Lme/kuehle/carreport/db/Helper;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lme/kuehle/carreport/db/Helper;->instance:Lme/kuehle/carreport/db/Helper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string v0, "data.db"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    iput-object p1, p0, Lme/kuehle/carreport/db/Helper;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static getInstance()Lme/kuehle/carreport/db/Helper;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lme/kuehle/carreport/db/Helper;->instance:Lme/kuehle/carreport/db/Helper;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    new-instance v0, Lme/kuehle/carreport/db/Helper;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/db/Helper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lme/kuehle/carreport/db/Helper;->instance:Lme/kuehle/carreport/db/Helper;

    .line 94
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lme/kuehle/carreport/db/Helper;->instance:Lme/kuehle/carreport/db/Helper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dataChanged()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v1, p0, Lme/kuehle/carreport/db/Helper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, "backupManager":Landroid/app/backup/BackupManager;
    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 49
    new-instance v1, Lme/kuehle/carreport/Preferences;

    iget-object v2, p0, Lme/kuehle/carreport/db/Helper;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lme/kuehle/carreport/Preferences;->isSyncOnChange()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    invoke-static {}, Lme/kuehle/carreport/util/backup/Dropbox;->getInstance()Lme/kuehle/carreport/util/backup/Dropbox;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/util/backup/Dropbox;->synchronize()V

    .line 52
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lme/kuehle/carreport/db/Helper;->close()V

    .line 57
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 58
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 62
    invoke-static {p1}, Lme/kuehle/carreport/db/CarTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 63
    invoke-static {p1}, Lme/kuehle/carreport/db/FuelTypeTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 64
    invoke-static {p1}, Lme/kuehle/carreport/db/RefuelingTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    invoke-static {p1}, Lme/kuehle/carreport/db/OtherCostTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 66
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const-string v0, "PRAGMA foreign_keys=ON;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 78
    invoke-static {p1, p2, p3}, Lme/kuehle/carreport/db/CarTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 79
    invoke-static {p1, p2, p3}, Lme/kuehle/carreport/db/FuelTypeTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 80
    invoke-static {p1, p2, p3}, Lme/kuehle/carreport/db/RefuelingTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 81
    invoke-static {p1, p2, p3}, Lme/kuehle/carreport/db/OtherCostTable;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 82
    return-void
.end method

.method public reinitialize()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lme/kuehle/carreport/db/Helper;->context:Landroid/content/Context;

    invoke-static {v0}, Lme/kuehle/carreport/db/Helper;->init(Landroid/content/Context;)V

    .line 86
    return-void
.end method

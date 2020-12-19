.class public Lme/kuehle/carreport/db/Car;
.super Lme/kuehle/carreport/db/AbstractItem;
.source "Car.java"


# instance fields
.field private color:I

.field private name:Ljava/lang/String;

.field private suspended:Ljava/util/Date;


# direct methods
.method public constructor <init>(I)V
    .locals 11
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x1

    .line 32
    invoke-direct {p0}, Lme/kuehle/carreport/db/AbstractItem;-><init>()V

    .line 33
    sget-object v9, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v9

    .line 34
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 35
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "cars"

    sget-object v2, Lme/kuehle/carreport/db/CarTable;->ALL_COLUMNS:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 38
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v1, v10, :cond_0

    .line 39
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A car with this ID does not exist!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 54
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 44
    iput p1, p0, Lme/kuehle/carreport/db/Car;->id:I

    .line 45
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/kuehle/carreport/db/Car;->name:Ljava/lang/String;

    .line 46
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lme/kuehle/carreport/db/Car;->color:I

    .line 47
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lme/kuehle/carreport/db/Car;->suspended:Ljava/util/Date;

    .line 52
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 54
    monitor-exit v9

    .line 55
    return-void

    .line 50
    :cond_1
    new-instance v1, Ljava/util/Date;

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide v2, 0x8520e20L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V


    iput-object v1, p0, Lme/kuehle/carreport/db/Car;->suspended:Ljava/util/Date;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private constructor <init>(ILjava/lang/String;ILjava/util/Date;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "color"    # I
    .param p4, "suspended"    # Ljava/util/Date;

    .prologue
    .line 57
    invoke-direct {p0}, Lme/kuehle/carreport/db/AbstractItem;-><init>()V

    .line 58
    iput p1, p0, Lme/kuehle/carreport/db/Car;->id:I

    .line 59
    iput-object p2, p0, Lme/kuehle/carreport/db/Car;->name:Ljava/lang/String;

    .line 60
    iput p3, p0, Lme/kuehle/carreport/db/Car;->color:I

    .line 61
    iput-object p4, p0, Lme/kuehle/carreport/db/Car;->suspended:Ljava/util/Date;

    .line 62
    return-void
.end method

.method public static create(ILjava/lang/String;ILjava/util/Date;)Lme/kuehle/carreport/db/Car;
    .locals 7
    .param p0, "id"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "suspended"    # Ljava/util/Date;

    .prologue
    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 128
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .local v1, "values":Landroid/content/ContentValues;
    if-eq p0, v6, :cond_0

    .line 130
    const-string v3, "_id"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    :cond_0
    const-string v3, "name"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v3, "color"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v3, "suspended_since"

    if-nez p3, :cond_1

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    sget-object v3, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 138
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 139
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "cars"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    long-to-int p0, v4

    .line 140
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    if-ne p0, v6, :cond_2

    .line 143
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A car with this ID does already exist!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 147
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Helper;->dataChanged()V

    .line 148
    new-instance v2, Lme/kuehle/carreport/db/Car;

    invoke-direct {v2, p0, p1, p2, p3}, Lme/kuehle/carreport/db/Car;-><init>(ILjava/lang/String;ILjava/util/Date;)V

    return-object v2
.end method

.method public static create(Ljava/lang/String;ILjava/util/Date;)Lme/kuehle/carreport/db/Car;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "color"    # I
    .param p2, "suspended"    # Ljava/util/Date;

    .prologue
    .line 124
    const/4 v0, -0x1

    invoke-static {v0, p0, p1, p2}, Lme/kuehle/carreport/db/Car;->create(ILjava/lang/String;ILjava/util/Date;)Lme/kuehle/carreport/db/Car;

    move-result-object v0

    return-object v0
.end method

.method public static getAll()[Lme/kuehle/carreport/db/Car;
    .locals 12

    .prologue
    .line 152
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v8, "cars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lme/kuehle/carreport/db/Car;>;"
    sget-object v11, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v11

    .line 155
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 156
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "cars"

    sget-object v2, Lme/kuehle/carreport/db/CarTable;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "suspended_since ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 159
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 160
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    const/4 v10, 0x0

    .line 162
    .local v10, "suspended":Ljava/util/Date;
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    new-instance v10, Ljava/util/Date;

    .end local v10    # "suspended":Ljava/util/Date;
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v10, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 165
    .restart local v10    # "suspended":Ljava/util/Date;
    :cond_0
    new-instance v1, Lme/kuehle/carreport/db/Car;

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v10}, Lme/kuehle/carreport/db/Car;-><init>(ILjava/lang/String;ILjava/util/Date;)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 170
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "suspended":Ljava/util/Date;
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 169
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 170
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lme/kuehle/carreport/db/Car;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lme/kuehle/carreport/db/Car;

    return-object v1
.end method

.method public static getCount()I
    .locals 6

    .prologue
    .line 177
    sget-object v4, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v4

    .line 178
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v3

    invoke-virtual {v3}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 179
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "SELECT count(*) FROM cars"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 181
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 182
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 183
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 184
    monitor-exit v4

    .line 185
    return v0

    .line 184
    .end local v0    # "count":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public delete()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 93
    invoke-static {}, Lme/kuehle/carreport/db/Car;->getCount()I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 94
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The last car cannot be deleted!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_0
    invoke-virtual {p0}, Lme/kuehle/carreport/db/Car;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    sget-object v2, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 97
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 98
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "cars"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lme/kuehle/carreport/db/Car;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->dataChanged()V

    .line 102
    iput-boolean v7, p0, Lme/kuehle/carreport/db/Car;->deleted:Z

    .line 104
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    return-void

    .line 100
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lme/kuehle/carreport/db/Car;->color:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lme/kuehle/carreport/db/Car;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSuspended()Ljava/util/Date;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lme/kuehle/carreport/db/Car;->suspended:Ljava/util/Date;

    return-object v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lme/kuehle/carreport/db/Car;->suspended:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save()V
    .locals 8

    .prologue
    .line 107
    invoke-virtual {p0}, Lme/kuehle/carreport/db/Car;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    iget-object v3, p0, Lme/kuehle/carreport/db/Car;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v2, "color"

    iget v3, p0, Lme/kuehle/carreport/db/Car;->color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    const-string v3, "suspended_since"

    iget-object v2, p0, Lme/kuehle/carreport/db/Car;->suspended:Ljava/util/Date;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 114
    sget-object v3, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 115
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 116
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "cars"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lme/kuehle/carreport/db/Car;->id:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Helper;->dataChanged()V

    .line 121
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 111
    .restart local v1    # "values":Landroid/content/ContentValues;
    :cond_1
    iget-object v2, p0, Lme/kuehle/carreport/db/Car;->suspended:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 77
    iput p1, p0, Lme/kuehle/carreport/db/Car;->color:I

    .line 78
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lme/kuehle/carreport/db/Car;->name:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setSuspended(Ljava/util/Date;)V
    .locals 0
    .param p1, "suspended"    # Ljava/util/Date;

    .prologue
    .line 89
    iput-object p1, p0, Lme/kuehle/carreport/db/Car;->suspended:Ljava/util/Date;

    .line 90
    return-void
.end method

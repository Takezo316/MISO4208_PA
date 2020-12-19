.class public Lme/kuehle/carreport/db/FuelType;
.super Lme/kuehle/carreport/db/AbstractItem;
.source "FuelType.java"


# instance fields
.field private car:Lme/kuehle/carreport/db/Car;

.field private name:Ljava/lang/String;

.field private tank:I


# direct methods
.method public constructor <init>(I)V
    .locals 11
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x1

    .line 15
    invoke-direct {p0}, Lme/kuehle/carreport/db/AbstractItem;-><init>()V

    .line 16
    sget-object v9, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v9

    .line 17
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 18
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "fueltypes"

    sget-object v2, Lme/kuehle/carreport/db/FuelTypeTable;->ALL_COLUMNS:[Ljava/lang/String;

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

    .line 21
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v1, v10, :cond_0

    .line 22
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A fuel type with this ID does not exist!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 27
    iput p1, p0, Lme/kuehle/carreport/db/FuelType;->id:I

    .line 28
    new-instance v1, Lme/kuehle/carreport/db/Car;

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v1, v2}, Lme/kuehle/carreport/db/Car;-><init>(I)V

    iput-object v1, p0, Lme/kuehle/carreport/db/FuelType;->car:Lme/kuehle/carreport/db/Car;

    .line 29
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/kuehle/carreport/db/FuelType;->name:Ljava/lang/String;

    .line 30
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lme/kuehle/carreport/db/FuelType;->tank:I

    .line 31
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 33
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    return-void
.end method

.method private constructor <init>(ILme/kuehle/carreport/db/Car;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "car"    # Lme/kuehle/carreport/db/Car;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "tank"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Lme/kuehle/carreport/db/AbstractItem;-><init>()V

    .line 37
    iput p1, p0, Lme/kuehle/carreport/db/FuelType;->id:I

    .line 38
    iput-object p2, p0, Lme/kuehle/carreport/db/FuelType;->car:Lme/kuehle/carreport/db/Car;

    .line 39
    iput-object p3, p0, Lme/kuehle/carreport/db/FuelType;->name:Ljava/lang/String;

    .line 40
    iput p4, p0, Lme/kuehle/carreport/db/FuelType;->tank:I

    .line 41
    return-void
.end method

.method public static create(ILme/kuehle/carreport/db/Car;Ljava/lang/String;I)Lme/kuehle/carreport/db/FuelType;
    .locals 7
    .param p0, "id"    # I
    .param p1, "car"    # Lme/kuehle/carreport/db/Car;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "tank"    # I

    .prologue
    const/4 v6, -0x1

    .line 101
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 102
    .local v1, "values":Landroid/content/ContentValues;
    if-eq p0, v6, :cond_0

    .line 103
    const-string v2, "_id"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    :cond_0
    const-string v2, "cars_id"

    invoke-virtual {p1}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v2, "name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "tank"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    sget-object v3, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 110
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 111
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "fueltypes"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    long-to-int p0, v4

    .line 112
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    if-ne p0, v6, :cond_1

    .line 115
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A fuel type with this ID does already exist!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 119
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Helper;->dataChanged()V

    .line 120
    new-instance v2, Lme/kuehle/carreport/db/FuelType;

    invoke-direct {v2, p0, p1, p2, p3}, Lme/kuehle/carreport/db/FuelType;-><init>(ILme/kuehle/carreport/db/Car;Ljava/lang/String;I)V

    return-object v2
.end method

.method public static create(Lme/kuehle/carreport/db/Car;Ljava/lang/String;I)Lme/kuehle/carreport/db/FuelType;
    .locals 1
    .param p0, "car"    # Lme/kuehle/carreport/db/Car;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tank"    # I

    .prologue
    .line 97
    const/4 v0, -0x1

    invoke-static {v0, p0, p1, p2}, Lme/kuehle/carreport/db/FuelType;->create(ILme/kuehle/carreport/db/Car;Ljava/lang/String;I)Lme/kuehle/carreport/db/FuelType;

    move-result-object v0

    return-object v0
.end method

.method public static getAllForCar(Lme/kuehle/carreport/db/Car;)[Lme/kuehle/carreport/db/FuelType;
    .locals 11
    .param p0, "car"    # Lme/kuehle/carreport/db/Car;

    .prologue
    .line 124
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v9, "fuelTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lme/kuehle/carreport/db/FuelType;>;"
    sget-object v10, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v10

    .line 127
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 128
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "fueltypes"

    sget-object v2, Lme/kuehle/carreport/db/FuelTypeTable;->ALL_COLUMNS:[Ljava/lang/String;

    const-string v3, "cars_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 133
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 134
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Lme/kuehle/carreport/db/FuelType;

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v1, v2, p0, v3, v4}, Lme/kuehle/carreport/db/FuelType;-><init>(ILme/kuehle/carreport/db/Car;Ljava/lang/String;I)V

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 140
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 139
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 140
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lme/kuehle/carreport/db/FuelType;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lme/kuehle/carreport/db/FuelType;

    return-object v1
.end method

.method public static getAllNames()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v2, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v4

    .line 149
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v3

    invoke-virtual {v3}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 150
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "SELECT DISTINCT %s FROM %s ORDER BY %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "name"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "fueltypes"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "name"

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 155
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 156
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 157
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 161
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 160
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 161
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method


# virtual methods
.method public delete()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 69
    invoke-virtual {p0}, Lme/kuehle/carreport/db/FuelType;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    sget-object v2, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 71
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 72
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "fueltypes"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lme/kuehle/carreport/db/FuelType;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 74
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->dataChanged()V

    .line 76
    iput-boolean v7, p0, Lme/kuehle/carreport/db/FuelType;->deleted:Z

    .line 78
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void

    .line 74
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCar()Lme/kuehle/carreport/db/Car;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lme/kuehle/carreport/db/FuelType;->car:Lme/kuehle/carreport/db/Car;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lme/kuehle/carreport/db/FuelType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTank()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lme/kuehle/carreport/db/FuelType;->tank:I

    return v0
.end method

.method public save()V
    .locals 8

    .prologue
    .line 81
    invoke-virtual {p0}, Lme/kuehle/carreport/db/FuelType;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 83
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "cars_id"

    iget-object v3, p0, Lme/kuehle/carreport/db/FuelType;->car:Lme/kuehle/carreport/db/Car;

    invoke-virtual {v3}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string v2, "name"

    iget-object v3, p0, Lme/kuehle/carreport/db/FuelType;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "tank"

    iget v3, p0, Lme/kuehle/carreport/db/FuelType;->tank:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    sget-object v3, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 88
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 89
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "fueltypes"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lme/kuehle/carreport/db/FuelType;->id:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 91
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Helper;->dataChanged()V

    .line 94
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 91
    .restart local v1    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setCar(Lme/kuehle/carreport/db/Car;)V
    .locals 0
    .param p1, "car"    # Lme/kuehle/carreport/db/Car;

    .prologue
    .line 48
    iput-object p1, p0, Lme/kuehle/carreport/db/FuelType;->car:Lme/kuehle/carreport/db/Car;

    .line 49
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lme/kuehle/carreport/db/FuelType;->name:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setTank(I)V
    .locals 0
    .param p1, "tank"    # I

    .prologue
    .line 64
    iput p1, p0, Lme/kuehle/carreport/db/FuelType;->tank:I

    .line 65
    return-void
.end method

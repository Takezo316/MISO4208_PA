.class public Lme/kuehle/carreport/db/Refueling;
.super Lme/kuehle/carreport/db/AbstractItem;
.source "Refueling.java"


# instance fields
.field private car:Lme/kuehle/carreport/db/Car;

.field private date:Ljava/util/Date;

.field private fuelType:Lme/kuehle/carreport/db/FuelType;

.field private mileage:I

.field private note:Ljava/lang/String;

.field private partial:Z

.field private price:F

.field private volume:F


# direct methods
.method public constructor <init>(I)V
    .locals 13
    .param p1, "id"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 37
    invoke-direct {p0}, Lme/kuehle/carreport/db/AbstractItem;-><init>()V

    .line 38
    sget-object v12, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v12

    .line 39
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 40
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "refuelings"

    sget-object v2, Lme/kuehle/carreport/db/RefuelingTable;->ALL_COLUMNS:[Ljava/lang/String;

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

    .line 43
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v1, v10, :cond_0

    .line 44
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A refueling with this ID does not exist!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 49
    iput p1, p0, Lme/kuehle/carreport/db/Refueling;->id:I

    .line 50
    new-instance v1, Ljava/util/Date;

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lme/kuehle/carreport/db/Refueling;->date:Ljava/util/Date;

    .line 51
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lme/kuehle/carreport/db/Refueling;->mileage:I

    .line 52
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    iput v1, p0, Lme/kuehle/carreport/db/Refueling;->volume:F

    .line 53
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    iput v1, p0, Lme/kuehle/carreport/db/Refueling;->price:F

    .line 54
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    move v1, v10

    :goto_0
    iput-boolean v1, p0, Lme/kuehle/carreport/db/Refueling;->partial:Z

    .line 55
    const/4 v1, 0x6

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/kuehle/carreport/db/Refueling;->note:Ljava/lang/String;

    .line 56
    new-instance v1, Lme/kuehle/carreport/db/Car;

    const/4 v2, 0x7

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v1, v2}, Lme/kuehle/carreport/db/Car;-><init>(I)V

    iput-object v1, p0, Lme/kuehle/carreport/db/Refueling;->car:Lme/kuehle/carreport/db/Car;

    .line 57
    const/16 v1, 0x8

    invoke-interface {v8, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v9

    :goto_1
    iput-object v1, p0, Lme/kuehle/carreport/db/Refueling;->fuelType:Lme/kuehle/carreport/db/FuelType;

    .line 59
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 61
    monitor-exit v12

    .line 62
    return-void

    :cond_1
    move v1, v11

    .line 54
    goto :goto_0

    .line 57
    :cond_2
    new-instance v1, Lme/kuehle/carreport/db/FuelType;

    const/16 v2, 0x8

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v1, v2}, Lme/kuehle/carreport/db/FuelType;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private constructor <init>(ILjava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "date"    # Ljava/util/Date;
    .param p3, "mileage"    # I
    .param p4, "volume"    # F
    .param p5, "price"    # F
    .param p6, "partial"    # Z
    .param p7, "note"    # Ljava/lang/String;
    .param p8, "car"    # Lme/kuehle/carreport/db/Car;
    .param p9, "fuelType"    # Lme/kuehle/carreport/db/FuelType;

    .prologue
    .line 66
    invoke-direct {p0}, Lme/kuehle/carreport/db/AbstractItem;-><init>()V

    .line 67
    iput p1, p0, Lme/kuehle/carreport/db/Refueling;->id:I

    .line 68
    iput-object p2, p0, Lme/kuehle/carreport/db/Refueling;->date:Ljava/util/Date;

    .line 69
    iput p3, p0, Lme/kuehle/carreport/db/Refueling;->mileage:I

    .line 70
    iput p4, p0, Lme/kuehle/carreport/db/Refueling;->volume:F

    .line 71
    iput p5, p0, Lme/kuehle/carreport/db/Refueling;->price:F

    .line 72
    iput-boolean p6, p0, Lme/kuehle/carreport/db/Refueling;->partial:Z

    .line 73
    iput-object p7, p0, Lme/kuehle/carreport/db/Refueling;->note:Ljava/lang/String;

    .line 74
    iput-object p8, p0, Lme/kuehle/carreport/db/Refueling;->car:Lme/kuehle/carreport/db/Car;

    .line 75
    iput-object p9, p0, Lme/kuehle/carreport/db/Refueling;->fuelType:Lme/kuehle/carreport/db/FuelType;

    .line 76
    return-void
.end method

.method public static create(ILjava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;
    .locals 13
    .param p0, "id"    # I
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "mileage"    # I
    .param p3, "volume"    # F
    .param p4, "price"    # F
    .param p5, "partial"    # Z
    .param p6, "note"    # Ljava/lang/String;
    .param p7, "car"    # Lme/kuehle/carreport/db/Car;
    .param p8, "fuelType"    # Lme/kuehle/carreport/db/FuelType;

    .prologue
    .line 186
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 187
    .local v12, "values":Landroid/content/ContentValues;
    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    .line 188
    const-string v1, "_id"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    :cond_0
    const-string v1, "date"

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    const-string v1, "tachometer"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string v1, "volume"

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 193
    const-string v1, "price"

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 194
    const-string v1, "partial"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 195
    const-string v1, "note"

    move-object/from16 v0, p6

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "cars_id"

    invoke-virtual/range {p7 .. p7}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string v2, "fueltypes_id"

    if-nez p8, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v12, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    sget-object v2, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 201
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 202
    .local v11, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "refuelings"

    const/4 v3, 0x0

    invoke-virtual {v11, v1, v3, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    long-to-int p0, v3

    .line 203
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    const/4 v1, -0x1

    if-ne p0, v1, :cond_2

    .line 206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A refueling with this ID does already exist!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    .end local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    invoke-virtual/range {p8 .. p8}, Lme/kuehle/carreport/db/FuelType;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 210
    .restart local v11    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->dataChanged()V

    .line 212
    new-instance v1, Lme/kuehle/carreport/db/Refueling;

    move v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lme/kuehle/carreport/db/Refueling;-><init>(ILjava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)V

    return-object v1
.end method

.method public static create(Ljava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;
    .locals 9
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "mileage"    # I
    .param p2, "volume"    # F
    .param p3, "price"    # F
    .param p4, "partial"    # Z
    .param p5, "note"    # Ljava/lang/String;
    .param p6, "car"    # Lme/kuehle/carreport/db/Car;
    .param p7, "fuelType"    # Lme/kuehle/carreport/db/FuelType;

    .prologue
    .line 179
    const/4 v0, -0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lme/kuehle/carreport/db/Refueling;->create(ILjava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;

    move-result-object v0

    return-object v0
.end method

.method public static getAllForCar(Lme/kuehle/carreport/db/Car;Z)[Lme/kuehle/carreport/db/Refueling;
    .locals 16
    .param p0, "car"    # Lme/kuehle/carreport/db/Car;
    .param p1, "orderDateAsc"    # Z

    .prologue
    .line 217
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v13, "refuelings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lme/kuehle/carreport/db/Refueling;>;"
    sget-object v14, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v14

    .line 220
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v12

    .line 221
    .local v12, "helper":Lme/kuehle/carreport/db/Helper;
    invoke-virtual {v12}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 222
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "refuelings"

    sget-object v2, Lme/kuehle/carreport/db/RefuelingTable;->ALL_COLUMNS:[Ljava/lang/String;

    const-string v3, "cars_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "%s %s"

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v15, "date"

    aput-object v15, v9, v7

    const/4 v15, 0x1

    if-eqz p1, :cond_0

    const-string v7, "ASC"

    :goto_0
    aput-object v7, v9, v15

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 228
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 229
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 230
    const/16 v1, 0x8

    invoke-interface {v11, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v10, 0x0

    .line 232
    .local v10, "fuelType":Lme/kuehle/carreport/db/FuelType;
    :goto_2
    new-instance v1, Lme/kuehle/carreport/db/Refueling;

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    new-instance v3, Ljava/util/Date;

    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x3

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    const/4 v6, 0x4

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    const/4 v7, 0x5

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-lez v7, :cond_2

    const/4 v7, 0x1

    :goto_3
    const/4 v8, 0x6

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p0

    invoke-direct/range {v1 .. v10}, Lme/kuehle/carreport/db/Refueling;-><init>(ILjava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 239
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "helper":Lme/kuehle/carreport/db/Helper;
    :catchall_0
    move-exception v1

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 222
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "helper":Lme/kuehle/carreport/db/Helper;
    :cond_0
    :try_start_1
    const-string v7, "DESC"

    goto :goto_0

    .line 230
    .restart local v11    # "cursor":Landroid/database/Cursor;
    :cond_1
    new-instance v10, Lme/kuehle/carreport/db/FuelType;

    const/16 v1, 0x8

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {v10, v1}, Lme/kuehle/carreport/db/FuelType;-><init>(I)V

    goto :goto_2

    .line 232
    .restart local v10    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    .line 238
    .end local v10    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 239
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lme/kuehle/carreport/db/Refueling;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lme/kuehle/carreport/db/Refueling;

    return-object v1
.end method

.method public static getAllForCar(Lme/kuehle/carreport/db/Car;[Lme/kuehle/carreport/db/FuelType;Z)[Lme/kuehle/carreport/db/Refueling;
    .locals 20
    .param p0, "car"    # Lme/kuehle/carreport/db/Car;
    .param p1, "fuelTypes"    # [Lme/kuehle/carreport/db/FuelType;
    .param p2, "orderDateAsc"    # Z

    .prologue
    .line 246
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v18, "refuelings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lme/kuehle/carreport/db/Refueling;>;"
    const-string v4, "cars_id = ?"

    .line 250
    .local v4, "selection":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND fueltypes_id IS NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 252
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 267
    .local v5, "selectionArgs":[Ljava/lang/String;
    :goto_0
    sget-object v19, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v19

    .line 268
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 269
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "refuelings"

    sget-object v3, Lme/kuehle/carreport/db/RefuelingTable;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "%s %s"

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v11, "date"

    aput-object v11, v10, v8

    const/4 v11, 0x1

    if-eqz p2, :cond_3

    const-string v8, "ASC"

    :goto_1
    aput-object v8, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 274
    .local v16, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 275
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_6

    .line 276
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v15, 0x0

    .line 278
    .local v15, "fuelType":Lme/kuehle/carreport/db/FuelType;
    :goto_3
    new-instance v6, Lme/kuehle/carreport/db/Refueling;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    new-instance v8, Ljava/util/Date;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v10

    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    const/4 v2, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_5

    const/4 v12, 0x1

    :goto_4
    const/4 v2, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, p0

    invoke-direct/range {v6 .. v15}, Lme/kuehle/carreport/db/Refueling;-><init>(ILjava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 285
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v15    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    .end local v16    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 254
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 255
    move-object/from16 v0, p1

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    .line 256
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 257
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_5
    move-object/from16 v0, p1

    array-length v2, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_2

    .line 258
    if-lez v17, :cond_1

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 261
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fueltypes_id = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 262
    add-int/lit8 v2, v17, 0x1

    aget-object v3, p1, v17

    invoke-virtual {v3}, Lme/kuehle/carreport/db/FuelType;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 257
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 264
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 269
    .end local v17    # "i":I
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :try_start_1
    const-string v8, "DESC"

    goto/16 :goto_1

    .line 276
    .restart local v16    # "cursor":Landroid/database/Cursor;
    :cond_4
    new-instance v15, Lme/kuehle/carreport/db/FuelType;

    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v15, v2}, Lme/kuehle/carreport/db/FuelType;-><init>(I)V

    goto/16 :goto_3

    .line 278
    .restart local v15    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 284
    .end local v15    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    :cond_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 285
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lme/kuehle/carreport/db/Refueling;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lme/kuehle/carreport/db/Refueling;

    return-object v2
.end method

.method public static getCount()I
    .locals 6

    .prologue
    .line 292
    sget-object v4, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v4

    .line 293
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v3

    invoke-virtual {v3}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 294
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "SELECT count(*) FROM refuelings"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 296
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 297
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 298
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 299
    monitor-exit v4

    .line 300
    return v0

    .line 299
    .end local v0    # "count":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getFirst()Lme/kuehle/carreport/db/Refueling;
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 305
    sget-object v12, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v12

    .line 306
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 307
    .local v11, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT * FROM refuelings ORDER BY date LIMIT 1"

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 312
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v1, v6, :cond_0

    .line 313
    monitor-exit v12

    .line 325
    :goto_0
    return-object v0

    .line 315
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 316
    const/16 v1, 0x8

    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v9, v0

    .line 318
    .local v9, "fuelType":Lme/kuehle/carreport/db/FuelType;
    :goto_1
    new-instance v0, Lme/kuehle/carreport/db/Refueling;

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v2, Ljava/util/Date;

    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    const/4 v8, 0x5

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-lez v8, :cond_2

    :goto_2
    const/4 v7, 0x6

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lme/kuehle/carreport/db/Car;

    const/4 v13, 0x7

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-direct {v8, v13}, Lme/kuehle/carreport/db/Car;-><init>(I)V

    invoke-direct/range {v0 .. v9}, Lme/kuehle/carreport/db/Refueling;-><init>(ILjava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)V

    .line 322
    .local v0, "fuel":Lme/kuehle/carreport/db/Refueling;
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 323
    monitor-exit v12

    goto :goto_0

    .end local v0    # "fuel":Lme/kuehle/carreport/db/Refueling;
    .end local v9    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 316
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    new-instance v9, Lme/kuehle/carreport/db/FuelType;

    const/16 v1, 0x8

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {v9, v1}, Lme/kuehle/carreport/db/FuelType;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .restart local v9    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    :cond_2
    move v6, v7

    .line 318
    goto :goto_2
.end method

.method public static getLast()Lme/kuehle/carreport/db/Refueling;
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 330
    sget-object v12, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v12

    .line 331
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 332
    .local v11, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "SELECT * FROM refuelings ORDER BY date DESC LIMIT 1"

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 336
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v1, v6, :cond_0

    .line 337
    monitor-exit v12

    .line 349
    :goto_0
    return-object v0

    .line 339
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 340
    const/16 v1, 0x8

    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v9, v0

    .line 342
    .local v9, "fuelType":Lme/kuehle/carreport/db/FuelType;
    :goto_1
    new-instance v0, Lme/kuehle/carreport/db/Refueling;

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v2, Ljava/util/Date;

    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    const/4 v8, 0x5

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-lez v8, :cond_2

    :goto_2
    const/4 v7, 0x6

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lme/kuehle/carreport/db/Car;

    const/4 v13, 0x7

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-direct {v8, v13}, Lme/kuehle/carreport/db/Car;-><init>(I)V

    invoke-direct/range {v0 .. v9}, Lme/kuehle/carreport/db/Refueling;-><init>(ILjava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)V

    .line 346
    .local v0, "fuel":Lme/kuehle/carreport/db/Refueling;
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 347
    monitor-exit v12

    goto :goto_0

    .end local v0    # "fuel":Lme/kuehle/carreport/db/Refueling;
    .end local v9    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 340
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_1
    new-instance v9, Lme/kuehle/carreport/db/FuelType;

    const/16 v1, 0x8

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {v9, v1}, Lme/kuehle/carreport/db/FuelType;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .restart local v9    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    :cond_2
    move v6, v7

    .line 342
    goto :goto_2
.end method


# virtual methods
.method public delete()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 143
    invoke-virtual {p0}, Lme/kuehle/carreport/db/Refueling;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    sget-object v2, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 145
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 146
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "refuelings"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lme/kuehle/carreport/db/Refueling;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 148
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->dataChanged()V

    .line 150
    iput-boolean v7, p0, Lme/kuehle/carreport/db/Refueling;->deleted:Z

    .line 152
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void

    .line 148
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
    .line 127
    iget-object v0, p0, Lme/kuehle/carreport/db/Refueling;->car:Lme/kuehle/carreport/db/Car;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lme/kuehle/carreport/db/Refueling;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getFuelType()Lme/kuehle/carreport/db/FuelType;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lme/kuehle/carreport/db/Refueling;->fuelType:Lme/kuehle/carreport/db/FuelType;

    return-object v0
.end method

.method public getMileage()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lme/kuehle/carreport/db/Refueling;->mileage:I

    return v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lme/kuehle/carreport/db/Refueling;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lme/kuehle/carreport/db/Refueling;->price:F

    return v0
.end method

.method public getVolume()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lme/kuehle/carreport/db/Refueling;->volume:F

    return v0
.end method

.method public isPartial()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lme/kuehle/carreport/db/Refueling;->partial:Z

    return v0
.end method

.method public save()V
    .locals 8

    .prologue
    .line 155
    invoke-virtual {p0}, Lme/kuehle/carreport/db/Refueling;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 157
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "date"

    iget-object v3, p0, Lme/kuehle/carreport/db/Refueling;->date:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 158
    const-string v2, "tachometer"

    iget v3, p0, Lme/kuehle/carreport/db/Refueling;->mileage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v2, "volume"

    iget v3, p0, Lme/kuehle/carreport/db/Refueling;->volume:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 160
    const-string v2, "price"

    iget v3, p0, Lme/kuehle/carreport/db/Refueling;->price:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 161
    const-string v2, "partial"

    iget-boolean v3, p0, Lme/kuehle/carreport/db/Refueling;->partial:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 162
    const-string v2, "note"

    iget-object v3, p0, Lme/kuehle/carreport/db/Refueling;->note:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v2, "cars_id"

    iget-object v3, p0, Lme/kuehle/carreport/db/Refueling;->car:Lme/kuehle/carreport/db/Car;

    invoke-virtual {v3}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string v3, "fueltypes_id"

    iget-object v2, p0, Lme/kuehle/carreport/db/Refueling;->fuelType:Lme/kuehle/carreport/db/FuelType;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    sget-object v3, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 168
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 169
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "refuelings"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lme/kuehle/carreport/db/Refueling;->id:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 171
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Helper;->dataChanged()V

    .line 174
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 164
    .restart local v1    # "values":Landroid/content/ContentValues;
    :cond_1
    iget-object v2, p0, Lme/kuehle/carreport/db/Refueling;->fuelType:Lme/kuehle/carreport/db/FuelType;

    invoke-virtual {v2}, Lme/kuehle/carreport/db/FuelType;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 171
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
    .line 131
    iput-object p1, p0, Lme/kuehle/carreport/db/Refueling;->car:Lme/kuehle/carreport/db/Car;

    .line 132
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 83
    iput-object p1, p0, Lme/kuehle/carreport/db/Refueling;->date:Ljava/util/Date;

    .line 84
    return-void
.end method

.method public setFuelType(Lme/kuehle/carreport/db/FuelType;)V
    .locals 0
    .param p1, "fuelType"    # Lme/kuehle/carreport/db/FuelType;

    .prologue
    .line 139
    iput-object p1, p0, Lme/kuehle/carreport/db/Refueling;->fuelType:Lme/kuehle/carreport/db/FuelType;

    .line 140
    return-void
.end method

.method public setMileage(I)V
    .locals 0
    .param p1, "mileage"    # I

    .prologue
    .line 91
    iput p1, p0, Lme/kuehle/carreport/db/Refueling;->mileage:I

    .line 92
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 0
    .param p1, "note"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lme/kuehle/carreport/db/Refueling;->note:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setPartial(Z)V
    .locals 0
    .param p1, "partial"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lme/kuehle/carreport/db/Refueling;->partial:Z

    .line 116
    return-void
.end method

.method public setPrice(F)V
    .locals 0
    .param p1, "price"    # F

    .prologue
    .line 107
    iput p1, p0, Lme/kuehle/carreport/db/Refueling;->price:F

    .line 108
    return-void
.end method

.method public setVolume(F)V
    .locals 0
    .param p1, "volume"    # F

    .prologue
    .line 99
    iput p1, p0, Lme/kuehle/carreport/db/Refueling;->volume:F

    .line 100
    return-void
.end method

.class public Lme/kuehle/carreport/db/OtherCost;
.super Lme/kuehle/carreport/db/AbstractItem;
.source "OtherCost.java"


# instance fields
.field private car:Lme/kuehle/carreport/db/Car;

.field private date:Ljava/util/Date;

.field private mileage:I

.field private note:Ljava/lang/String;

.field private price:F

.field private recurrence:Lme/kuehle/carreport/util/Recurrence;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 11
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x1

    .line 38
    invoke-direct {p0}, Lme/kuehle/carreport/db/AbstractItem;-><init>()V

    .line 39
    sget-object v9, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v9

    .line 40
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 41
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "othercosts"

    sget-object v2, Lme/kuehle/carreport/db/OtherCostTable;->ALL_COLUMNS:[Ljava/lang/String;

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

    .line 44
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eq v1, v10, :cond_0

    .line 45
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An other cost with this ID does not exist!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 50
    iput p1, p0, Lme/kuehle/carreport/db/OtherCost;->id:I

    .line 51
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/kuehle/carreport/db/OtherCost;->title:Ljava/lang/String;

    .line 52
    new-instance v1, Ljava/util/Date;

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lme/kuehle/carreport/db/OtherCost;->date:Ljava/util/Date;

    .line 53
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lme/kuehle/carreport/db/OtherCost;->mileage:I

    .line 54
    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    iput v1, p0, Lme/kuehle/carreport/db/OtherCost;->price:F

    .line 55
    new-instance v1, Lme/kuehle/carreport/util/Recurrence;

    const/4 v2, 0x5

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lme/kuehle/carreport/util/RecurrenceInterval;->getByValue(I)Lme/kuehle/carreport/util/RecurrenceInterval;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lme/kuehle/carreport/util/Recurrence;-><init>(Lme/kuehle/carreport/util/RecurrenceInterval;I)V

    iput-object v1, p0, Lme/kuehle/carreport/db/OtherCost;->recurrence:Lme/kuehle/carreport/util/Recurrence;

    .line 58
    const/4 v1, 0x7

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/kuehle/carreport/db/OtherCost;->note:Ljava/lang/String;

    .line 59
    new-instance v1, Lme/kuehle/carreport/db/Car;

    const/16 v2, 0x8

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v1, v2}, Lme/kuehle/carreport/db/Car;-><init>(I)V

    iput-object v1, p0, Lme/kuehle/carreport/db/OtherCost;->car:Lme/kuehle/carreport/db/Car;

    .line 60
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 62
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/util/Date;IFLme/kuehle/carreport/util/Recurrence;Ljava/lang/String;Lme/kuehle/carreport/db/Car;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/util/Date;
    .param p4, "mileage"    # I
    .param p5, "price"    # F
    .param p6, "recurrence"    # Lme/kuehle/carreport/util/Recurrence;
    .param p7, "note"    # Ljava/lang/String;
    .param p8, "car"    # Lme/kuehle/carreport/db/Car;

    .prologue
    .line 66
    invoke-direct {p0}, Lme/kuehle/carreport/db/AbstractItem;-><init>()V

    .line 67
    iput p1, p0, Lme/kuehle/carreport/db/OtherCost;->id:I

    .line 68
    iput-object p2, p0, Lme/kuehle/carreport/db/OtherCost;->title:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lme/kuehle/carreport/db/OtherCost;->date:Ljava/util/Date;

    .line 70
    iput p4, p0, Lme/kuehle/carreport/db/OtherCost;->mileage:I

    .line 71
    iput p5, p0, Lme/kuehle/carreport/db/OtherCost;->price:F

    .line 72
    iput-object p6, p0, Lme/kuehle/carreport/db/OtherCost;->recurrence:Lme/kuehle/carreport/util/Recurrence;

    .line 73
    iput-object p7, p0, Lme/kuehle/carreport/db/OtherCost;->note:Ljava/lang/String;

    .line 74
    iput-object p8, p0, Lme/kuehle/carreport/db/OtherCost;->car:Lme/kuehle/carreport/db/Car;

    .line 75
    return-void
.end method

.method public static create(ILjava/lang/String;Ljava/util/Date;IFLme/kuehle/carreport/util/Recurrence;Ljava/lang/String;Lme/kuehle/carreport/db/Car;)Lme/kuehle/carreport/db/OtherCost;
    .locals 12
    .param p0, "id"    # I
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/util/Date;
    .param p3, "mileage"    # I
    .param p4, "price"    # F
    .param p5, "recurrence"    # Lme/kuehle/carreport/util/Recurrence;
    .param p6, "note"    # Ljava/lang/String;
    .param p7, "car"    # Lme/kuehle/carreport/db/Car;

    .prologue
    .line 174
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 175
    .local v11, "values":Landroid/content/ContentValues;
    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    .line 176
    const-string v1, "_id"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    :cond_0
    const-string v1, "title"

    invoke-virtual {v11, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "date"

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 180
    const-string v1, "tachometer"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    const-string v1, "price"

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 182
    const-string v1, "repeat_interval"

    invoke-virtual/range {p5 .. p5}, Lme/kuehle/carreport/util/Recurrence;->getInterval()Lme/kuehle/carreport/util/RecurrenceInterval;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/util/RecurrenceInterval;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    const-string v1, "repeat_multiplier"

    invoke-virtual/range {p5 .. p5}, Lme/kuehle/carreport/util/Recurrence;->getMultiplier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    const-string v1, "note"

    move-object/from16 v0, p6

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "cars_id"

    invoke-virtual/range {p7 .. p7}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    sget-object v2, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 189
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 190
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "othercosts"

    const/4 v3, 0x0

    invoke-virtual {v10, v1, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    long-to-int p0, v3

    .line 191
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    .line 194
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An other cost with this ID does already exist!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    .end local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 198
    .restart local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->dataChanged()V

    .line 200
    new-instance v1, Lme/kuehle/carreport/db/OtherCost;

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lme/kuehle/carreport/db/OtherCost;-><init>(ILjava/lang/String;Ljava/util/Date;IFLme/kuehle/carreport/util/Recurrence;Ljava/lang/String;Lme/kuehle/carreport/db/Car;)V

    return-object v1
.end method

.method public static create(Ljava/lang/String;Ljava/util/Date;IFLme/kuehle/carreport/util/Recurrence;Ljava/lang/String;Lme/kuehle/carreport/db/Car;)Lme/kuehle/carreport/db/OtherCost;
    .locals 8
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "mileage"    # I
    .param p3, "price"    # F
    .param p4, "recurrence"    # Lme/kuehle/carreport/util/Recurrence;
    .param p5, "note"    # Ljava/lang/String;
    .param p6, "car"    # Lme/kuehle/carreport/db/Car;

    .prologue
    .line 169
    const/4 v0, -0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lme/kuehle/carreport/db/OtherCost;->create(ILjava/lang/String;Ljava/util/Date;IFLme/kuehle/carreport/util/Recurrence;Ljava/lang/String;Lme/kuehle/carreport/db/Car;)Lme/kuehle/carreport/db/OtherCost;

    move-result-object v0

    return-object v0
.end method

.method public static getAllForCar(Lme/kuehle/carreport/db/Car;Z)[Lme/kuehle/carreport/db/OtherCost;
    .locals 14
    .param p0, "car"    # Lme/kuehle/carreport/db/Car;
    .param p1, "orderDateAsc"    # Z

    .prologue
    .line 205
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v11, "others":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lme/kuehle/carreport/db/OtherCost;>;"
    sget-object v12, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v12

    .line 208
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 209
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "othercosts"

    sget-object v2, Lme/kuehle/carreport/db/OtherCostTable;->ALL_COLUMNS:[Ljava/lang/String;

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

    const-string v8, "%s %s"

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v13, "date"

    aput-object v13, v9, v7

    const/4 v13, 0x1

    if-eqz p1, :cond_0

    const-string v7, "ASC"

    :goto_0
    aput-object v7, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 215
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 216
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 217
    new-instance v1, Lme/kuehle/carreport/db/OtherCost;

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    const/4 v5, 0x2

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    const/4 v5, 0x3

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x4

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    new-instance v7, Lme/kuehle/carreport/util/Recurrence;

    const/4 v8, 0x5

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Lme/kuehle/carreport/util/RecurrenceInterval;->getByValue(I)Lme/kuehle/carreport/util/RecurrenceInterval;

    move-result-object v8

    const/4 v9, 0x6

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-direct {v7, v8, v9}, Lme/kuehle/carreport/util/Recurrence;-><init>(Lme/kuehle/carreport/util/RecurrenceInterval;I)V

    const/4 v8, 0x7

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v9, p0

    invoke-direct/range {v1 .. v9}, Lme/kuehle/carreport/db/OtherCost;-><init>(ILjava/lang/String;Ljava/util/Date;IFLme/kuehle/carreport/util/Recurrence;Ljava/lang/String;Lme/kuehle/carreport/db/Car;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 226
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 209
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :try_start_1
    const-string v7, "DESC"

    goto :goto_0

    .line 225
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 226
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lme/kuehle/carreport/db/OtherCost;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lme/kuehle/carreport/db/OtherCost;

    return-object v1
.end method

.method public static getAllTitles()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v2, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v4

    .line 235
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v3

    invoke-virtual {v3}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 236
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "SELECT DISTINCT %s FROM %s ORDER BY %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "title"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "othercosts"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "title"

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 241
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 242
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 243
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 247
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 246
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 247
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
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

    .line 134
    invoke-virtual {p0}, Lme/kuehle/carreport/db/OtherCost;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    sget-object v2, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 136
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 137
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "othercosts"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lme/kuehle/carreport/db/OtherCost;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 139
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Helper;->dataChanged()V

    .line 141
    iput-boolean v7, p0, Lme/kuehle/carreport/db/OtherCost;->deleted:Z

    .line 143
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void

    .line 139
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
    .line 126
    iget-object v0, p0, Lme/kuehle/carreport/db/OtherCost;->car:Lme/kuehle/carreport/db/Car;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lme/kuehle/carreport/db/OtherCost;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getMileage()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lme/kuehle/carreport/db/OtherCost;->mileage:I

    return v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lme/kuehle/carreport/db/OtherCost;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lme/kuehle/carreport/db/OtherCost;->price:F

    return v0
.end method

.method public getRecurrence()Lme/kuehle/carreport/util/Recurrence;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lme/kuehle/carreport/db/OtherCost;->recurrence:Lme/kuehle/carreport/util/Recurrence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lme/kuehle/carreport/db/OtherCost;->title:Ljava/lang/String;

    return-object v0
.end method

.method public save()V
    .locals 8

    .prologue
    .line 146
    invoke-virtual {p0}, Lme/kuehle/carreport/db/OtherCost;->isDeleted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 148
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "title"

    iget-object v3, p0, Lme/kuehle/carreport/db/OtherCost;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v2, "date"

    iget-object v3, p0, Lme/kuehle/carreport/db/OtherCost;->date:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 150
    const-string v2, "tachometer"

    iget v3, p0, Lme/kuehle/carreport/db/OtherCost;->mileage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    const-string v2, "price"

    iget v3, p0, Lme/kuehle/carreport/db/OtherCost;->price:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 152
    const-string v2, "repeat_interval"

    iget-object v3, p0, Lme/kuehle/carreport/db/OtherCost;->recurrence:Lme/kuehle/carreport/util/Recurrence;

    invoke-virtual {v3}, Lme/kuehle/carreport/util/Recurrence;->getInterval()Lme/kuehle/carreport/util/RecurrenceInterval;

    move-result-object v3

    invoke-virtual {v3}, Lme/kuehle/carreport/util/RecurrenceInterval;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    const-string v2, "repeat_multiplier"

    iget-object v3, p0, Lme/kuehle/carreport/db/OtherCost;->recurrence:Lme/kuehle/carreport/util/Recurrence;

    invoke-virtual {v3}, Lme/kuehle/carreport/util/Recurrence;->getMultiplier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v2, "note"

    iget-object v3, p0, Lme/kuehle/carreport/db/OtherCost;->note:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v2, "cars_id"

    iget-object v3, p0, Lme/kuehle/carreport/db/OtherCost;->car:Lme/kuehle/carreport/db/Car;

    invoke-virtual {v3}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    sget-object v3, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 159
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 160
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "othercosts"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lme/kuehle/carreport/db/OtherCost;->id:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 162
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Helper;->dataChanged()V

    .line 165
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 162
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
    .line 130
    iput-object p1, p0, Lme/kuehle/carreport/db/OtherCost;->car:Lme/kuehle/carreport/db/Car;

    .line 131
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 90
    iput-object p1, p0, Lme/kuehle/carreport/db/OtherCost;->date:Ljava/util/Date;

    .line 91
    return-void
.end method

.method public setMileage(I)V
    .locals 0
    .param p1, "mileage"    # I

    .prologue
    .line 98
    iput p1, p0, Lme/kuehle/carreport/db/OtherCost;->mileage:I

    .line 99
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 0
    .param p1, "note"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lme/kuehle/carreport/db/OtherCost;->note:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setPrice(F)V
    .locals 0
    .param p1, "price"    # F

    .prologue
    .line 106
    iput p1, p0, Lme/kuehle/carreport/db/OtherCost;->price:F

    .line 107
    return-void
.end method

.method public setRecurrence(Lme/kuehle/carreport/util/Recurrence;)V
    .locals 0
    .param p1, "recurrence"    # Lme/kuehle/carreport/util/Recurrence;

    .prologue
    .line 114
    iput-object p1, p0, Lme/kuehle/carreport/db/OtherCost;->recurrence:Lme/kuehle/carreport/util/Recurrence;

    .line 115
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lme/kuehle/carreport/db/OtherCost;->title:Ljava/lang/String;

    .line 83
    return-void
.end method

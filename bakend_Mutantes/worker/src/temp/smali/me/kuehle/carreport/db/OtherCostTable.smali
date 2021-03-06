.class public Lme/kuehle/carreport/db/OtherCostTable;
.super Ljava/lang/Object;
.source "OtherCostTable.java"


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field public static final COL_CAR:Ljava/lang/String; = "cars_id"

.field public static final COL_DATE:Ljava/lang/String; = "date"

.field public static final COL_NOTE:Ljava/lang/String; = "note"

.field public static final COL_PRICE:Ljava/lang/String; = "price"

.field public static final COL_REP_INT:Ljava/lang/String; = "repeat_interval"

.field public static final COL_REP_MULTI:Ljava/lang/String; = "repeat_multiplier"

.field public static final COL_TACHO:Ljava/lang/String; = "tachometer"

.field public static final COL_TITLE:Ljava/lang/String; = "title"

.field public static final NAME:Ljava/lang/String; = "othercosts"

.field private static final STMT_CREATE:Ljava/lang/String; = "CREATE TABLE othercosts( _id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT NOT NULL, date INTEGER NOT NULL, tachometer INTEGER NOT NULL DEFAULT -1, price REAL NOT NULL, repeat_interval INTEGER NOT NULL DEFAULT 0, repeat_multiplier INTEGER NOT NULL DEFAULT 1, note TEXT NOT NULL, cars_id INTEGER NOT NULL, FOREIGN KEY(cars_id) REFERENCES cars(_id) ON UPDATE CASCADE ON DELETE CASCADE);"

.field private static final STMT_UPGRADE_2:[Ljava/lang/String;

.field private static final STMT_UPGRADE_3:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 36
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "title"

    aput-object v1, v0, v7

    const-string v1, "date"

    aput-object v1, v0, v8

    const-string v1, "tachometer"

    aput-object v1, v0, v9

    const-string v1, "price"

    aput-object v1, v0, v10

    const/4 v1, 0x5

    const-string v2, "repeat_interval"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "repeat_multiplier"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "note"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cars_id"

    aput-object v2, v0, v1

    sput-object v0, Lme/kuehle/carreport/db/OtherCostTable;->ALL_COLUMNS:[Ljava/lang/String;

    .line 55
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "ALTER TABLE othercosts ADD COLUMN repeat_interval INTEGER NOT NULL DEFAULT 0;"

    aput-object v1, v0, v6

    const-string v1, "ALTER TABLE othercosts ADD COLUMN repeat_multiplier INTEGER NOT NULL DEFAULT 1;"

    aput-object v1, v0, v7

    sput-object v0, Lme/kuehle/carreport/db/OtherCostTable;->STMT_UPGRADE_2:[Ljava/lang/String;

    .line 61
    new-array v0, v10, [Ljava/lang/String;

    const-string v1, "CREATE TABLE othercosts( _id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT NOT NULL, date INTEGER NOT NULL, tachometer INTEGER NOT NULL DEFAULT -1, price REAL NOT NULL, repeat_interval INTEGER NOT NULL DEFAULT 0, repeat_multiplier INTEGER NOT NULL DEFAULT 1, note TEXT NOT NULL, cars_id INTEGER NOT NULL, FOREIGN KEY(cars_id) REFERENCES cars(_id) ON UPDATE CASCADE ON DELETE CASCADE);"

    const-string v2, "othercosts"

    const-string v3, "othercosts2"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO othercosts2 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v6

    const-string v4, "title"

    aput-object v4, v3, v7

    const-string v4, "date"

    aput-object v4, v3, v8

    const-string v4, "tachometer"

    aput-object v4, v3, v9

    const-string v4, "price"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "repeat_interval"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "repeat_multiplier"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "note"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "cars_id"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lme/kuehle/carreport/util/Strings;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "othercosts._id"

    aput-object v4, v3, v6

    const-string v4, "title"

    aput-object v4, v3, v7

    const-string v4, "date"

    aput-object v4, v3, v8

    const-string v4, "tachometer"

    aput-object v4, v3, v9

    const-string v4, "price"

    aput-object v4, v3, v10

    const/4 v4, 0x5

    const-string v5, "repeat_interval"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "repeat_multiplier"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "note"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "cars_id"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lme/kuehle/carreport/util/Strings;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "othercosts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "JOIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "othercosts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cars_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "DROP TABLE othercosts;"

    aput-object v1, v0, v8

    const-string v1, "ALTER TABLE othercosts2 RENAME TO othercosts;"

    aput-object v1, v0, v9

    sput-object v0, Lme/kuehle/carreport/db/OtherCostTable;->STMT_UPGRADE_3:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 72
    const-string v0, "CREATE TABLE othercosts( _id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT NOT NULL, date INTEGER NOT NULL, tachometer INTEGER NOT NULL DEFAULT -1, price REAL NOT NULL, repeat_interval INTEGER NOT NULL DEFAULT 0, repeat_multiplier INTEGER NOT NULL DEFAULT 1, note TEXT NOT NULL, cars_id INTEGER NOT NULL, FOREIGN KEY(cars_id) REFERENCES cars(_id) ON UPDATE CASCADE ON DELETE CASCADE);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 77
    const/4 v4, 0x2

    if-ge p1, v4, :cond_0

    .line 78
    sget-object v0, Lme/kuehle/carreport/db/OtherCostTable;->STMT_UPGRADE_2:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 79
    .local v3, "stmt":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "stmt":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x3

    if-ge p1, v4, :cond_1

    .line 84
    sget-object v0, Lme/kuehle/carreport/db/OtherCostTable;->STMT_UPGRADE_3:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 85
    .restart local v3    # "stmt":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 88
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "stmt":Ljava/lang/String;
    :cond_1
    return-void
.end method

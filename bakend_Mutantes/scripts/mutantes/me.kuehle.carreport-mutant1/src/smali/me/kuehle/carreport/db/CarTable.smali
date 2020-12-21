.class public Lme/kuehle/carreport/db/CarTable;
.super Ljava/lang/Object;
.source "CarTable.java"


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field public static final COL_COLOR:Ljava/lang/String; = "color"

.field public static final COL_NAME:Ljava/lang/String; = "name"

.field public static final COL_SUSPENDED:Ljava/lang/String; = "suspended_since"

.field public static final NAME:Ljava/lang/String; = "cars"

.field private static final STMT_CREATE:Ljava/lang/String; = "CREATE TABLE cars( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, color INTEGER NOT NULL, suspended_since INTEGER DEFAULT NULL);"

.field private static final STMT_INSERT_DEFAULT:Ljava/lang/String; = "INSERT INTO cars(_id, name, color) VALUES(1, \'Default Car\', -16776961);"

.field private static final STMT_UPGRADE_4:Ljava/lang/String; = "ALTER TABLE cars ADD COLUMN suspended_since INTEGER DEFAULT NULL;"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suspended_since"

    aput-object v2, v0, v1

    sput-object v0, Lme/kuehle/carreport/db/CarTable;->ALL_COLUMNS:[Ljava/lang/String;

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
    .line 48
    const-string v0, "CREATE TABLE cars( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, color INTEGER NOT NULL, suspended_since INTEGER DEFAULT NULL);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    const-string v0, "INSERT INTO cars(_id, name, color) VALUES(1, \'Default Car\', -16776961);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 54
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    .line 55
    const-string v0, "ALTER TABLE cars ADD COLUMN suspended_since INTEGER DEFAULT NULL;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

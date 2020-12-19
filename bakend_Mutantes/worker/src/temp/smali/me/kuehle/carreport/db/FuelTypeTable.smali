.class public Lme/kuehle/carreport/db/FuelTypeTable;
.super Ljava/lang/Object;
.source "FuelTypeTable.java"


# static fields
.field public static final ALL_COLUMNS:[Ljava/lang/String;

.field public static final COL_CAR:Ljava/lang/String; = "cars_id"

.field public static final COL_NAME:Ljava/lang/String; = "name"

.field public static final COL_TANK:Ljava/lang/String; = "tank"

.field public static final NAME:Ljava/lang/String; = "fueltypes"

.field private static final STMT_CREATE:Ljava/lang/String; = "CREATE TABLE fueltypes( _id INTEGER PRIMARY KEY AUTOINCREMENT, cars_id INTEGER NOT NULL, name TEXT NOT NULL, tank INTEGER NOT NULL, FOREIGN KEY(cars_id) REFERENCES cars(_id) ON UPDATE CASCADE ON DELETE CASCADE);"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cars_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tank"

    aput-object v2, v0, v1

    sput-object v0, Lme/kuehle/carreport/db/FuelTypeTable;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 40
    const-string v0, "CREATE TABLE fueltypes( _id INTEGER PRIMARY KEY AUTOINCREMENT, cars_id INTEGER NOT NULL, name TEXT NOT NULL, tank INTEGER NOT NULL, FOREIGN KEY(cars_id) REFERENCES cars(_id) ON UPDATE CASCADE ON DELETE CASCADE);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 45
    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    .line 46
    invoke-static {p0}, Lme/kuehle/carreport/db/FuelTypeTable;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    :cond_0
    return-void
.end method

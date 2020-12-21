.class Lme/kuehle/carreport/reports/FuelPriceReport$ReportGraphData;
.super Lme/kuehle/carreport/reports/AbstractReportGraphData;
.source "FuelPriceReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/reports/FuelPriceReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReportGraphData"
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/reports/FuelPriceReport;


# direct methods
.method public constructor <init>(Lme/kuehle/carreport/reports/FuelPriceReport;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 10
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "fuelType"    # Ljava/lang/String;
    .param p4, "color"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 82
    iput-object p1, p0, Lme/kuehle/carreport/reports/FuelPriceReport$ReportGraphData;->this$0:Lme/kuehle/carreport/reports/FuelPriceReport;

    .line 83
    invoke-direct {p0, p2, p3, p4}, Lme/kuehle/carreport/reports/AbstractReportGraphData;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 88
    if-nez p3, :cond_0

    .line 89
    const-string v3, "SELECT %date, (%price / %volume) AS fuelprice FROM %refuelings WHERE %fueltypes_id IS NULL ORDER BY %date ASC"

    .line 92
    .local v3, "query":Ljava/lang/String;
    const/4 v0, 0x0

    .line 101
    .local v0, "args":[Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v4, "replacements":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "%refuelings"

    const-string v6, "refuelings"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v5, "%date"

    const-string v6, "date"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v5, "%price"

    const-string v6, "price"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v5, "%volume"

    const-string v6, "volume"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v5, "%fueltypes_id"

    const-string v6, "fueltypes_id"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v5, "%fueltypes"

    const-string v6, "fueltypes"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v5, "%id"

    const-string v6, "_id"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v5, "%name"

    const-string v6, "name"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {v3, v4}, Lme/kuehle/carreport/util/Strings;->replaceMap(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v5

    invoke-virtual {v5}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 114
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 115
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    .line 116
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 117
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_1

    .line 118
    iget-object v5, p0, Lme/kuehle/carreport/reports/FuelPriceReport$ReportGraphData;->xValues:Ljava/util/Vector;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v5, p0, Lme/kuehle/carreport/reports/FuelPriceReport$ReportGraphData;->yValues:Ljava/util/Vector;

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 94
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "query":Ljava/lang/String;
    .end local v4    # "replacements":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v3, "SELECT %date, (%price / %volume) AS fuelprice FROM %refuelings JOIN %fueltypes ON %refuelings.%fueltypes_id = %fueltypes.%id WHERE %fueltypes.%name = ? ORDER BY %date ASC"

    .line 98
    .restart local v3    # "query":Ljava/lang/String;
    new-array v0, v9, [Ljava/lang/String;

    aput-object p3, v0, v8

    .restart local v0    # "args":[Ljava/lang/String;
    goto/16 :goto_0

    .line 123
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "replacements":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 124
    return-void
.end method

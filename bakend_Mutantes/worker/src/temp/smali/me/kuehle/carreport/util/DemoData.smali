.class public Lme/kuehle/carreport/util/DemoData;
.super Ljava/lang/Object;
.source "DemoData.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDemoData()V
    .locals 34

    .prologue
    .line 33
    new-instance v33, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MM.yyyy kk:mm"

    move-object/from16 v0, v33

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 36
    .local v33, "date":Ljava/text/DateFormat;
    :try_start_0
    const-string v1, "Fiat Punto"

    const v2, -0xffff01

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lme/kuehle/carreport/db/Car;->create(Ljava/lang/String;ILjava/util/Date;)Lme/kuehle/carreport/db/Car;

    move-result-object v7

    .line 37
    .local v7, "car1":Lme/kuehle/carreport/db/Car;
    const-string v1, "Benzin E5"

    const/4 v2, 0x1

    invoke-static {v7, v1, v2}, Lme/kuehle/carreport/db/FuelType;->create(Lme/kuehle/carreport/db/Car;Ljava/lang/String;I)Lme/kuehle/carreport/db/FuelType;

    move-result-object v8

    .line 38
    .local v8, "fuelType1":Lme/kuehle/carreport/db/FuelType;
    const-string v1, "Benzin E10"

    const/4 v2, 0x1

    invoke-static {v7, v1, v2}, Lme/kuehle/carreport/db/FuelType;->create(Lme/kuehle/carreport/db/Car;Ljava/lang/String;I)Lme/kuehle/carreport/db/FuelType;

    move-result-object v16

    .line 39
    .local v16, "fuelType2":Lme/kuehle/carreport/db/FuelType;
    const-string v1, "01.06.2012 08:04"

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    const v2, 0x1d5ec

    const/high16 v3, 0x42240000    # 41.0f

    const v4, 0x42728f5c    # 60.64f

    const/4 v5, 0x0

    const-string v6, ""

    invoke-static/range {v1 .. v8}, Lme/kuehle/carreport/db/Refueling;->create(Ljava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;

    .line 40
    const-string v1, "13.06.2012 08:10"

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    const v2, 0x1d862

    const/high16 v3, 0x42300000    # 44.0f

    const v4, 0x4283f0a4    # 65.97f

    const/4 v5, 0x0

    const-string v6, ""

    invoke-static/range {v1 .. v8}, Lme/kuehle/carreport/db/Refueling;->create(Ljava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;

    .line 41
    const-string v1, "28.06.2012 07:43"

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    const v2, 0x1da7e

    const/high16 v3, 0x42140000    # 37.0f

    const v4, 0x4260cccd    # 56.2f

    const/4 v5, 0x1

    const-string v6, ""

    invoke-static/range {v1 .. v8}, Lme/kuehle/carreport/db/Refueling;->create(Ljava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;

    .line 42
    const-string v1, "10.07.2012 18:02"

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    const v2, 0x1dcae

    const/high16 v3, 0x42200000    # 40.0f

    const v4, 0x426e3d71    # 59.56f

    const/4 v5, 0x0

    const-string v6, ""

    invoke-static/range {v1 .. v8}, Lme/kuehle/carreport/db/Refueling;->create(Ljava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;

    .line 43
    const-string v1, "25.07.2012 08:03"

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    const v10, 0x1df15

    const/high16 v11, 0x42280000    # 42.0f

    const v12, 0x4283cccd    # 65.9f

    const/4 v13, 0x0

    const-string v14, ""

    move-object v15, v7

    invoke-static/range {v9 .. v16}, Lme/kuehle/carreport/db/Refueling;->create(Ljava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;

    .line 44
    const-string v1, "08.08.2012 17:14"

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    const v10, 0x1e145

    const/high16 v11, 0x421c0000    # 39.0f

    const v12, 0x4269d70a    # 58.46f

    const/4 v13, 0x0

    const-string v14, ""

    move-object v15, v7

    invoke-static/range {v9 .. v16}, Lme/kuehle/carreport/db/Refueling;->create(Ljava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;

    .line 45
    const-string v1, "27.08.2012 08:21"

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    const v2, 0x1e37f

    const/high16 v3, 0x42240000    # 41.0f

    const v4, 0x42791eb8    # 62.28f

    const/4 v5, 0x0

    const-string v6, ""

    invoke-static/range {v1 .. v8}, Lme/kuehle/carreport/db/Refueling;->create(Ljava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;

    .line 46
    const-string v1, "05.09.2012 08:01"

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    const v2, 0x1e598

    const/high16 v3, 0x42340000    # 45.0f

    const v4, 0x428670a4    # 67.22f

    const/4 v5, 0x0

    const-string v6, ""

    invoke-static/range {v1 .. v8}, Lme/kuehle/carreport/db/Refueling;->create(Ljava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;

    .line 47
    const-string v1, "Rechtes Abblendlicht"

    const-string v2, "15.06.2012 07:25"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    const v3, 0x1d8b1

    const/high16 v4, 0x41200000    # 10.0f

    new-instance v5, Lme/kuehle/carreport/util/Recurrence;

    sget-object v6, Lme/kuehle/carreport/util/RecurrenceInterval;->ONCE:Lme/kuehle/carreport/util/RecurrenceInterval;

    invoke-direct {v5, v6}, Lme/kuehle/carreport/util/Recurrence;-><init>(Lme/kuehle/carreport/util/RecurrenceInterval;)V

    const-string v6, ""

    invoke-static/range {v1 .. v7}, Lme/kuehle/carreport/db/OtherCost;->create(Ljava/lang/String;Ljava/util/Date;IFLme/kuehle/carreport/util/Recurrence;Ljava/lang/String;Lme/kuehle/carreport/db/Car;)Lme/kuehle/carreport/db/OtherCost;

    .line 48
    const-string v1, "Steuern"

    const-string v2, "01.06.2012 00:00"

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    const/4 v3, -0x1

    const/high16 v4, 0x43520000    # 210.0f

    new-instance v5, Lme/kuehle/carreport/util/Recurrence;

    sget-object v6, Lme/kuehle/carreport/util/RecurrenceInterval;->YEAR:Lme/kuehle/carreport/util/RecurrenceInterval;

    invoke-direct {v5, v6}, Lme/kuehle/carreport/util/Recurrence;-><init>(Lme/kuehle/carreport/util/RecurrenceInterval;)V

    const-string v6, ""

    invoke-static/range {v1 .. v7}, Lme/kuehle/carreport/db/OtherCost;->create(Ljava/lang/String;Ljava/util/Date;IFLme/kuehle/carreport/util/Recurrence;Ljava/lang/String;Lme/kuehle/carreport/db/Car;)Lme/kuehle/carreport/db/OtherCost;

    .line 50
    const-string v1, "Opel Astra"

    const/high16 v2, -0x10000

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lme/kuehle/carreport/db/Car;->create(Ljava/lang/String;ILjava/util/Date;)Lme/kuehle/carreport/db/Car;

    move-result-object v23

    .line 51
    .local v23, "car2":Lme/kuehle/carreport/db/Car;
    const-string v1, "Benzin"

    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-static {v0, v1, v2}, Lme/kuehle/carreport/db/FuelType;->create(Lme/kuehle/carreport/db/Car;Ljava/lang/String;I)Lme/kuehle/carreport/db/FuelType;

    move-result-object v24

    .line 52
    .local v24, "fuelType3":Lme/kuehle/carreport/db/FuelType;
    const-string v1, "Gas"

    const/4 v2, 0x2

    move-object/from16 v0, v23

    invoke-static {v0, v1, v2}, Lme/kuehle/carreport/db/FuelType;->create(Lme/kuehle/carreport/db/Car;Ljava/lang/String;I)Lme/kuehle/carreport/db/FuelType;

    move-result-object v32

    .line 53
    .local v32, "fuelType4":Lme/kuehle/carreport/db/FuelType;
    const-string v1, "03.07.2012 08:03"

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    const v18, 0xa7f8

    const/high16 v19, 0x42340000    # 45.0f

    const v20, 0x4286051f    # 67.01f

    const/16 v21, 0x0

    const-string v22, ""

    invoke-static/range {v17 .. v24}, Lme/kuehle/carreport/db/Refueling;->create(Ljava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;

    .line 54
    const-string v1, "14.07.2012 18:15"

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    const v18, 0xaa78

    const/high16 v19, 0x424c0000    # 51.0f

    const v20, 0x4298e666    # 76.45f

    const/16 v21, 0x0

    const-string v22, ""

    invoke-static/range {v17 .. v24}, Lme/kuehle/carreport/db/Refueling;->create(Ljava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;

    .line 55
    const-string v1, "24.07.2012 19:04"

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    const v18, 0xad0c

    const/high16 v19, 0x42500000    # 52.0f

    const v20, 0x429f051f    # 79.51f

    const/16 v21, 0x0

    const-string v22, ""

    invoke-static/range {v17 .. v24}, Lme/kuehle/carreport/db/Refueling;->create(Ljava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;

    .line 56
    const-string v1, "03.08.2012 08:11"

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v25

    const v26, 0xae9d

    const/high16 v27, 0x42080000    # 34.0f

    const v28, 0x4247cccd    # 49.95f

    const/16 v29, 0x1

    const-string v30, ""

    move-object/from16 v31, v23

    invoke-static/range {v25 .. v32}, Lme/kuehle/carreport/db/Refueling;->create(Ljava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;

    .line 57
    const-string v1, "17.08.2012 17:16"

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    const v18, 0xb104

    const/high16 v19, 0x42440000    # 49.0f

    const v20, 0x4295d70a    # 74.92f

    const/16 v21, 0x0

    const-string v22, ""

    invoke-static/range {v17 .. v24}, Lme/kuehle/carreport/db/Refueling;->create(Ljava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;

    .line 58
    const-string v1, "24.08.2012 07:50"

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v25

    const v26, 0xb159

    const/high16 v27, 0x40e00000    # 7.0f

    const v28, 0x413428f6    # 11.26f

    const/16 v29, 0x1

    const-string v30, ""

    move-object/from16 v31, v23

    invoke-static/range {v25 .. v32}, Lme/kuehle/carreport/db/Refueling;->create(Ljava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;

    .line 59
    const-string v1, "25.08.2012 07:54"

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    const v18, 0xb402

    const/high16 v19, 0x42540000    # 53.0f

    const v20, 0x429dd70a    # 78.92f

    const/16 v21, 0x0

    const-string v22, ""

    invoke-static/range {v17 .. v24}, Lme/kuehle/carreport/db/Refueling;->create(Ljava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;

    .line 60
    const-string v1, "02.09.2012 07:30"

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v25

    const v26, 0xb5e0

    const/high16 v27, 0x42280000    # 42.0f

    const v28, 0x4283428f    # 65.63f

    const/16 v29, 0x0

    const-string v30, ""

    move-object/from16 v31, v23

    invoke-static/range {v25 .. v32}, Lme/kuehle/carreport/db/Refueling;->create(Ljava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;

    .line 61
    const-string v17, "Steuern"

    const-string v1, "01.06.2012 00:00"

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v18

    const/16 v19, -0x1

    const/high16 v20, 0x437a0000    # 250.0f

    new-instance v21, Lme/kuehle/carreport/util/Recurrence;

    sget-object v1, Lme/kuehle/carreport/util/RecurrenceInterval;->YEAR:Lme/kuehle/carreport/util/RecurrenceInterval;

    move-object/from16 v0, v21

    invoke-direct {v0, v1}, Lme/kuehle/carreport/util/Recurrence;-><init>(Lme/kuehle/carreport/util/RecurrenceInterval;)V

    const-string v22, ""

    invoke-static/range {v17 .. v23}, Lme/kuehle/carreport/db/OtherCost;->create(Ljava/lang/String;Ljava/util/Date;IFLme/kuehle/carreport/util/Recurrence;Ljava/lang/String;Lme/kuehle/carreport/db/Car;)Lme/kuehle/carreport/db/OtherCost;

    .line 62
    const-string v17, "Versicherung"

    const-string v1, "15.06.2012 00:00"

    move-object/from16 v0, v33

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v18

    const/16 v19, -0x1

    const/high16 v20, 0x42200000    # 40.0f

    new-instance v21, Lme/kuehle/carreport/util/Recurrence;

    sget-object v1, Lme/kuehle/carreport/util/RecurrenceInterval;->MONTH:Lme/kuehle/carreport/util/RecurrenceInterval;

    move-object/from16 v0, v21

    invoke-direct {v0, v1}, Lme/kuehle/carreport/util/Recurrence;-><init>(Lme/kuehle/carreport/util/RecurrenceInterval;)V

    const-string v22, ""

    invoke-static/range {v17 .. v23}, Lme/kuehle/carreport/db/OtherCost;->create(Ljava/lang/String;Ljava/util/Date;IFLme/kuehle/carreport/util/Recurrence;Ljava/lang/String;Lme/kuehle/carreport/db/Car;)Lme/kuehle/carreport/db/OtherCost;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v7    # "car1":Lme/kuehle/carreport/db/Car;
    .end local v8    # "fuelType1":Lme/kuehle/carreport/db/FuelType;
    .end local v16    # "fuelType2":Lme/kuehle/carreport/db/FuelType;
    .end local v23    # "car2":Lme/kuehle/carreport/db/Car;
    .end local v24    # "fuelType3":Lme/kuehle/carreport/db/FuelType;
    .end local v32    # "fuelType4":Lme/kuehle/carreport/db/FuelType;
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    goto :goto_0
.end method

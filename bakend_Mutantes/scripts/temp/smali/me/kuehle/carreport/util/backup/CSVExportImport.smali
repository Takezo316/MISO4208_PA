.class public Lme/kuehle/carreport/util/backup/CSVExportImport;
.super Ljava/lang/Object;
.source "CSVExportImport.java"


# static fields
.field public static final FILE_PREFIX:Ljava/lang/String; = "carreport_export"

.field public static final FOUR_FILES:I = 0x2

.field private static final REFUELING_TITLE:Ljava/lang/String; = "Refueling"

.field public static final SINGLE_FILE:I = 0x0

.field public static final TWO_FILES:I = 0x1


# instance fields
.field private dateFormat:Ljava/text/DateFormat;

.field private dir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/text/DateFormat;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/text/DateFormat;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    .line 58
    iput-object p1, p0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dateFormat:Ljava/text/DateFormat;

    .line 59
    return-void
.end method

.method private importCar(Lme/kuehle/carreport/util/CSVReader;ILjava/lang/String;)V
    .locals 8
    .param p1, "reader"    # Lme/kuehle/carreport/util/CSVReader;
    .param p2, "row"    # I
    .param p3, "titlePrefix"    # Ljava/lang/String;

    .prologue
    .line 486
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, p2, v6}, Lme/kuehle/carreport/util/CSVReader;->getInt(ILjava/lang/String;)I

    move-result v3

    .line 487
    .local v3, "id":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, p2, v6}, Lme/kuehle/carreport/util/CSVReader;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, "name":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "color"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, p2, v6}, Lme/kuehle/carreport/util/CSVReader;->getInt(ILjava/lang/String;)I

    move-result v1

    .line 489
    .local v1, "color":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "suspended_since"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {p1, p2, v6, v7}, Lme/kuehle/carreport/util/CSVReader;->getDate(ILjava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v5

    .line 493
    .local v5, "suspended":Ljava/util/Date;
    :try_start_0
    new-instance v0, Lme/kuehle/carreport/db/Car;

    invoke-direct {v0, v3}, Lme/kuehle/carreport/db/Car;-><init>(I)V

    .line 494
    .local v0, "car":Lme/kuehle/carreport/db/Car;
    invoke-virtual {v0, v4}, Lme/kuehle/carreport/db/Car;->setName(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0, v1}, Lme/kuehle/carreport/db/Car;->setColor(I)V

    .line 496
    invoke-virtual {v0, v5}, Lme/kuehle/carreport/db/Car;->setSuspended(Ljava/util/Date;)V

    .line 497
    invoke-virtual {v0}, Lme/kuehle/carreport/db/Car;->save()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    .end local v0    # "car":Lme/kuehle/carreport/db/Car;
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v2

    .line 499
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v3, v4, v1, v5}, Lme/kuehle/carreport/db/Car;->create(ILjava/lang/String;ILjava/util/Date;)Lme/kuehle/carreport/db/Car;

    goto :goto_0
.end method

.method private importFuelType(Lme/kuehle/carreport/util/CSVReader;ILjava/lang/String;)V
    .locals 9
    .param p1, "reader"    # Lme/kuehle/carreport/util/CSVReader;
    .param p2, "row"    # I
    .param p3, "titlePrefix"    # Ljava/lang/String;

    .prologue
    .line 569
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, p2, v7}, Lme/kuehle/carreport/util/CSVReader;->getInt(ILjava/lang/String;)I

    move-result v4

    .line 570
    .local v4, "id":I
    const-string v7, "cars_id"

    invoke-virtual {p1, p2, v7}, Lme/kuehle/carreport/util/CSVReader;->getInt(ILjava/lang/String;)I

    move-result v1

    .line 571
    .local v1, "carID":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, p2, v7}, Lme/kuehle/carreport/util/CSVReader;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 573
    .local v5, "name":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "tank"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, p2, v7}, Lme/kuehle/carreport/util/CSVReader;->getInt(ILjava/lang/String;)I

    move-result v6

    .line 575
    .local v6, "tank":I
    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    new-instance v0, Lme/kuehle/carreport/db/Car;

    invoke-direct {v0, v1}, Lme/kuehle/carreport/db/Car;-><init>(I)V

    .line 581
    .local v0, "car":Lme/kuehle/carreport/db/Car;
    :try_start_0
    new-instance v3, Lme/kuehle/carreport/db/FuelType;

    invoke-direct {v3, v4}, Lme/kuehle/carreport/db/FuelType;-><init>(I)V

    .line 582
    .local v3, "fuelType":Lme/kuehle/carreport/db/FuelType;
    invoke-virtual {v3, v0}, Lme/kuehle/carreport/db/FuelType;->setCar(Lme/kuehle/carreport/db/Car;)V

    .line 583
    invoke-virtual {v3, v5}, Lme/kuehle/carreport/db/FuelType;->setName(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v3, v6}, Lme/kuehle/carreport/db/FuelType;->setTank(I)V

    .line 585
    invoke-virtual {v3}, Lme/kuehle/carreport/db/FuelType;->save()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 586
    .end local v3    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    :catch_0
    move-exception v2

    .line 587
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v4, v0, v5, v6}, Lme/kuehle/carreport/db/FuelType;->create(ILme/kuehle/carreport/db/Car;Ljava/lang/String;I)Lme/kuehle/carreport/db/FuelType;

    goto :goto_0
.end method

.method private importOtherCost(Lme/kuehle/carreport/util/CSVReader;I)V
    .locals 19
    .param p1, "reader"    # Lme/kuehle/carreport/util/CSVReader;
    .param p2, "row"    # I

    .prologue
    .line 539
    const-string v17, "_id"

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/CSVReader;->getInt(ILjava/lang/String;)I

    move-result v4

    .line 540
    .local v4, "id":I
    const-string v17, "title"

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/CSVReader;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 541
    .local v5, "title":Ljava/lang/String;
    const-string v17, "date"

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dateFormat:Ljava/text/DateFormat;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lme/kuehle/carreport/util/CSVReader;->getDate(ILjava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v6

    .line 542
    .local v6, "date":Ljava/util/Date;
    const-string v17, "tachometer"

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/CSVReader;->getInt(ILjava/lang/String;)I

    move-result v7

    .line 543
    .local v7, "mileage":I
    const-string v17, "price"

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/CSVReader;->getFloat(ILjava/lang/String;)F

    move-result v8

    .line 544
    .local v8, "price":F
    const-string v17, "repeat_interval"

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/CSVReader;->getInt(ILjava/lang/String;)I

    move-result v15

    .line 545
    .local v15, "repeatInterval":I
    const-string v17, "repeat_multiplier"

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/CSVReader;->getInt(ILjava/lang/String;)I

    move-result v16

    .line 546
    .local v16, "repeatMultiplier":I
    const-string v17, "note"

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/CSVReader;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 547
    .local v10, "note":Ljava/lang/String;
    const-string v17, "cars_id"

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/CSVReader;->getInt(ILjava/lang/String;)I

    move-result v12

    .line 549
    .local v12, "carID":I
    new-instance v9, Lme/kuehle/carreport/util/Recurrence;

    invoke-static {v15}, Lme/kuehle/carreport/util/RecurrenceInterval;->getByValue(I)Lme/kuehle/carreport/util/RecurrenceInterval;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v9, v0, v1}, Lme/kuehle/carreport/util/Recurrence;-><init>(Lme/kuehle/carreport/util/RecurrenceInterval;I)V

    .line 551
    .local v9, "recurrence":Lme/kuehle/carreport/util/Recurrence;
    new-instance v11, Lme/kuehle/carreport/db/Car;

    invoke-direct {v11, v12}, Lme/kuehle/carreport/db/Car;-><init>(I)V

    .line 553
    .local v11, "car":Lme/kuehle/carreport/db/Car;
    :try_start_0
    new-instance v14, Lme/kuehle/carreport/db/OtherCost;

    invoke-direct {v14, v4}, Lme/kuehle/carreport/db/OtherCost;-><init>(I)V

    .line 554
    .local v14, "otherCost":Lme/kuehle/carreport/db/OtherCost;
    invoke-virtual {v14, v5}, Lme/kuehle/carreport/db/OtherCost;->setTitle(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v14, v6}, Lme/kuehle/carreport/db/OtherCost;->setDate(Ljava/util/Date;)V

    .line 556
    invoke-virtual {v14, v7}, Lme/kuehle/carreport/db/OtherCost;->setMileage(I)V

    .line 557
    invoke-virtual {v14, v8}, Lme/kuehle/carreport/db/OtherCost;->setPrice(F)V

    .line 558
    invoke-virtual {v14, v9}, Lme/kuehle/carreport/db/OtherCost;->setRecurrence(Lme/kuehle/carreport/util/Recurrence;)V

    .line 559
    invoke-virtual {v14, v10}, Lme/kuehle/carreport/db/OtherCost;->setNote(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v14, v11}, Lme/kuehle/carreport/db/OtherCost;->setCar(Lme/kuehle/carreport/db/Car;)V

    .line 561
    invoke-virtual {v14}, Lme/kuehle/carreport/db/OtherCost;->save()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    .end local v14    # "otherCost":Lme/kuehle/carreport/db/OtherCost;
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v13

    .line 563
    .local v13, "e":Ljava/lang/IllegalArgumentException;
    invoke-static/range {v4 .. v11}, Lme/kuehle/carreport/db/OtherCost;->create(ILjava/lang/String;Ljava/util/Date;IFLme/kuehle/carreport/util/Recurrence;Ljava/lang/String;Lme/kuehle/carreport/db/Car;)Lme/kuehle/carreport/db/OtherCost;

    goto :goto_0
.end method

.method private importRefueling(Lme/kuehle/carreport/util/CSVReader;I)V
    .locals 20
    .param p1, "reader"    # Lme/kuehle/carreport/util/CSVReader;
    .param p2, "row"    # I

    .prologue
    .line 504
    const-string v18, "_id"

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/CSVReader;->getInt(ILjava/lang/String;)I

    move-result v4

    .line 505
    .local v4, "id":I
    const-string v18, "date"

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dateFormat:Ljava/text/DateFormat;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lme/kuehle/carreport/util/CSVReader;->getDate(ILjava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v5

    .line 506
    .local v5, "date":Ljava/util/Date;
    const-string v18, "tachometer"

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/CSVReader;->getInt(ILjava/lang/String;)I

    move-result v6

    .line 507
    .local v6, "mileage":I
    const-string v18, "volume"

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/CSVReader;->getFloat(ILjava/lang/String;)F

    move-result v7

    .line 508
    .local v7, "volume":F
    const-string v18, "price"

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/CSVReader;->getFloat(ILjava/lang/String;)F

    move-result v8

    .line 509
    .local v8, "price":F
    const-string v18, "partial"

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/CSVReader;->getInt(ILjava/lang/String;)I

    move-result v18

    if-lez v18, :cond_0

    const/4 v9, 0x1

    .line 510
    .local v9, "partial":Z
    :goto_0
    const-string v18, "note"

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/CSVReader;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 511
    .local v10, "note":Ljava/lang/String;
    const-string v18, "cars_id"

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/CSVReader;->getInt(ILjava/lang/String;)I

    move-result v13

    .line 512
    .local v13, "carID":I
    const-string v18, "fueltypes_id"

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lme/kuehle/carreport/util/CSVReader;->getInt(ILjava/lang/String;)I

    move-result v16

    .line 515
    .local v16, "fuelTypeID":I
    new-instance v11, Lme/kuehle/carreport/db/Car;

    invoke-direct {v11, v13}, Lme/kuehle/carreport/db/Car;-><init>(I)V

    .line 516
    .local v11, "car":Lme/kuehle/carreport/db/Car;
    const/4 v12, 0x0

    .line 518
    .local v12, "fuelType":Lme/kuehle/carreport/db/FuelType;
    :try_start_0
    new-instance v15, Lme/kuehle/carreport/db/FuelType;

    invoke-direct/range {v15 .. v16}, Lme/kuehle/carreport/db/FuelType;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v12    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    .local v15, "fuelType":Lme/kuehle/carreport/db/FuelType;
    move-object v12, v15

    .line 522
    .end local v15    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    .restart local v12    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    :goto_1
    :try_start_1
    new-instance v17, Lme/kuehle/carreport/db/Refueling;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Lme/kuehle/carreport/db/Refueling;-><init>(I)V

    .line 523
    .local v17, "refueling":Lme/kuehle/carreport/db/Refueling;
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lme/kuehle/carreport/db/Refueling;->setDate(Ljava/util/Date;)V

    .line 524
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lme/kuehle/carreport/db/Refueling;->setMileage(I)V

    .line 525
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lme/kuehle/carreport/db/Refueling;->setVolume(F)V

    .line 526
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lme/kuehle/carreport/db/Refueling;->setPrice(F)V

    .line 527
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lme/kuehle/carreport/db/Refueling;->setPartial(Z)V

    .line 528
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lme/kuehle/carreport/db/Refueling;->setNote(Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lme/kuehle/carreport/db/Refueling;->setCar(Lme/kuehle/carreport/db/Car;)V

    .line 530
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lme/kuehle/carreport/db/Refueling;->setFuelType(Lme/kuehle/carreport/db/FuelType;)V

    .line 531
    invoke-virtual/range {v17 .. v17}, Lme/kuehle/carreport/db/Refueling;->save()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 536
    .end local v17    # "refueling":Lme/kuehle/carreport/db/Refueling;
    :goto_2
    return-void

    .line 509
    .end local v9    # "partial":Z
    .end local v10    # "note":Ljava/lang/String;
    .end local v11    # "car":Lme/kuehle/carreport/db/Car;
    .end local v12    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    .end local v13    # "carID":I
    .end local v16    # "fuelTypeID":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 532
    .restart local v9    # "partial":Z
    .restart local v10    # "note":Ljava/lang/String;
    .restart local v11    # "car":Lme/kuehle/carreport/db/Car;
    .restart local v12    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    .restart local v13    # "carID":I
    .restart local v16    # "fuelTypeID":I
    :catch_0
    move-exception v14

    .line 533
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    invoke-static/range {v4 .. v12}, Lme/kuehle/carreport/db/Refueling;->create(ILjava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;

    goto :goto_2

    .line 519
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v18

    goto :goto_1
.end method


# virtual methods
.method public allExportFilesExist(I)Z
    .locals 9
    .param p1, "option"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 337
    if-nez p1, :cond_1

    .line 338
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v6, "carreport_export.csv"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 339
    .local v0, "export":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    .line 356
    .end local v0    # "export":Ljava/io/File;
    :cond_0
    :goto_0
    return v5

    .line 340
    :cond_1
    if-ne p1, v5, :cond_3

    .line 341
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v8, "carreport_export_refuelings.csv"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 343
    .local v4, "exportRefuelings":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v8, "carreport_export_othercosts.csv"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 345
    .local v3, "exportOtherCosts":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_0

    :cond_2
    move v5, v6

    goto :goto_0

    .line 346
    .end local v3    # "exportOtherCosts":Ljava/io/File;
    .end local v4    # "exportRefuelings":Ljava/io/File;
    :cond_3
    const/4 v7, 0x2

    if-ne p1, v7, :cond_5

    .line 347
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v8, "carreport_export_cars.csv"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 348
    .local v1, "exportCars":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v8, "carreport_export_refuelings.csv"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 350
    .restart local v4    # "exportRefuelings":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v8, "carreport_export_othercosts.csv"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 352
    .restart local v3    # "exportOtherCosts":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v8, "carreport_export_fueltypes.csv"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 353
    .local v2, "exportFuelTypes":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_0

    :cond_4
    move v5, v6

    goto :goto_0

    .end local v1    # "exportCars":Ljava/io/File;
    .end local v2    # "exportFuelTypes":Ljava/io/File;
    .end local v3    # "exportOtherCosts":Ljava/io/File;
    .end local v4    # "exportRefuelings":Ljava/io/File;
    :cond_5
    move v5, v6

    .line 356
    goto :goto_0
.end method

.method public anyExportFileExist(I)Z
    .locals 9
    .param p1, "option"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 361
    if-nez p1, :cond_1

    .line 362
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v6, "carreport_export.csv"

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 363
    .local v0, "export":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    .line 380
    .end local v0    # "export":Ljava/io/File;
    :cond_0
    :goto_0
    return v5

    .line 364
    :cond_1
    if-ne p1, v6, :cond_3

    .line 365
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v8, "carreport_export_refuelings.csv"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 367
    .local v4, "exportRefuelings":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v8, "carreport_export_othercosts.csv"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    .local v3, "exportOtherCosts":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_2
    move v5, v6

    goto :goto_0

    .line 370
    .end local v3    # "exportOtherCosts":Ljava/io/File;
    .end local v4    # "exportRefuelings":Ljava/io/File;
    :cond_3
    const/4 v7, 0x2

    if-ne p1, v7, :cond_0

    .line 371
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v8, "carreport_export_cars.csv"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 372
    .local v1, "exportCars":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    iget-object v7, p0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v8, "carreport_export_refuelings.csv"

    invoke-direct {v4, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 374
    .restart local v4    # "exportRefuelings":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v8, "carreport_export_othercosts.csv"

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 376
    .restart local v3    # "exportOtherCosts":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v8, "carreport_export_fueltypes.csv"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 377
    .local v2, "exportFuelTypes":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_4
    move v5, v6

    goto :goto_0
.end method

.method public canExport()Z
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public canImport(I)Z
    .locals 1
    .param p1, "option"    # I

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lme/kuehle/carreport/util/backup/CSVExportImport;->allExportFilesExist(I)Z

    move-result v0

    return v0
.end method

.method public export(I)Z
    .locals 33
    .param p1, "option"    # I

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v4, "carreport_export.csv"

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .local v16, "export":Ljava/io/File;
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v21, "replacements":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "%r_columns"

    const-string v4, ", "

    const/16 v5, 0x11

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "refuelings._id AS _id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "\'Refueling\' AS title"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "date"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "tachometer"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "volume"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "price"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "partial"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "\'0\' AS repeat_interval"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "\'1\' AS repeat_multiplier"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "note"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "cars._id AS cars_id"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "cars.name AS carsname"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "cars.color AS carscolor"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "cars.suspended_since AS carssuspended_since"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "fueltypes._id AS fueltypes_id"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string v7, "fueltypes.name AS fueltypesname"

    aput-object v7, v5, v6

    const/16 v6, 0x10

    const-string v7, "fueltypes.tank AS fueltypestank"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lme/kuehle/carreport/util/Strings;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v3, "%o_columns"

    const-string v4, ", "

    const/16 v5, 0x11

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "othercosts._id AS _id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "title"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "date"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "tachometer"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "\'\' AS volume"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "price"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "\'0\' AS partial"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "repeat_interval"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "repeat_multiplier"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "note"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "cars._id AS cars_id"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "cars.name AS carsname"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "cars.color AS carscolor"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "cars.suspended_since AS carssuspended_since"

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "\'\' AS fueltypes_id"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    const-string v7, "\'\' AS fueltypesname"

    aput-object v7, v5, v6

    const/16 v6, 0x10

    const-string v7, "\'\' AS fueltypestank"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lme/kuehle/carreport/util/Strings;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v3, "%refuelings"

    const-string v4, "refuelings"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v3, "%othercosts"

    const-string v4, "othercosts"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v3, "%cars"

    const-string v4, "cars"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v3, "%fueltypes"

    const-string v4, "fueltypes"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v3, "%r_car_id"

    const-string v4, "cars_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v3, "%r_fueltype_id"

    const-string v4, "fueltypes_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v3, "%o_car_id"

    const-string v4, "cars_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v3, "%id"

    const-string v4, "_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v3, "SELECT %r_columns FROM %refuelings JOIN %cars ON %refuelings.%r_car_id = %cars.%id LEFT JOIN %fueltypes ON %refuelings.%r_fueltype_id = %fueltypes.%id UNION ALL SELECT %o_columns FROM %othercosts JOIN %cars ON %othercosts.%o_car_id = %cars.%id"

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lme/kuehle/carreport/util/Strings;->replaceMap(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v24

    .line 146
    .local v24, "sql":Ljava/lang/String;
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 147
    .local v10, "columnTypes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;>;"
    const/4 v3, 0x2

    new-instance v4, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;

    const-class v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v6, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dateFormat:Ljava/text/DateFormat;

    invoke-direct {v4, v5, v6}, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;-><init>(Ljava/lang/Class;Ljava/text/Format;)V

    invoke-virtual {v10, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    const/16 v3, 0xd

    new-instance v4, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;

    const-class v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v6, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dateFormat:Ljava/text/DateFormat;

    invoke-direct {v4, v5, v6}, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;-><init>(Ljava/lang/Class;Ljava/text/Format;)V

    invoke-virtual {v10, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    new-instance v27, Lme/kuehle/carreport/util/CSVWriter;

    invoke-direct/range {v27 .. v27}, Lme/kuehle/carreport/util/CSVWriter;-><init>()V

    .line 153
    .local v27, "writer":Lme/kuehle/carreport/util/CSVWriter;
    sget-object v4, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v4

    .line 154
    :try_start_0
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v3

    invoke-virtual {v3}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 155
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 156
    .local v15, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v15, v10, v3}, Lme/kuehle/carreport/util/CSVWriter;->write(Landroid/database/Cursor;Landroid/util/SparseArray;Z)V

    .line 157
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 158
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/util/CSVWriter;->toFile(Ljava/io/File;)V

    .line 161
    const/4 v3, 0x1

    .line 324
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "columnTypes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;>;"
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v16    # "export":Ljava/io/File;
    .end local v21    # "replacements":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "sql":Ljava/lang/String;
    .end local v27    # "writer":Lme/kuehle/carreport/util/CSVWriter;
    :goto_0
    return v3

    .line 158
    .restart local v10    # "columnTypes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;>;"
    .restart local v16    # "export":Ljava/io/File;
    .restart local v21    # "replacements":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "sql":Ljava/lang/String;
    .restart local v27    # "writer":Lme/kuehle/carreport/util/CSVWriter;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 162
    .end local v10    # "columnTypes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;>;"
    .end local v16    # "export":Ljava/io/File;
    .end local v21    # "replacements":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "sql":Ljava/lang/String;
    .end local v27    # "writer":Lme/kuehle/carreport/util/CSVWriter;
    :cond_0
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_1

    .line 163
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v4, "carreport_export_refuelings.csv"

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    .local v20, "exportRefuelings":Ljava/io/File;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v4, "carreport_export_othercosts.csv"

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    .local v19, "exportOtherCosts":Ljava/io/File;
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v23, "replacementsRefuelings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "%columns"

    const-string v4, ", "

    const/16 v5, 0xe

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "refuelings._id AS _id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "date"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "tachometer"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "volume"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "price"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "partial"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "note"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "cars._id AS cars_id"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "cars.name AS carsname"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "cars.color AS carscolor"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "cars.suspended_since AS carssuspended_since"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "fueltypes._id AS fueltypes_id"

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "fueltypes.name AS fueltypesname"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    const-string v7, "fueltypes.tank AS fueltypestank"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lme/kuehle/carreport/util/Strings;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v3, "%refuelings"

    const-string v4, "refuelings"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v3, "%cars"

    const-string v4, "cars"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v3, "%car_id"

    const-string v4, "cars_id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v3, "%fueltypes"

    const-string v4, "fueltypes"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string v3, "%fueltype_id"

    const-string v4, "fueltypes_id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v3, "%id"

    const-string v4, "_id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v3, "SELECT %columns FROM %refuelings JOIN %cars ON %refuelings.%car_id = %cars.%id LEFT JOIN %fueltypes ON %refuelings.%fueltype_id = %fueltypes.%id "

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lme/kuehle/carreport/util/Strings;->replaceMap(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v26

    .line 213
    .local v26, "sqlRefuelings":Ljava/lang/String;
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 214
    .local v14, "columnTypesRefuelings":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;>;"
    const/4 v3, 0x1

    new-instance v4, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;

    const-class v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v6, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dateFormat:Ljava/text/DateFormat;

    invoke-direct {v4, v5, v6}, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;-><init>(Ljava/lang/Class;Ljava/text/Format;)V

    invoke-virtual {v14, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 216
    const/16 v3, 0xa

    new-instance v4, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;

    const-class v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v6, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dateFormat:Ljava/text/DateFormat;

    invoke-direct {v4, v5, v6}, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;-><init>(Ljava/lang/Class;Ljava/text/Format;)V

    invoke-virtual {v14, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v22, "replacementsOtherCosts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "%columns"

    const-string v4, ", "

    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "othercosts._id AS _id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "title"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "date"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "tachometer"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "price"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "repeat_interval"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "repeat_multiplier"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const-string v7, "note"

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "cars._id AS cars_id"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const-string v7, "cars.name AS carsname"

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "cars.color AS carscolor"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    const-string v7, "cars.suspended_since AS carssuspended_since"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lme/kuehle/carreport/util/Strings;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v3, "%othercosts"

    const-string v4, "othercosts"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v3, "%cars"

    const-string v4, "cars"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v3, "%car_id"

    const-string v4, "cars_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v3, "%id"

    const-string v4, "_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v3, "SELECT %columns FROM %othercosts JOIN %cars ON %othercosts.%car_id = %cars.%id"

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Lme/kuehle/carreport/util/Strings;->replaceMap(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v25

    .line 251
    .local v25, "sqlOtherCosts":Ljava/lang/String;
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 252
    .local v13, "columnTypesOtherCosts":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;>;"
    const/4 v3, 0x2

    new-instance v4, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;

    const-class v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v6, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dateFormat:Ljava/text/DateFormat;

    invoke-direct {v4, v5, v6}, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;-><init>(Ljava/lang/Class;Ljava/text/Format;)V

    invoke-virtual {v13, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    const/16 v3, 0xb

    new-instance v4, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;

    const-class v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v6, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dateFormat:Ljava/text/DateFormat;

    invoke-direct {v4, v5, v6}, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;-><init>(Ljava/lang/Class;Ljava/text/Format;)V

    invoke-virtual {v13, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    new-instance v31, Lme/kuehle/carreport/util/CSVWriter;

    invoke-direct/range {v31 .. v31}, Lme/kuehle/carreport/util/CSVWriter;-><init>()V

    .line 258
    .local v31, "writerRefuelings":Lme/kuehle/carreport/util/CSVWriter;
    new-instance v30, Lme/kuehle/carreport/util/CSVWriter;

    invoke-direct/range {v30 .. v30}, Lme/kuehle/carreport/util/CSVWriter;-><init>()V

    .line 259
    .local v30, "writerOtherCosts":Lme/kuehle/carreport/util/CSVWriter;
    sget-object v4, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v4

    .line 260
    :try_start_2
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v3

    invoke-virtual {v3}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 261
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 262
    .restart local v15    # "cursor":Landroid/database/Cursor;
    const/4 v3, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v15, v14, v3}, Lme/kuehle/carreport/util/CSVWriter;->write(Landroid/database/Cursor;Landroid/util/SparseArray;Z)V

    .line 263
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 264
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 265
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v15, v13, v3}, Lme/kuehle/carreport/util/CSVWriter;->write(Landroid/database/Cursor;Landroid/util/SparseArray;Z)V

    .line 266
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 267
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 269
    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/util/CSVWriter;->toFile(Ljava/io/File;)V

    .line 270
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/util/CSVWriter;->toFile(Ljava/io/File;)V

    .line 271
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 267
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v15    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 272
    .end local v13    # "columnTypesOtherCosts":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;>;"
    .end local v14    # "columnTypesRefuelings":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;>;"
    .end local v19    # "exportOtherCosts":Ljava/io/File;
    .end local v20    # "exportRefuelings":Ljava/io/File;
    .end local v22    # "replacementsOtherCosts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "replacementsRefuelings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v25    # "sqlOtherCosts":Ljava/lang/String;
    .end local v26    # "sqlRefuelings":Ljava/lang/String;
    .end local v30    # "writerOtherCosts":Lme/kuehle/carreport/util/CSVWriter;
    .end local v31    # "writerRefuelings":Lme/kuehle/carreport/util/CSVWriter;
    :cond_1
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    .line 273
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v4, "carreport_export_cars.csv"

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 274
    .local v17, "exportCars":Ljava/io/File;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v4, "carreport_export_refuelings.csv"

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 276
    .restart local v20    # "exportRefuelings":Ljava/io/File;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v4, "carreport_export_othercosts.csv"

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 278
    .restart local v19    # "exportOtherCosts":Ljava/io/File;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v4, "carreport_export_fueltypes.csv"

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 280
    .local v18, "exportFuelTypes":Ljava/io/File;
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 281
    .local v11, "columnTypesCars":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;>;"
    const/4 v3, 0x3

    new-instance v4, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;

    const-class v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v6, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dateFormat:Ljava/text/DateFormat;

    invoke-direct {v4, v5, v6}, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;-><init>(Ljava/lang/Class;Ljava/text/Format;)V

    invoke-virtual {v11, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 284
    .restart local v14    # "columnTypesRefuelings":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;>;"
    const/4 v3, 0x1

    new-instance v4, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;

    const-class v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v6, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dateFormat:Ljava/text/DateFormat;

    invoke-direct {v4, v5, v6}, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;-><init>(Ljava/lang/Class;Ljava/text/Format;)V

    invoke-virtual {v14, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 286
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 287
    .restart local v13    # "columnTypesOtherCosts":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;>;"
    const/4 v3, 0x2

    new-instance v4, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;

    const-class v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v6, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dateFormat:Ljava/text/DateFormat;

    invoke-direct {v4, v5, v6}, Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;-><init>(Ljava/lang/Class;Ljava/text/Format;)V

    invoke-virtual {v13, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 291
    .local v12, "columnTypesFuelTypes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;>;"
    new-instance v28, Lme/kuehle/carreport/util/CSVWriter;

    invoke-direct/range {v28 .. v28}, Lme/kuehle/carreport/util/CSVWriter;-><init>()V

    .line 292
    .local v28, "writerCars":Lme/kuehle/carreport/util/CSVWriter;
    new-instance v31, Lme/kuehle/carreport/util/CSVWriter;

    invoke-direct/range {v31 .. v31}, Lme/kuehle/carreport/util/CSVWriter;-><init>()V

    .line 293
    .restart local v31    # "writerRefuelings":Lme/kuehle/carreport/util/CSVWriter;
    new-instance v30, Lme/kuehle/carreport/util/CSVWriter;

    invoke-direct/range {v30 .. v30}, Lme/kuehle/carreport/util/CSVWriter;-><init>()V

    .line 294
    .restart local v30    # "writerOtherCosts":Lme/kuehle/carreport/util/CSVWriter;
    new-instance v29, Lme/kuehle/carreport/util/CSVWriter;

    invoke-direct/range {v29 .. v29}, Lme/kuehle/carreport/util/CSVWriter;-><init>()V

    .line 295
    .local v29, "writerFuelTypes":Lme/kuehle/carreport/util/CSVWriter;
    sget-object v32, Lme/kuehle/carreport/db/Helper;->dbLock:[Ljava/lang/Object;

    monitor-enter v32

    .line 296
    :try_start_4
    invoke-static {}, Lme/kuehle/carreport/db/Helper;->getInstance()Lme/kuehle/carreport/db/Helper;

    move-result-object v3

    invoke-virtual {v3}, Lme/kuehle/carreport/db/Helper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 297
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "cars"

    sget-object v4, Lme/kuehle/carreport/db/CarTable;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 299
    .restart local v15    # "cursor":Landroid/database/Cursor;
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v15, v11, v3}, Lme/kuehle/carreport/util/CSVWriter;->write(Landroid/database/Cursor;Landroid/util/SparseArray;Z)V

    .line 300
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 301
    const-string v3, "refuelings"

    sget-object v4, Lme/kuehle/carreport/db/RefuelingTable;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 304
    const/4 v3, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v15, v14, v3}, Lme/kuehle/carreport/util/CSVWriter;->write(Landroid/database/Cursor;Landroid/util/SparseArray;Z)V

    .line 305
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 306
    const-string v3, "othercosts"

    sget-object v4, Lme/kuehle/carreport/db/OtherCostTable;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 309
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v15, v13, v3}, Lme/kuehle/carreport/util/CSVWriter;->write(Landroid/database/Cursor;Landroid/util/SparseArray;Z)V

    .line 310
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 311
    const-string v3, "fueltypes"

    sget-object v4, Lme/kuehle/carreport/db/FuelTypeTable;->ALL_COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 314
    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v15, v12, v3}, Lme/kuehle/carreport/util/CSVWriter;->write(Landroid/database/Cursor;Landroid/util/SparseArray;Z)V

    .line 315
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 316
    monitor-exit v32
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 318
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/util/CSVWriter;->toFile(Ljava/io/File;)V

    .line 319
    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/util/CSVWriter;->toFile(Ljava/io/File;)V

    .line 320
    move-object/from16 v0, v30

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/util/CSVWriter;->toFile(Ljava/io/File;)V

    .line 321
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lme/kuehle/carreport/util/CSVWriter;->toFile(Ljava/io/File;)V

    .line 322
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 316
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v15    # "cursor":Landroid/database/Cursor;
    :catchall_2
    move-exception v3

    :try_start_5
    monitor-exit v32
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 324
    .end local v11    # "columnTypesCars":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;>;"
    .end local v12    # "columnTypesFuelTypes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;>;"
    .end local v13    # "columnTypesOtherCosts":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;>;"
    .end local v14    # "columnTypesRefuelings":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lme/kuehle/carreport/util/CSVWriter$SpecialColumnType;>;"
    .end local v17    # "exportCars":Ljava/io/File;
    .end local v18    # "exportFuelTypes":Ljava/io/File;
    .end local v19    # "exportOtherCosts":Ljava/io/File;
    .end local v20    # "exportRefuelings":Ljava/io/File;
    .end local v28    # "writerCars":Lme/kuehle/carreport/util/CSVWriter;
    .end local v29    # "writerFuelTypes":Lme/kuehle/carreport/util/CSVWriter;
    .end local v30    # "writerOtherCosts":Lme/kuehle/carreport/util/CSVWriter;
    .end local v31    # "writerRefuelings":Lme/kuehle/carreport/util/CSVWriter;
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public import_(I)Z
    .locals 16
    .param p1, "option"    # I

    .prologue
    .line 385
    invoke-virtual/range {p0 .. p1}, Lme/kuehle/carreport/util/backup/CSVExportImport;->allExportFilesExist(I)Z

    move-result v14

    if-nez v14, :cond_0

    .line 386
    const/4 v14, 0x0

    .line 482
    :goto_0
    return v14

    .line 389
    :cond_0
    const/4 v2, 0x0

    .line 390
    .local v2, "errors":Z
    if-nez p1, :cond_2

    .line 391
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v15, "carreport_export.csv"

    invoke-direct {v3, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 392
    .local v3, "export":Ljava/io/File;
    const/4 v14, 0x1

    invoke-static {v3, v14}, Lme/kuehle/carreport/util/CSVReader;->fromFile(Ljava/io/File;Z)Lme/kuehle/carreport/util/CSVReader;

    move-result-object v9

    .line 394
    .local v9, "reader":Lme/kuehle/carreport/util/CSVReader;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {v9}, Lme/kuehle/carreport/util/CSVReader;->getRowCount()I

    move-result v14

    if-ge v8, v14, :cond_9

    .line 396
    :try_start_0
    const-string v14, "cars"

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8, v14}, Lme/kuehle/carreport/util/backup/CSVExportImport;->importCar(Lme/kuehle/carreport/util/CSVReader;ILjava/lang/String;)V

    .line 397
    const-string v14, "title"

    invoke-virtual {v9, v8, v14}, Lme/kuehle/carreport/util/CSVReader;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Refueling"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 399
    const-string v14, "fueltypes"

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8, v14}, Lme/kuehle/carreport/util/backup/CSVExportImport;->importFuelType(Lme/kuehle/carreport/util/CSVReader;ILjava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lme/kuehle/carreport/util/backup/CSVExportImport;->importRefueling(Lme/kuehle/carreport/util/CSVReader;I)V

    .line 394
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 402
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lme/kuehle/carreport/util/backup/CSVExportImport;->importOtherCost(Lme/kuehle/carreport/util/CSVReader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 404
    :catch_0
    move-exception v1

    .line 405
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    goto :goto_2

    .line 408
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "export":Ljava/io/File;
    .end local v8    # "i":I
    .end local v9    # "reader":Lme/kuehle/carreport/util/CSVReader;
    :cond_2
    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_4

    .line 409
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v15, "carreport_export_refuelings.csv"

    invoke-direct {v7, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 411
    .local v7, "exportRefuelings":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v15, "carreport_export_othercosts.csv"

    invoke-direct {v6, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 413
    .local v6, "exportOtherCosts":Ljava/io/File;
    const/4 v14, 0x1

    invoke-static {v7, v14}, Lme/kuehle/carreport/util/CSVReader;->fromFile(Ljava/io/File;Z)Lme/kuehle/carreport/util/CSVReader;

    move-result-object v13

    .line 415
    .local v13, "readerRefuelings":Lme/kuehle/carreport/util/CSVReader;
    const/4 v14, 0x1

    invoke-static {v6, v14}, Lme/kuehle/carreport/util/CSVReader;->fromFile(Ljava/io/File;Z)Lme/kuehle/carreport/util/CSVReader;

    move-result-object v12

    .line 418
    .local v12, "readerOtherCosts":Lme/kuehle/carreport/util/CSVReader;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    invoke-virtual {v13}, Lme/kuehle/carreport/util/CSVReader;->getRowCount()I

    move-result v14

    if-ge v8, v14, :cond_3

    .line 420
    :try_start_1
    const-string v14, "cars"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8, v14}, Lme/kuehle/carreport/util/backup/CSVExportImport;->importCar(Lme/kuehle/carreport/util/CSVReader;ILjava/lang/String;)V

    .line 421
    const-string v14, "fueltypes"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8, v14}, Lme/kuehle/carreport/util/backup/CSVExportImport;->importFuelType(Lme/kuehle/carreport/util/CSVReader;ILjava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8}, Lme/kuehle/carreport/util/backup/CSVExportImport;->importRefueling(Lme/kuehle/carreport/util/CSVReader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 418
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 423
    :catch_1
    move-exception v1

    .line 424
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    goto :goto_4

    .line 427
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v8, 0x0

    :goto_5
    invoke-virtual {v12}, Lme/kuehle/carreport/util/CSVReader;->getRowCount()I

    move-result v14

    if-ge v8, v14, :cond_9

    .line 429
    :try_start_2
    const-string v14, "cars"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8, v14}, Lme/kuehle/carreport/util/backup/CSVExportImport;->importCar(Lme/kuehle/carreport/util/CSVReader;ILjava/lang/String;)V

    .line 430
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8}, Lme/kuehle/carreport/util/backup/CSVExportImport;->importOtherCost(Lme/kuehle/carreport/util/CSVReader;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 427
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 431
    :catch_2
    move-exception v1

    .line 432
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    goto :goto_6

    .line 435
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "exportOtherCosts":Ljava/io/File;
    .end local v7    # "exportRefuelings":Ljava/io/File;
    .end local v8    # "i":I
    .end local v12    # "readerOtherCosts":Lme/kuehle/carreport/util/CSVReader;
    .end local v13    # "readerRefuelings":Lme/kuehle/carreport/util/CSVReader;
    :cond_4
    const/4 v14, 0x2

    move/from16 v0, p1

    if-ne v0, v14, :cond_8

    .line 436
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v15, "carreport_export_cars.csv"

    invoke-direct {v4, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 437
    .local v4, "exportCars":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v15, "carreport_export_refuelings.csv"

    invoke-direct {v7, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 439
    .restart local v7    # "exportRefuelings":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v15, "carreport_export_othercosts.csv"

    invoke-direct {v6, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 441
    .restart local v6    # "exportOtherCosts":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lme/kuehle/carreport/util/backup/CSVExportImport;->dir:Ljava/io/File;

    const-string v15, "carreport_export_fueltypes.csv"

    invoke-direct {v5, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 442
    .local v5, "exportFuelTypes":Ljava/io/File;
    const/4 v14, 0x1

    invoke-static {v4, v14}, Lme/kuehle/carreport/util/CSVReader;->fromFile(Ljava/io/File;Z)Lme/kuehle/carreport/util/CSVReader;

    move-result-object v10

    .line 443
    .local v10, "readerCars":Lme/kuehle/carreport/util/CSVReader;
    const/4 v14, 0x1

    invoke-static {v7, v14}, Lme/kuehle/carreport/util/CSVReader;->fromFile(Ljava/io/File;Z)Lme/kuehle/carreport/util/CSVReader;

    move-result-object v13

    .line 445
    .restart local v13    # "readerRefuelings":Lme/kuehle/carreport/util/CSVReader;
    const/4 v14, 0x1

    invoke-static {v6, v14}, Lme/kuehle/carreport/util/CSVReader;->fromFile(Ljava/io/File;Z)Lme/kuehle/carreport/util/CSVReader;

    move-result-object v12

    .line 447
    .restart local v12    # "readerOtherCosts":Lme/kuehle/carreport/util/CSVReader;
    const/4 v14, 0x1

    invoke-static {v5, v14}, Lme/kuehle/carreport/util/CSVReader;->fromFile(Ljava/io/File;Z)Lme/kuehle/carreport/util/CSVReader;

    move-result-object v11

    .line 450
    .local v11, "readerFuelTypes":Lme/kuehle/carreport/util/CSVReader;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_7
    invoke-virtual {v10}, Lme/kuehle/carreport/util/CSVReader;->getRowCount()I

    move-result v14

    if-ge v8, v14, :cond_5

    .line 452
    :try_start_3
    const-string v14, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8, v14}, Lme/kuehle/carreport/util/backup/CSVExportImport;->importCar(Lme/kuehle/carreport/util/CSVReader;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 450
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 453
    :catch_3
    move-exception v1

    .line 454
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    goto :goto_8

    .line 457
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v8, 0x0

    :goto_9
    invoke-virtual {v13}, Lme/kuehle/carreport/util/CSVReader;->getRowCount()I

    move-result v14

    if-ge v8, v14, :cond_6

    .line 459
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8}, Lme/kuehle/carreport/util/backup/CSVExportImport;->importRefueling(Lme/kuehle/carreport/util/CSVReader;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 457
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 460
    :catch_4
    move-exception v1

    .line 461
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    goto :goto_a

    .line 464
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v8, 0x0

    :goto_b
    invoke-virtual {v12}, Lme/kuehle/carreport/util/CSVReader;->getRowCount()I

    move-result v14

    if-ge v8, v14, :cond_7

    .line 466
    :try_start_5
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8}, Lme/kuehle/carreport/util/backup/CSVExportImport;->importOtherCost(Lme/kuehle/carreport/util/CSVReader;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 464
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 467
    :catch_5
    move-exception v1

    .line 468
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    goto :goto_c

    .line 471
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v8, 0x0

    :goto_d
    invoke-virtual {v11}, Lme/kuehle/carreport/util/CSVReader;->getRowCount()I

    move-result v14

    if-ge v8, v14, :cond_9

    .line 473
    :try_start_6
    const-string v14, ""

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v8, v14}, Lme/kuehle/carreport/util/backup/CSVExportImport;->importFuelType(Lme/kuehle/carreport/util/CSVReader;ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 471
    :goto_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 474
    :catch_6
    move-exception v1

    .line 475
    .restart local v1    # "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    goto :goto_e

    .line 479
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "exportCars":Ljava/io/File;
    .end local v5    # "exportFuelTypes":Ljava/io/File;
    .end local v6    # "exportOtherCosts":Ljava/io/File;
    .end local v7    # "exportRefuelings":Ljava/io/File;
    .end local v8    # "i":I
    .end local v10    # "readerCars":Lme/kuehle/carreport/util/CSVReader;
    .end local v11    # "readerFuelTypes":Lme/kuehle/carreport/util/CSVReader;
    .end local v12    # "readerOtherCosts":Lme/kuehle/carreport/util/CSVReader;
    .end local v13    # "readerRefuelings":Lme/kuehle/carreport/util/CSVReader;
    :cond_8
    const/4 v2, 0x1

    .line 482
    :cond_9
    if-nez v2, :cond_a

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

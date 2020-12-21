.class Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$3;
.super Ljava/lang/Object;
.source "DataDetailRefuelingFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->initFields(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$3;->this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "selectedItemView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$3;->this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    invoke-static {v8}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->access$200(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)[Lme/kuehle/carreport/db/Car;

    move-result-object v8

    aget-object v2, v8, p3

    .line 261
    .local v2, "car":Lme/kuehle/carreport/db/Car;
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$3;->this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    invoke-static {v2}, Lme/kuehle/carreport/db/FuelType;->getAllForCar(Lme/kuehle/carreport/db/Car;)[Lme/kuehle/carreport/db/FuelType;

    move-result-object v9

    invoke-static {v8, v9}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->access$302(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;[Lme/kuehle/carreport/db/FuelType;)[Lme/kuehle/carreport/db/FuelType;

    .line 263
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$3;->this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    invoke-static {v8}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->access$300(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)[Lme/kuehle/carreport/db/FuelType;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_2

    .line 264
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$3;->this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    invoke-virtual {v8}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1090009

    invoke-direct {v0, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 267
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$3;->this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    invoke-static {v8}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->access$300(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)[Lme/kuehle/carreport/db/FuelType;

    move-result-object v1

    .local v1, "arr$":[Lme/kuehle/carreport/db/FuelType;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v1, v4

    .line 268
    .local v3, "fuelType":Lme/kuehle/carreport/db/FuelType;
    invoke-virtual {v3}, Lme/kuehle/carreport/db/FuelType;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 267
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 271
    .end local v3    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    :cond_0
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$3;->this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    invoke-static {v8}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->access$400(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)Landroid/widget/Spinner;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 272
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$3;->this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    invoke-static {v8}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->access$400(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)Landroid/widget/Spinner;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 277
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "arr$":[Lme/kuehle/carreport/db/FuelType;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :goto_1
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$3;->this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    invoke-virtual {v8}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 278
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$3;->this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    iget-object v7, v8, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->editItem:Lme/kuehle/carreport/db/AbstractItem;

    check-cast v7, Lme/kuehle/carreport/db/Refueling;

    .line 279
    .local v7, "refueling":Lme/kuehle/carreport/db/Refueling;
    invoke-virtual {v7}, Lme/kuehle/carreport/db/Refueling;->getFuelType()Lme/kuehle/carreport/db/FuelType;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 280
    const/4 v6, 0x0

    .local v6, "pos":I
    :goto_2
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$3;->this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    invoke-static {v8}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->access$300(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)[Lme/kuehle/carreport/db/FuelType;

    move-result-object v8

    array-length v8, v8

    if-ge v6, v8, :cond_3

    .line 281
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$3;->this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    invoke-static {v8}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->access$300(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)[Lme/kuehle/carreport/db/FuelType;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lme/kuehle/carreport/db/FuelType;->getId()I

    move-result v8

    invoke-virtual {v7}, Lme/kuehle/carreport/db/Refueling;->getFuelType()Lme/kuehle/carreport/db/FuelType;

    move-result-object v9

    invoke-virtual {v9}, Lme/kuehle/carreport/db/FuelType;->getId()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 283
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$3;->this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    invoke-static {v8}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->access$400(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)Landroid/widget/Spinner;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 280
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 274
    .end local v6    # "pos":I
    .end local v7    # "refueling":Lme/kuehle/carreport/db/Refueling;
    :cond_2
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$3;->this$0:Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    invoke-static {v8}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->access$400(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)Landroid/widget/Spinner;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1

    .line 288
    :cond_3
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

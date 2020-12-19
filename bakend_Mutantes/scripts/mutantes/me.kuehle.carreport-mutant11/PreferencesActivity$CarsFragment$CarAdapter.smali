.class Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarAdapter;
.super Landroid/widget/BaseAdapter;
.source "PreferencesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;


# direct methods
.method private constructor <init>(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarAdapter;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;Lme/kuehle/carreport/gui/PreferencesActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;
    .param p2, "x1"    # Lme/kuehle/carreport/gui/PreferencesActivity$1;

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarAdapter;-><init>(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarAdapter;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-static {v0}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->access$800(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)[Lme/kuehle/carreport/db/Car;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarAdapter;->getItem(I)Lme/kuehle/carreport/db/Car;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lme/kuehle/carreport/db/Car;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 480
    iget-object v0, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarAdapter;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-static {v0}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->access$800(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)[Lme/kuehle/carreport/db/Car;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 485
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 490
    const/4 v0, 0x0

    .line 492
    .local v0, "holder":Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarViewHolder;
    if-nez p2, :cond_0

    .line 493
    iget-object v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarAdapter;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-virtual {v1}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000f

    invoke-virtual {v1, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 496
    new-instance v0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarViewHolder;

    .end local v0    # "holder":Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarViewHolder;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarViewHolder;-><init>(Lme/kuehle/carreport/gui/PreferencesActivity$1;)V

    .line 497
    .restart local v0    # "holder":Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarViewHolder;
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarViewHolder;->name:Landroid/widget/TextView;

    .line 499
    const v1, 0x1020015

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarViewHolder;->suspended:Landroid/widget/TextView;

    .line 501
    const v1, 0x102002b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarViewHolder;->color:Landroid/view/View;

    .line 504
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 509
    :goto_0
    iget-object v1, v0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarViewHolder;->name:Landroid/widget/TextView;

    iget-object v2, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarAdapter;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-static {v2}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->access$800(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)[Lme/kuehle/carreport/db/Car;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Car;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v1, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarAdapter;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-static {v1}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->access$800(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)[Lme/kuehle/carreport/db/Car;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lme/kuehle/carreport/db/Car;->isSuspended()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    iget-object v1, v0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarViewHolder;->suspended:Landroid/widget/TextView;

    iget-object v2, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarAdapter;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    const v3, 0x7f090015

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarAdapter;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-virtual {v5}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    iget-object v6, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarAdapter;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-static {v6}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->access$800(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)[Lme/kuehle/carreport/db/Car;

    move-result-object v6

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lme/kuehle/carreport/db/Car;->getSuspended()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v1, v0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarViewHolder;->suspended:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    :goto_1
    iget-object v1, v0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarViewHolder;->color:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarViewHolder;->setVisibility(I)V


    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarAdapter;->this$0:Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;

    invoke-static {v2}, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;->access$800(Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment;)[Lme/kuehle/carreport/db/Car;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Car;->getColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 523
    return-object p2

    .line 506
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarViewHolder;
    check-cast v0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarViewHolder;

    .restart local v0    # "holder":Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarViewHolder;
    goto :goto_0

    .line 518
    :cond_1
    iget-object v1, v0, Lme/kuehle/carreport/gui/PreferencesActivity$CarsFragment$CarViewHolder;->suspended:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.class public Lme/kuehle/carreport/gui/DataListFragment$DataListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/DataListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataListAdapter"
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private fields:[I

.field final synthetic this$0:Lme/kuehle/carreport/gui/DataListFragment;


# direct methods
.method public constructor <init>(Lme/kuehle/carreport/gui/DataListFragment;)V
    .locals 1

    .prologue
    .line 280
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataListFragment$DataListAdapter;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment$DataListAdapter;->data:Ljava/util/ArrayList;

    .line 282
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment$DataListAdapter;->fields:[I

    return-void

    :array_0
    .array-data 4
        0x7f0c0024
        0x7f0c0025
        0x7f0c0026
        0x7f0c002a
        0x7f0c0027
        0x7f0c002b
        0x7f0c0028
        0x7f0c002c
        0x7f0c0029
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment$DataListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment$DataListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 298
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 303
    if-nez p2, :cond_0

    .line 304
    iget-object v7, p0, Lme/kuehle/carreport/gui/DataListFragment$DataListAdapter;->this$0:Lme/kuehle/carreport/gui/DataListFragment;

    invoke-virtual {v7}, Lme/kuehle/carreport/gui/DataListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030010

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 308
    :cond_0
    iget-object v7, p0, Lme/kuehle/carreport/gui/DataListFragment$DataListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 309
    .local v3, "item":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataListFragment$DataListAdapter;->fields:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_3

    aget v1, v0, v2

    .line 310
    .local v1, "field":I
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 311
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 312
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 313
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    :cond_1
    const v7, 0x7f0c0025

    if-ne v1, v7, :cond_2

    .line 316
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 318
    :cond_2
    const/4 v7, 0x4

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 322
    .end local v1    # "field":I
    .end local v5    # "textView":Landroid/widget/TextView;
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    return-object p2
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataListFragment$DataListAdapter;->data:Ljava/util/ArrayList;

    .line 327
    return-void
.end method

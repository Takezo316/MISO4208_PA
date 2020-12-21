.class public Lme/kuehle/carreport/util/gui/SectionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SectionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;,
        Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;,
        Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;
    }
.end annotation


# static fields
.field private static final ITEM_VIEW_TYPE_COUNT:I = 0x2

.field private static final ITEM_VIEW_TYPE_NORMAL:I = 0x0

.field private static final ITEM_VIEW_TYPE_SEPARATOR:I = 0x1


# instance fields
.field private colorSections:Z

.field private context:Landroid/content/Context;

.field private itemViewID:I

.field private items:[Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemViewID"    # I
    .param p4, "colorSections"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<+",
            "Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 175
    iput-object p1, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter;->context:Landroid/content/Context;

    .line 176
    iput p2, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter;->itemViewID:I

    .line 177
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;

    .line 179
    .local v1, "item":Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    instance-of v3, v1, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    if-eqz v3, :cond_0

    .line 181
    check-cast v1, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    .end local v1    # "item":Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;
    invoke-virtual {v1}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->getItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;

    iput-object v3, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter;->items:[Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;

    .line 185
    iput-boolean p4, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter;->colorSections:Z

    .line 186
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter;->items:[Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lme/kuehle/carreport/util/gui/SectionListAdapter;->getItem(I)Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter;->items:[Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 200
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter;->items:[Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;

    aget-object v0, v0, p1

    instance-of v0, v0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    .line 211
    invoke-virtual {p0, p1}, Lme/kuehle/carreport/util/gui/SectionListAdapter;->getItemViewType(I)I

    move-result v4

    .line 213
    .local v4, "type":I
    if-nez p2, :cond_0

    .line 214
    iget-object v5, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    if-ne v4, v8, :cond_2

    const v5, 0x7f030012

    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v6, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 221
    :cond_0
    if-ne v4, v8, :cond_3

    .line 222
    invoke-virtual {p0, p1}, Lme/kuehle/carreport/util/gui/SectionListAdapter;->getItem(I)Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;

    move-result-object v2

    check-cast v2, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    .local v2, "section":Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    move-object v3, p2

    .line 223
    check-cast v3, Landroid/widget/TextView;

    .line 224
    .local v3, "text":Landroid/widget/TextView;
    invoke-virtual {v2}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-boolean v5, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter;->colorSections:Z

    if-eqz v5, :cond_1

    .line 226
    invoke-virtual {v2}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->getColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v0, v5, v6

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 229
    .local v0, "drawableBottom":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v2}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->getColor()I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 240
    .end local v0    # "drawableBottom":Landroid/graphics/drawable/GradientDrawable;
    .end local v2    # "section":Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    .end local v3    # "text":Landroid/widget/TextView;
    :cond_1
    :goto_1
    return-object p2

    .line 214
    :cond_2
    iget v5, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter;->itemViewID:I

    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual {p0, p1}, Lme/kuehle/carreport/util/gui/SectionListAdapter;->getItem(I)Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;

    move-result-object v1

    check-cast v1, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;

    .line 234
    .local v1, "item":Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;
    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v1}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    const v5, 0x1020015

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v1}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 250
    invoke-virtual {p0, p1}, Lme/kuehle/carreport/util/gui/SectionListAdapter;->getItemViewType(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

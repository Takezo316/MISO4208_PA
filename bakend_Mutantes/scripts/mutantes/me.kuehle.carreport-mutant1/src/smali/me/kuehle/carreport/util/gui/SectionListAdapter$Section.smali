.class public Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
.super Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;
.source "SectionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/util/gui/SectionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Section"
.end annotation


# static fields
.field public static final DONT_STICK:I = 0x0

.field public static final STICK_BOTTOM:I = 0x7fffffff

.field public static final STICK_TOP:I = -0x80000000


# instance fields
.field private color:I

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private stick:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;-><init>(Ljava/lang/String;II)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "stick"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;-><init>()V

    .line 86
    iput-object p1, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->label:Ljava/lang/String;

    .line 87
    iput p2, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->color:I

    .line 88
    iput p3, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->stick:I

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->items:Ljava/util/ArrayList;

    .line 90
    return-void
.end method


# virtual methods
.method public addItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V
    .locals 1
    .param p1, "item"    # Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;

    .prologue
    .line 93
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 72
    check-cast p1, Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->compareTo(Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;)I
    .locals 3
    .param p1, "another"    # Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;

    .prologue
    .line 98
    instance-of v1, p1, Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;

    if-eqz v1, :cond_0

    .line 99
    const/4 v1, 0x1

    .line 106
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 101
    check-cast v0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    .line 102
    .local v0, "otherSection":Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    iget v1, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->stick:I

    invoke-virtual {v0}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->getStick()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 103
    iget v1, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->stick:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->getStick()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->label:Ljava/lang/String;

    invoke-virtual {p1}, Lme/kuehle/carreport/util/gui/SectionListAdapter$AbstractListItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    if-ne p0, p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 118
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 119
    check-cast v0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;

    .line 120
    .local v0, "other":Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;
    iget v3, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->color:I

    iget v4, v0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->color:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 121
    goto :goto_0

    .line 122
    :cond_4
    iget-object v3, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->label:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 123
    iget-object v3, v0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->label:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 124
    goto :goto_0

    .line 125
    :cond_5
    iget-object v3, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->label:Ljava/lang/String;

    iget-object v4, v0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 126
    goto :goto_0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->color:I

    return v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStick()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->stick:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 144
    const/16 v0, 0x1f

    .line 145
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 146
    .local v1, "result":I
    iget v2, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->color:I

    add-int/lit8 v1, v2, 0x1f

    .line 147
    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->label:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    .line 148
    return v1

    .line 147
    :cond_0
    iget-object v2, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->label:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public removeItem(Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;)V
    .locals 1
    .param p1, "item"    # Lme/kuehle/carreport/util/gui/SectionListAdapter$Item;

    .prologue
    .line 152
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 156
    iput p1, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->color:I

    .line 157
    return-void
.end method

.method public setStick(I)V
    .locals 0
    .param p1, "stick"    # I

    .prologue
    .line 160
    iput p1, p0, Lme/kuehle/carreport/util/gui/SectionListAdapter$Section;->stick:I

    .line 161
    return-void
.end method

.class public Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;
.super Lme/kuehle/carreport/gui/AbstractDataDetailFragment;
.source "DataDetailRefuelingFragment.java"

# interfaces
.implements Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationCallback;
.implements Lme/kuehle/carreport/util/gui/DatePickerDialogFragment$DatePickerDialogFragmentListener;
.implements Lme/kuehle/carreport/util/gui/TimePickerDialogFragment$TimePickerDialogFragmentListener;


# static fields
.field private static final PICK_DATE_REQUEST_CODE:I = 0x0

.field private static final PICK_TIME_REQUEST_CODE:I = 0x1


# instance fields
.field private cars:[Lme/kuehle/carreport/db/Car;

.field private chkPartial:Landroid/widget/CheckBox;

.field private edtDate:Landroid/widget/EditText;

.field private edtMileage:Landroid/widget/EditText;

.field private edtNote:Landroid/widget/EditText;

.field private edtPrice:Landroid/widget/EditText;

.field private edtTime:Landroid/widget/EditText;

.field private edtVolume:Landroid/widget/EditText;

.field private fuelTypes:[Lme/kuehle/carreport/db/FuelType;

.field private spnCar:Landroid/widget/Spinner;

.field private spnFuelType:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)[Lme/kuehle/carreport/db/Car;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->cars:[Lme/kuehle/carreport/db/Car;

    return-object v0
.end method

.method static synthetic access$300(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)[Lme/kuehle/carreport/db/FuelType;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->fuelTypes:[Lme/kuehle/carreport/db/FuelType;

    return-object v0
.end method

.method static synthetic access$302(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;[Lme/kuehle/carreport/db/FuelType;)[Lme/kuehle/carreport/db/FuelType;
    .locals 0
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;
    .param p1, "x1"    # [Lme/kuehle/carreport/db/FuelType;

    .prologue
    .line 43
    iput-object p1, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->fuelTypes:[Lme/kuehle/carreport/db/FuelType;

    return-object p1
.end method

.method static synthetic access$400(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->spnFuelType:Landroid/widget/Spinner;

    return-object v0
.end method

.method private getDate()Ljava/util/Date;
    .locals 3

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtDate:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 119
    :goto_0
    return-object v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method private getTime()Ljava/util/Date;
    .locals 3

    .prologue
    .line 125
    :try_start_0
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtTime:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 128
    :goto_0
    return-object v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public static newInstance(I)Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 50
    new-instance v1, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;

    invoke-direct {v1}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;-><init>()V

    .line 52
    .local v1, "f":Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {v1, v0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v1
.end method


# virtual methods
.method protected fillFields(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 135
    new-instance v1, Lme/kuehle/carreport/Preferences;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 137
    .local v1, "prefs":Lme/kuehle/carreport/Preferences;
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtDate:Landroid/widget/EditText;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtTime:Landroid/widget/EditText;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "car_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 143
    .local v3, "selectCar":I
    if-nez v3, :cond_0

    .line 144
    invoke-virtual {v1}, Lme/kuehle/carreport/Preferences;->getDefaultCar()I

    move-result v3

    .line 146
    :cond_0
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_0
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->cars:[Lme/kuehle/carreport/db/Car;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 147
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->cars:[Lme/kuehle/carreport/db/Car;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 148
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->spnCar:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 146
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "pos":I
    .end local v1    # "prefs":Lme/kuehle/carreport/Preferences;
    .end local v3    # "selectCar":I
    :cond_2
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->editItem:Lme/kuehle/carreport/db/AbstractItem;

    check-cast v2, Lme/kuehle/carreport/db/Refueling;

    .line 154
    .local v2, "refueling":Lme/kuehle/carreport/db/Refueling;
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtDate:Landroid/widget/EditText;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Refueling;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtTime:Landroid/widget/EditText;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Refueling;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtMileage:Landroid/widget/EditText;

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Refueling;->getMileage()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtVolume:Landroid/widget/EditText;

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Refueling;->getVolume()F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->chkPartial:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Refueling;->isPartial()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 161
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtPrice:Landroid/widget/EditText;

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Refueling;->getPrice()F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtNote:Landroid/widget/EditText;

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Refueling;->getNote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const/4 v0, 0x0

    .restart local v0    # "pos":I
    :goto_1
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->cars:[Lme/kuehle/carreport/db/Car;

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 165
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->cars:[Lme/kuehle/carreport/db/Car;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v4

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Refueling;->getCar()Lme/kuehle/carreport/db/Car;

    move-result-object v5

    invoke-virtual {v5}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 166
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->spnCar:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 164
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    .end local v2    # "refueling":Lme/kuehle/carreport/db/Refueling;
    :cond_4
    return-void
.end method

.method protected getAlertDeleteMessage()I
    .locals 1

    .prologue
    .line 174
    const v0, 0x7f090032

    return v0
.end method

.method protected getEditObject(I)Lme/kuehle/carreport/db/AbstractItem;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 179
    new-instance v0, Lme/kuehle/carreport/db/Refueling;

    invoke-direct {v0, p1}, Lme/kuehle/carreport/db/Refueling;-><init>(I)V

    return-object v0
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 184
    const v0, 0x7f03000b

    return v0
.end method

.method protected getTitleForEdit()I
    .locals 1

    .prologue
    .line 189
    const v0, 0x7f090027

    return v0
.end method

.method protected getTitleForNew()I
    .locals 1

    .prologue
    .line 194
    const v0, 0x7f090026

    return v0
.end method

.method protected getToastDeletedMessage()I
    .locals 1

    .prologue
    .line 199
    const v0, 0x7f09004e

    return v0
.end method

.method protected getToastSavedMessage()I
    .locals 1

    .prologue
    .line 204
    const v0, 0x7f09004d

    return v0
.end method

.method protected initFields(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 209
    new-instance v5, Lme/kuehle/carreport/Preferences;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 211
    .local v5, "prefs":Lme/kuehle/carreport/Preferences;
    const v6, 0x7f0c0013

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtDate:Landroid/widget/EditText;

    .line 212
    const v6, 0x7f0c0014

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtTime:Landroid/widget/EditText;

    .line 213
    const v6, 0x7f0c0015

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtMileage:Landroid/widget/EditText;

    .line 214
    const v6, 0x7f0c001c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtVolume:Landroid/widget/EditText;

    .line 215
    const v6, 0x7f0c001f

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->chkPartial:Landroid/widget/CheckBox;

    .line 216
    const v6, 0x7f0c0017

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtPrice:Landroid/widget/EditText;

    .line 217
    const v6, 0x7f0c001e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->spnFuelType:Landroid/widget/Spinner;

    .line 218
    const v6, 0x7f0c001a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtNote:Landroid/widget/EditText;

    .line 219
    const v6, 0x7f0c001b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->spnCar:Landroid/widget/Spinner;

    .line 221
    iget-object v6, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtDate:Landroid/widget/EditText;

    new-instance v7, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$1;

    invoke-direct {v7, p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$1;-><init>(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v6, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtTime:Landroid/widget/EditText;

    new-instance v7, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$2;

    invoke-direct {v7, p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$2;-><init>(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    const v6, 0x7f0c0018

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Lme/kuehle/carreport/Preferences;->getUnitCurrency()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    const v6, 0x7f0c0016

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Lme/kuehle/carreport/Preferences;->getUnitDistance()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    const v6, 0x7f0c001d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Lme/kuehle/carreport/Preferences;->getUnitVolume()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x1090009

    invoke-direct {v2, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 250
    .local v2, "carAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-static {}, Lme/kuehle/carreport/db/Car;->getAll()[Lme/kuehle/carreport/db/Car;

    move-result-object v6

    iput-object v6, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->cars:[Lme/kuehle/carreport/db/Car;

    .line 251
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->cars:[Lme/kuehle/carreport/db/Car;

    .local v0, "arr$":[Lme/kuehle/carreport/db/Car;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 252
    .local v1, "car":Lme/kuehle/carreport/db/Car;
    invoke-virtual {v1}, Lme/kuehle/carreport/db/Car;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 251
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    .end local v1    # "car":Lme/kuehle/carreport/db/Car;
    :cond_0
    iget-object v6, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->spnCar:Landroid/widget/Spinner;

    invoke-virtual {v6, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 256
    iget-object v6, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->spnCar:Landroid/widget/Spinner;

    new-instance v7, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$3;

    invoke-direct {v7, p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment$3;-><init>(Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 294
    return-void
.end method

.method public onDialogPositiveClick(ILjava/util/Date;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 74
    if-nez p1, :cond_1

    .line 75
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtDate:Landroid/widget/EditText;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtTime:Landroid/widget/EditText;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected save()V
    .locals 4

    .prologue
    .line 298
    new-instance v0, Lme/kuehle/carreport/util/gui/InputFieldValidator;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lme/kuehle/carreport/util/gui/InputFieldValidator;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationCallback;)V

    .line 301
    .local v0, "validator":Lme/kuehle/carreport/util/gui/InputFieldValidator;
    iget-object v1, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtMileage:Landroid/widget/EditText;

    sget-object v2, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;->GreaterZero:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    const v3, 0x7f090005

    invoke-virtual {v0, v1, v2, v3}, Lme/kuehle/carreport/util/gui/InputFieldValidator;->add(Landroid/view/View;Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;I)V

    .line 304
    iget-object v1, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtVolume:Landroid/widget/EditText;

    sget-object v2, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;->GreaterZero:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    const v3, 0x7f090007

    invoke-virtual {v0, v1, v2, v3}, Lme/kuehle/carreport/util/gui/InputFieldValidator;->add(Landroid/view/View;Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;I)V

    .line 307
    iget-object v1, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtPrice:Landroid/widget/EditText;

    sget-object v2, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;->GreaterZero:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    const v3, 0x7f090008

    invoke-virtual {v0, v1, v2, v3}, Lme/kuehle/carreport/util/gui/InputFieldValidator;->add(Landroid/view/View;Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;I)V

    .line 310
    invoke-virtual {v0}, Lme/kuehle/carreport/util/gui/InputFieldValidator;->validate()V

    .line 311
    return-void
.end method

.method public validationSuccessfull()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    .line 85
    invoke-direct {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-direct {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getDateTime(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 86
    .local v0, "date":Ljava/util/Date;
    iget-object v9, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtMileage:Landroid/widget/EditText;

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getIntegerFromEditText(Landroid/widget/EditText;I)I

    move-result v1

    .line 87
    .local v1, "mileage":I
    iget-object v9, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtVolume:Landroid/widget/EditText;

    invoke-virtual {p0, v9, v11, v12}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getDoubleFromEditText(Landroid/widget/EditText;D)D

    move-result-wide v9

    double-to-float v2, v9

    .line 88
    .local v2, "volume":F
    iget-object v9, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->chkPartial:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    .line 89
    .local v4, "partial":Z
    iget-object v9, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtPrice:Landroid/widget/EditText;

    invoke-virtual {p0, v9, v11, v12}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->getDoubleFromEditText(Landroid/widget/EditText;D)D

    move-result-wide v9

    double-to-float v3, v9

    .line 90
    .local v3, "price":F
    iget-object v9, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->fuelTypes:[Lme/kuehle/carreport/db/FuelType;

    array-length v9, v9

    if-nez v9, :cond_0

    const/4 v7, 0x0

    .line 92
    .local v7, "fuelType":Lme/kuehle/carreport/db/FuelType;
    :goto_0
    iget-object v9, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->edtNote:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "note":Ljava/lang/String;
    iget-object v9, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->cars:[Lme/kuehle/carreport/db/Car;

    iget-object v10, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->spnCar:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    aget-object v6, v9, v10

    .line 95
    .local v6, "car":Lme/kuehle/carreport/db/Car;
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->isInEditMode()Z

    move-result v9

    if-nez v9, :cond_1

    .line 96
    invoke-static/range {v0 .. v7}, Lme/kuehle/carreport/db/Refueling;->create(Ljava/util/Date;IFFZLjava/lang/String;Lme/kuehle/carreport/db/Car;Lme/kuehle/carreport/db/FuelType;)Lme/kuehle/carreport/db/Refueling;

    .line 111
    :goto_1
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->saveSuccess()V

    .line 112
    return-void

    .line 90
    .end local v5    # "note":Ljava/lang/String;
    .end local v6    # "car":Lme/kuehle/carreport/db/Car;
    .end local v7    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    :cond_0
    iget-object v9, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->fuelTypes:[Lme/kuehle/carreport/db/FuelType;

    iget-object v10, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->spnFuelType:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    aget-object v7, v9, v10

    goto :goto_0

    .line 99
    .restart local v5    # "note":Ljava/lang/String;
    .restart local v6    # "car":Lme/kuehle/carreport/db/Car;
    .restart local v7    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    :cond_1
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataDetailRefuelingFragment;->editItem:Lme/kuehle/carreport/db/AbstractItem;

    check-cast v8, Lme/kuehle/carreport/db/Refueling;

    .line 100
    .local v8, "refueling":Lme/kuehle/carreport/db/Refueling;
    invoke-virtual {v8, v0}, Lme/kuehle/carreport/db/Refueling;->setDate(Ljava/util/Date;)V

    .line 101
    invoke-virtual {v8, v1}, Lme/kuehle/carreport/db/Refueling;->setMileage(I)V

    .line 102
    invoke-virtual {v8, v2}, Lme/kuehle/carreport/db/Refueling;->setVolume(F)V

    .line 103
    invoke-virtual {v8, v3}, Lme/kuehle/carreport/db/Refueling;->setPrice(F)V

    .line 104
    invoke-virtual {v8, v4}, Lme/kuehle/carreport/db/Refueling;->setPartial(Z)V

    .line 105
    invoke-virtual {v8, v5}, Lme/kuehle/carreport/db/Refueling;->setNote(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v8, v6}, Lme/kuehle/carreport/db/Refueling;->setCar(Lme/kuehle/carreport/db/Car;)V

    .line 107
    invoke-virtual {v8, v7}, Lme/kuehle/carreport/db/Refueling;->setFuelType(Lme/kuehle/carreport/db/FuelType;)V

    .line 108
    invoke-virtual {v8}, Lme/kuehle/carreport/db/Refueling;->save()V

    goto :goto_1
.end method

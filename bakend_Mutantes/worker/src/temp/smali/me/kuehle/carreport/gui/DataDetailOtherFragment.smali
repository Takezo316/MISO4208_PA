.class public Lme/kuehle/carreport/gui/DataDetailOtherFragment;
.super Lme/kuehle/carreport/gui/AbstractDataDetailFragment;
.source "DataDetailOtherFragment.java"

# interfaces
.implements Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationCallback;
.implements Lme/kuehle/carreport/util/gui/DatePickerDialogFragment$DatePickerDialogFragmentListener;
.implements Lme/kuehle/carreport/util/gui/TimePickerDialogFragment$TimePickerDialogFragmentListener;


# static fields
.field private static final PICK_DATE_REQUEST_CODE:I = 0x0

.field private static final PICK_TIME_REQUEST_CODE:I = 0x1


# instance fields
.field private cars:[Lme/kuehle/carreport/db/Car;

.field private edtDate:Landroid/widget/EditText;

.field private edtMileage:Landroid/widget/EditText;

.field private edtNote:Landroid/widget/EditText;

.field private edtPrice:Landroid/widget/EditText;

.field private edtTime:Landroid/widget/EditText;

.field private edtTitle:Landroid/widget/AutoCompleteTextView;

.field private spnCar:Landroid/widget/Spinner;

.field private spnRepeat:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lme/kuehle/carreport/gui/DataDetailOtherFragment;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataDetailOtherFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lme/kuehle/carreport/gui/DataDetailOtherFragment;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataDetailOtherFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private getDate()Ljava/util/Date;
    .locals 3

    .prologue
    .line 113
    :try_start_0
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtDate:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 116
    :goto_0
    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method private getTime()Ljava/util/Date;
    .locals 3

    .prologue
    .line 122
    :try_start_0
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtTime:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 125
    :goto_0
    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public static newInstance(I)Lme/kuehle/carreport/gui/DataDetailOtherFragment;
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 50
    new-instance v1, Lme/kuehle/carreport/gui/DataDetailOtherFragment;

    invoke-direct {v1}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;-><init>()V

    .line 52
    .local v1, "f":Lme/kuehle/carreport/gui/DataDetailOtherFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {v1, v0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->setArguments(Landroid/os/Bundle;)V

    .line 56
    return-object v1
.end method


# virtual methods
.method protected fillFields(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 131
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 132
    new-instance v2, Lme/kuehle/carreport/Preferences;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 134
    .local v2, "prefs":Lme/kuehle/carreport/Preferences;
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtDate:Landroid/widget/EditText;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtTime:Landroid/widget/EditText;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "car_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 140
    .local v3, "selectCar":I
    if-nez v3, :cond_0

    .line 141
    invoke-virtual {v2}, Lme/kuehle/carreport/Preferences;->getDefaultCar()I

    move-result v3

    .line 143
    :cond_0
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->cars:[Lme/kuehle/carreport/db/Car;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 144
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->cars:[Lme/kuehle/carreport/db/Car;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 145
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->spnCar:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 143
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "pos":I
    .end local v2    # "prefs":Lme/kuehle/carreport/Preferences;
    .end local v3    # "selectCar":I
    :cond_2
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->editItem:Lme/kuehle/carreport/db/AbstractItem;

    check-cast v0, Lme/kuehle/carreport/db/OtherCost;

    .line 151
    .local v0, "other":Lme/kuehle/carreport/db/OtherCost;
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtDate:Landroid/widget/EditText;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v0}, Lme/kuehle/carreport/db/OtherCost;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtTime:Landroid/widget/EditText;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v0}, Lme/kuehle/carreport/db/OtherCost;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtTitle:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Lme/kuehle/carreport/db/OtherCost;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v0}, Lme/kuehle/carreport/db/OtherCost;->getMileage()I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_3

    .line 157
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtMileage:Landroid/widget/EditText;

    invoke-virtual {v0}, Lme/kuehle/carreport/db/OtherCost;->getMileage()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_3
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtPrice:Landroid/widget/EditText;

    invoke-virtual {v0}, Lme/kuehle/carreport/db/OtherCost;->getPrice()F

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->spnRepeat:Landroid/widget/Spinner;

    invoke-virtual {v0}, Lme/kuehle/carreport/db/OtherCost;->getRecurrence()Lme/kuehle/carreport/util/Recurrence;

    move-result-object v5

    invoke-virtual {v5}, Lme/kuehle/carreport/util/Recurrence;->getInterval()Lme/kuehle/carreport/util/RecurrenceInterval;

    move-result-object v5

    invoke-virtual {v5}, Lme/kuehle/carreport/util/RecurrenceInterval;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 162
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtNote:Landroid/widget/EditText;

    invoke-virtual {v0}, Lme/kuehle/carreport/db/OtherCost;->getNote()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const/4 v1, 0x0

    .restart local v1    # "pos":I
    :goto_1
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->cars:[Lme/kuehle/carreport/db/Car;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 165
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->cars:[Lme/kuehle/carreport/db/Car;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v4

    invoke-virtual {v0}, Lme/kuehle/carreport/db/OtherCost;->getCar()Lme/kuehle/carreport/db/Car;

    move-result-object v5

    invoke-virtual {v5}, Lme/kuehle/carreport/db/Car;->getId()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 166
    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->spnCar:Landroid/widget/Spinner;

    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 164
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 170
    .end local v0    # "other":Lme/kuehle/carreport/db/OtherCost;
    :cond_5
    return-void
.end method

.method protected getAlertDeleteMessage()I
    .locals 1

    .prologue
    .line 174
    const v0, 0x7f090033

    return v0
.end method

.method protected getEditObject(I)Lme/kuehle/carreport/db/AbstractItem;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 179
    new-instance v0, Lme/kuehle/carreport/db/OtherCost;

    invoke-direct {v0, p1}, Lme/kuehle/carreport/db/OtherCost;-><init>(I)V

    return-object v0
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 184
    const v0, 0x7f03000a

    return v0
.end method

.method protected getTitleForEdit()I
    .locals 1

    .prologue
    .line 189
    const v0, 0x7f09002c

    return v0
.end method

.method protected getTitleForNew()I
    .locals 1

    .prologue
    .line 194
    const v0, 0x7f09002b

    return v0
.end method

.method protected getToastDeletedMessage()I
    .locals 1

    .prologue
    .line 199
    const v0, 0x7f090050

    return v0
.end method

.method protected getToastSavedMessage()I
    .locals 1

    .prologue
    .line 204
    const v0, 0x7f09004f

    return v0
.end method

.method protected initFields(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 209
    new-instance v5, Lme/kuehle/carreport/Preferences;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v5, v7}, Lme/kuehle/carreport/Preferences;-><init>(Landroid/content/Context;)V

    .line 211
    .local v5, "prefs":Lme/kuehle/carreport/Preferences;
    const v7, 0x7f0c0012

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/AutoCompleteTextView;

    iput-object v7, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtTitle:Landroid/widget/AutoCompleteTextView;

    .line 212
    const v7, 0x7f0c0013

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtDate:Landroid/widget/EditText;

    .line 213
    const v7, 0x7f0c0014

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtTime:Landroid/widget/EditText;

    .line 214
    const v7, 0x7f0c0015

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtMileage:Landroid/widget/EditText;

    .line 215
    const v7, 0x7f0c0017

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtPrice:Landroid/widget/EditText;

    .line 216
    const v7, 0x7f0c0019

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->spnRepeat:Landroid/widget/Spinner;

    .line 217
    const v7, 0x7f0c001a

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtNote:Landroid/widget/EditText;

    .line 218
    const v7, 0x7f0c001b

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->spnCar:Landroid/widget/Spinner;

    .line 220
    new-instance v6, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x109000a

    invoke-static {}, Lme/kuehle/carreport/db/OtherCost;->getAllTitles()[Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 223
    .local v6, "titleAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v7, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtTitle:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v7, v6}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    iget-object v7, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtDate:Landroid/widget/EditText;

    new-instance v8, Lme/kuehle/carreport/gui/DataDetailOtherFragment$1;

    invoke-direct {v8, p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment$1;-><init>(Lme/kuehle/carreport/gui/DataDetailOtherFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v7, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtTime:Landroid/widget/EditText;

    new-instance v8, Lme/kuehle/carreport/gui/DataDetailOtherFragment$2;

    invoke-direct {v8, p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment$2;-><init>(Lme/kuehle/carreport/gui/DataDetailOtherFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    const v7, 0x7f0c0018

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v5}, Lme/kuehle/carreport/Preferences;->getUnitCurrency()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    const v7, 0x7f0c0016

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v5}, Lme/kuehle/carreport/Preferences;->getUnitDistance()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1090009

    invoke-direct {v2, v7, v8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 250
    .local v2, "carAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-static {}, Lme/kuehle/carreport/db/Car;->getAll()[Lme/kuehle/carreport/db/Car;

    move-result-object v7

    iput-object v7, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->cars:[Lme/kuehle/carreport/db/Car;

    .line 251
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->cars:[Lme/kuehle/carreport/db/Car;

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

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 251
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 254
    .end local v1    # "car":Lme/kuehle/carreport/db/Car;
    :cond_0
    iget-object v7, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->spnCar:Landroid/widget/Spinner;

    invoke-virtual {v7, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 255
    return-void
.end method

.method public onDialogPositiveClick(ILjava/util/Date;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 72
    if-nez p1, :cond_1

    .line 73
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtDate:Landroid/widget/EditText;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtTime:Landroid/widget/EditText;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getActivity()Landroid/app/Activity;

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
    .line 259
    new-instance v0, Lme/kuehle/carreport/util/gui/InputFieldValidator;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lme/kuehle/carreport/util/gui/InputFieldValidator;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationCallback;)V

    .line 262
    .local v0, "validator":Lme/kuehle/carreport/util/gui/InputFieldValidator;
    iget-object v1, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtPrice:Landroid/widget/EditText;

    sget-object v2, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;->GreaterZero:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    const v3, 0x7f090008

    invoke-virtual {v0, v1, v2, v3}, Lme/kuehle/carreport/util/gui/InputFieldValidator;->add(Landroid/view/View;Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;I)V

    .line 265
    invoke-virtual {v0}, Lme/kuehle/carreport/util/gui/InputFieldValidator;->validate()V

    .line 266
    return-void
.end method

.method public validationSuccessfull()V
    .locals 12

    .prologue
    .line 83
    iget-object v9, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtTitle:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v9}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "title":Ljava/lang/String;
    invoke-direct {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-direct {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getDateTime(Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    .line 85
    .local v1, "date":Ljava/util/Date;
    iget-object v9, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtMileage:Landroid/widget/EditText;

    const/4 v10, -0x1

    invoke-virtual {p0, v9, v10}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getIntegerFromEditText(Landroid/widget/EditText;I)I

    move-result v2

    .line 86
    .local v2, "mileage":I
    iget-object v9, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtPrice:Landroid/widget/EditText;

    const-wide/16 v10, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->getDoubleFromEditText(Landroid/widget/EditText;D)D

    move-result-wide v9

    double-to-float v3, v9

    .line 87
    .local v3, "price":F
    iget-object v9, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->spnRepeat:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    invoke-static {v9}, Lme/kuehle/carreport/util/RecurrenceInterval;->getByValue(I)Lme/kuehle/carreport/util/RecurrenceInterval;

    move-result-object v8

    .line 89
    .local v8, "repInterval":Lme/kuehle/carreport/util/RecurrenceInterval;
    new-instance v4, Lme/kuehle/carreport/util/Recurrence;

    invoke-direct {v4, v8}, Lme/kuehle/carreport/util/Recurrence;-><init>(Lme/kuehle/carreport/util/RecurrenceInterval;)V

    .line 90
    .local v4, "recurrence":Lme/kuehle/carreport/util/Recurrence;
    iget-object v9, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->edtNote:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "note":Ljava/lang/String;
    iget-object v9, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->cars:[Lme/kuehle/carreport/db/Car;

    iget-object v10, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->spnCar:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    aget-object v6, v9, v10

    .line 93
    .local v6, "car":Lme/kuehle/carreport/db/Car;
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->isInEditMode()Z

    move-result v9

    if-nez v9, :cond_0

    .line 94
    invoke-static/range {v0 .. v6}, Lme/kuehle/carreport/db/OtherCost;->create(Ljava/lang/String;Ljava/util/Date;IFLme/kuehle/carreport/util/Recurrence;Ljava/lang/String;Lme/kuehle/carreport/db/Car;)Lme/kuehle/carreport/db/OtherCost;

    .line 108
    :goto_0
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->saveSuccess()V

    .line 109
    return-void

    .line 97
    :cond_0
    iget-object v7, p0, Lme/kuehle/carreport/gui/DataDetailOtherFragment;->editItem:Lme/kuehle/carreport/db/AbstractItem;

    check-cast v7, Lme/kuehle/carreport/db/OtherCost;

    .line 98
    .local v7, "other":Lme/kuehle/carreport/db/OtherCost;
    invoke-virtual {v7, v0}, Lme/kuehle/carreport/db/OtherCost;->setTitle(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v7, v1}, Lme/kuehle/carreport/db/OtherCost;->setDate(Ljava/util/Date;)V

    .line 100
    invoke-virtual {v7, v2}, Lme/kuehle/carreport/db/OtherCost;->setMileage(I)V

    .line 101
    invoke-virtual {v7, v3}, Lme/kuehle/carreport/db/OtherCost;->setPrice(F)V

    .line 102
    invoke-virtual {v7, v4}, Lme/kuehle/carreport/db/OtherCost;->setRecurrence(Lme/kuehle/carreport/util/Recurrence;)V

    .line 103
    invoke-virtual {v7, v5}, Lme/kuehle/carreport/db/OtherCost;->setNote(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v7, v6}, Lme/kuehle/carreport/db/OtherCost;->setCar(Lme/kuehle/carreport/db/Car;)V

    .line 105
    invoke-virtual {v7}, Lme/kuehle/carreport/db/OtherCost;->save()V

    goto :goto_0
.end method

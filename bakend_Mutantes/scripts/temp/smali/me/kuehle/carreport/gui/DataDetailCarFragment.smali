.class public Lme/kuehle/carreport/gui/DataDetailCarFragment;
.super Lme/kuehle/carreport/gui/AbstractDataDetailFragment;
.source "DataDetailCarFragment.java"

# interfaces
.implements Lme/kuehle/carreport/util/gui/ColorPickerDialogFragment$ColorPickerDialogFragmentListener;
.implements Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationCallback;
.implements Lme/kuehle/carreport/util/gui/DatePickerDialogFragment$DatePickerDialogFragmentListener;


# static fields
.field private static final PICK_COLOR_REQUEST_CODE:I = 0x1

.field private static final PICK_SUSPEND_DATE_REQUEST_CODE:I = 0x2


# instance fields
.field private chkSuspend:Landroid/widget/CheckBox;

.field private color:I

.field private colorIndicator:Landroid/view/View;

.field private edtName:Landroid/widget/EditText;

.field private edtSuspendDate:Landroid/widget/EditText;

.field private edtSuspendDateAnimator:Lme/kuehle/carreport/util/gui/SimpleAnimator;

.field private fuelTypeGroup:Landroid/view/ViewGroup;

.field private fuelTypeInputMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lme/kuehle/carreport/db/FuelType;",
            ">;"
        }
    .end annotation
.end field

.field private fuelTypeNameAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fuelTypeRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lme/kuehle/carreport/db/FuelType;",
            ">;"
        }
    .end annotation
.end field

.field private fuelTypeTankAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private removeFuelTypeListener:Landroid/view/View$OnClickListener;

.field private tankSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->fuelTypeRemovals:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->fuelTypeInputMappings:Ljava/util/HashMap;

    .line 75
    new-instance v0, Lme/kuehle/carreport/gui/DataDetailCarFragment$1;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment$1;-><init>(Lme/kuehle/carreport/gui/DataDetailCarFragment;)V

    iput-object v0, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->tankSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 92
    new-instance v0, Lme/kuehle/carreport/gui/DataDetailCarFragment$2;

    invoke-direct {v0, p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment$2;-><init>(Lme/kuehle/carreport/gui/DataDetailCarFragment;)V

    iput-object v0, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->removeFuelTypeListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lme/kuehle/carreport/gui/DataDetailCarFragment;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataDetailCarFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->fuelTypeTankAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lme/kuehle/carreport/gui/DataDetailCarFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataDetailCarFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->fuelTypeInputMappings:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lme/kuehle/carreport/gui/DataDetailCarFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataDetailCarFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->fuelTypeRemovals:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lme/kuehle/carreport/gui/DataDetailCarFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataDetailCarFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->fuelTypeGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lme/kuehle/carreport/gui/DataDetailCarFragment;)I
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataDetailCarFragment;

    .prologue
    .line 57
    iget v0, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->color:I

    return v0
.end method

.method static synthetic access$500(Lme/kuehle/carreport/gui/DataDetailCarFragment;Lme/kuehle/carreport/db/FuelType;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataDetailCarFragment;
    .param p1, "x1"    # Lme/kuehle/carreport/db/FuelType;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->addFuelTypeView(Lme/kuehle/carreport/db/FuelType;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lme/kuehle/carreport/gui/DataDetailCarFragment;)Lme/kuehle/carreport/util/gui/SimpleAnimator;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataDetailCarFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->edtSuspendDateAnimator:Lme/kuehle/carreport/util/gui/SimpleAnimator;

    return-object v0
.end method

.method static synthetic access$700(Lme/kuehle/carreport/gui/DataDetailCarFragment;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/DataDetailCarFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->getSuspendDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private addFuelTypeView(Lme/kuehle/carreport/db/FuelType;)Landroid/view/View;
    .locals 9
    .param p1, "fuelType"    # Lme/kuehle/carreport/db/FuelType;

    .prologue
    .line 189
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030013

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 191
    .local v3, "ftView":Landroid/view/View;
    iget-object v5, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->fuelTypeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 193
    const v5, 0x7f0c000c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/AutoCompleteTextView;

    .line 195
    .local v2, "edtName":Landroid/widget/AutoCompleteTextView;
    iget-object v5, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->fuelTypeNameAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v5}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 197
    const v5, 0x7f0c002d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 198
    .local v4, "spnTank":Landroid/widget/Spinner;
    iget-object v5, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->fuelTypeTankAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 199
    iget-object v5, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->tankSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 201
    const v5, 0x7f0c002e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 202
    .local v1, "btnRemove":Landroid/view/View;
    iget-object v5, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->removeFuelTypeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p1}, Lme/kuehle/carreport/db/FuelType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {p1}, Lme/kuehle/carreport/db/FuelType;->getTank()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 211
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v6, 0x1

    const/high16 v7, 0x42400000    # 48.0f

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 214
    new-instance v0, Lme/kuehle/carreport/util/gui/SimpleAnimator;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    sget-object v6, Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;->Height:Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    invoke-direct {v0, v5, v3, v6}, Lme/kuehle/carreport/util/gui/SimpleAnimator;-><init>(Landroid/content/Context;Landroid/view/View;Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;)V

    .line 216
    .local v0, "animator":Lme/kuehle/carreport/util/gui/SimpleAnimator;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 217
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v6, 0x0

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 218
    invoke-virtual {v0}, Lme/kuehle/carreport/util/gui/SimpleAnimator;->show()V

    .line 220
    iget-object v5, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->fuelTypeInputMappings:Ljava/util/HashMap;

    invoke-virtual {v5, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-object v3
.end method

.method private getSuspendDate()Ljava/util/Date;
    .locals 3

    .prologue
    .line 226
    :try_start_0
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->edtSuspendDate:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 229
    :goto_0
    return-object v1

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method protected fillFields(Landroid/view/View;)V
    .locals 17
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 236
    .local v10, "suspendDate":Ljava/util/Date;
    invoke-virtual/range {p0 .. p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->isInEditMode()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->editItem:Lme/kuehle/carreport/db/AbstractItem;

    check-cast v2, Lme/kuehle/carreport/db/Car;

    .line 239
    .local v2, "car":Lme/kuehle/carreport/db/Car;
    move-object/from16 v0, p0

    iget-object v12, v0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->edtName:Landroid/widget/EditText;

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Car;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {v2}, Lme/kuehle/carreport/db/Car;->getColor()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->color:I

    .line 242
    invoke-static {v2}, Lme/kuehle/carreport/db/FuelType;->getAllForCar(Lme/kuehle/carreport/db/Car;)[Lme/kuehle/carreport/db/FuelType;

    move-result-object v5

    .line 243
    .local v5, "fuelTypes":[Lme/kuehle/carreport/db/FuelType;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v4, "fuelTypeNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 245
    .local v8, "maxTank":I
    move-object v1, v5

    .local v1, "arr$":[Lme/kuehle/carreport/db/FuelType;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v1, v6

    .line 246
    .local v3, "fuelType":Lme/kuehle/carreport/db/FuelType;
    invoke-virtual {v3}, Lme/kuehle/carreport/db/FuelType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 247
    invoke-virtual {v3}, Lme/kuehle/carreport/db/FuelType;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_0
    invoke-virtual {v3}, Lme/kuehle/carreport/db/FuelType;->getTank()I

    move-result v12

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 245
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 251
    .end local v3    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 253
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 254
    .local v9, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->fuelTypeNameAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v12, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 256
    .end local v9    # "name":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x1

    .local v11, "tank":I
    :goto_2
    if-gt v11, v8, :cond_3

    .line 257
    move-object/from16 v0, p0

    iget-object v12, v0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->fuelTypeTankAdapter:Landroid/widget/ArrayAdapter;

    const v13, 0x7f090012

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    add-int/lit8 v14, v11, -0x1

    invoke-virtual {v12, v13, v14}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 256
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 261
    :cond_3
    move-object v1, v5

    array-length v7, v1

    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v7, :cond_4

    aget-object v3, v1, v6

    .line 262
    .restart local v3    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->addFuelTypeView(Lme/kuehle/carreport/db/FuelType;)Landroid/view/View;

    .line 261
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 265
    .end local v3    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->chkSuspend:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Lme/kuehle/carreport/db/Car;->isSuspended()Z

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 266
    invoke-virtual {v2}, Lme/kuehle/carreport/db/Car;->isSuspended()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 267
    invoke-virtual {v2}, Lme/kuehle/carreport/db/Car;->getSuspended()Ljava/util/Date;

    move-result-object v10

    .line 274
    .end local v1    # "arr$":[Lme/kuehle/carreport/db/FuelType;
    .end local v2    # "car":Lme/kuehle/carreport/db/Car;
    .end local v4    # "fuelTypeNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "fuelTypes":[Lme/kuehle/carreport/db/FuelType;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "maxTank":I
    .end local v11    # "tank":I
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->colorIndicator:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, p0

    iget v13, v0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->color:I

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v12, v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v12, v0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->chkSuspend:Landroid/widget/CheckBox;

    invoke-virtual {v12}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    if-nez v12, :cond_6

    .line 277
    move-object/from16 v0, p0

    iget-object v12, v0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->edtSuspendDate:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    const/4 v13, 0x0

    iput v13, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 278
    move-object/from16 v0, p0

    iget-object v12, v0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->edtSuspendDate:Landroid/widget/EditText;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setAlpha(F)V

    .line 280
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->edtSuspendDate:Landroid/widget/EditText;

    invoke-virtual/range {p0 .. p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 282
    return-void

    .line 270
    :cond_7
    const v12, -0xffff01

    move-object/from16 v0, p0

    iput v12, v0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->color:I

    .line 271
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->addFuelTypeView(Lme/kuehle/carreport/db/FuelType;)Landroid/view/View;

    goto :goto_4
.end method

.method protected getAlertDeleteMessage()I
    .locals 1

    .prologue
    .line 286
    const v0, 0x7f090034

    return v0
.end method

.method protected getEditObject(I)Lme/kuehle/carreport/db/AbstractItem;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 291
    new-instance v0, Lme/kuehle/carreport/db/Car;

    invoke-direct {v0, p1}, Lme/kuehle/carreport/db/Car;-><init>(I)V

    return-object v0
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 296
    const v0, 0x7f030009

    return v0
.end method

.method protected getTitleForEdit()I
    .locals 1

    .prologue
    .line 301
    const v0, 0x7f09002e

    return v0
.end method

.method protected getTitleForNew()I
    .locals 1

    .prologue
    .line 306
    const v0, 0x7f09002d

    return v0
.end method

.method protected getToastDeletedMessage()I
    .locals 1

    .prologue
    .line 311
    const v0, 0x7f090052

    return v0
.end method

.method protected getToastSavedMessage()I
    .locals 1

    .prologue
    .line 316
    const v0, 0x7f090051

    return v0
.end method

.method protected initFields(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x1090009

    .line 321
    const v2, 0x7f0c000c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->edtName:Landroid/widget/EditText;

    .line 322
    const v2, 0x7f0c000d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->colorIndicator:Landroid/view/View;

    .line 323
    const v2, 0x7f0c000e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->fuelTypeGroup:Landroid/view/ViewGroup;

    .line 324
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->fuelTypeNameAdapter:Landroid/widget/ArrayAdapter;

    .line 326
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->fuelTypeTankAdapter:Landroid/widget/ArrayAdapter;

    .line 328
    const v2, 0x7f0c0010

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->chkSuspend:Landroid/widget/CheckBox;

    .line 329
    const v2, 0x7f0c0011

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->edtSuspendDate:Landroid/widget/EditText;

    .line 330
    new-instance v2, Lme/kuehle/carreport/util/gui/SimpleAnimator;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->edtSuspendDate:Landroid/widget/EditText;

    sget-object v5, Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;->Height:Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    invoke-direct {v2, v3, v4, v5}, Lme/kuehle/carreport/util/gui/SimpleAnimator;-><init>(Landroid/content/Context;Landroid/view/View;Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;)V

    iput-object v2, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->edtSuspendDateAnimator:Lme/kuehle/carreport/util/gui/SimpleAnimator;

    .line 333
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->colorIndicator:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 334
    .local v1, "rowColor":Landroid/view/View;
    new-instance v2, Lme/kuehle/carreport/gui/DataDetailCarFragment$3;

    invoke-direct {v2, p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment$3;-><init>(Lme/kuehle/carreport/gui/DataDetailCarFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->fuelTypeTankAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x7f090013

    invoke-virtual {p0, v3}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 346
    const v2, 0x7f0c000f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 347
    .local v0, "btnAddFuelType":Landroid/widget/Button;
    new-instance v2, Lme/kuehle/carreport/gui/DataDetailCarFragment$4;

    invoke-direct {v2, p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment$4;-><init>(Lme/kuehle/carreport/gui/DataDetailCarFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->chkSuspend:Landroid/widget/CheckBox;

    new-instance v3, Lme/kuehle/carreport/gui/DataDetailCarFragment$5;

    invoke-direct {v3, p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment$5;-><init>(Lme/kuehle/carreport/gui/DataDetailCarFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 366
    iget-object v2, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->edtSuspendDate:Landroid/widget/EditText;

    new-instance v3, Lme/kuehle/carreport/gui/DataDetailCarFragment$6;

    invoke-direct {v3, p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment$6;-><init>(Lme/kuehle/carreport/gui/DataDetailCarFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Lme/kuehle/carreport/gui/AbstractDataDetailFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 117
    invoke-static {}, Lme/kuehle/carreport/db/Car;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 118
    const v0, 0x7f0c002f

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 120
    :cond_0
    return-void
.end method

.method public onDialogNegativeClick(I)V
    .locals 0
    .param p1, "requestCode"    # I

    .prologue
    .line 124
    return-void
.end method

.method public onDialogPositiveClick(II)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "color"    # I

    .prologue
    .line 136
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 137
    iput p2, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->color:I

    .line 138
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->colorIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 141
    :cond_0
    return-void
.end method

.method public onDialogPositiveClick(ILjava/util/Date;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "date"    # Ljava/util/Date;

    .prologue
    .line 128
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 129
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->edtSuspendDate:Landroid/widget/EditText;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    return-void
.end method

.method protected save()V
    .locals 4

    .prologue
    .line 379
    new-instance v0, Lme/kuehle/carreport/util/gui/InputFieldValidator;

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lme/kuehle/carreport/util/gui/InputFieldValidator;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationCallback;)V

    .line 381
    .local v0, "validator":Lme/kuehle/carreport/util/gui/InputFieldValidator;
    iget-object v1, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->edtName:Landroid/widget/EditText;

    sget-object v2, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;->NotEmpty:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    const v3, 0x7f09000b

    invoke-virtual {v0, v1, v2, v3}, Lme/kuehle/carreport/util/gui/InputFieldValidator;->add(Landroid/view/View;Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;I)V

    .line 383
    invoke-virtual {v0}, Lme/kuehle/carreport/util/gui/InputFieldValidator;->validate()V

    .line 384
    return-void
.end method

.method public validationSuccessfull()V
    .locals 9

    .prologue
    .line 145
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->edtName:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 147
    .local v6, "suspended":Ljava/util/Date;
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->chkSuspend:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 148
    invoke-direct {p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->getSuspendDate()Ljava/util/Date;

    move-result-object v6

    .line 152
    :cond_0
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->isInEditMode()Z

    move-result v8

    if-nez v8, :cond_2

    .line 153
    iget v8, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->color:I

    invoke-static {v5, v8, v6}, Lme/kuehle/carreport/db/Car;->create(Ljava/lang/String;ILjava/util/Date;)Lme/kuehle/carreport/db/Car;

    move-result-object v0

    .line 162
    .local v0, "car":Lme/kuehle/carreport/db/Car;
    :goto_0
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->fuelTypeInputMappings:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 163
    .local v2, "ftViews":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/View;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 164
    .local v1, "ftView":Landroid/view/View;
    const v8, 0x7f0c000c

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 166
    const v8, 0x7f0c002d

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v8

    add-int/lit8 v7, v8, 0x1

    .line 169
    .local v7, "tank":I
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->fuelTypeInputMappings:Ljava/util/HashMap;

    invoke-virtual {v8, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/kuehle/carreport/db/FuelType;

    .line 170
    .local v3, "fuelType":Lme/kuehle/carreport/db/FuelType;
    if-nez v3, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 171
    invoke-static {v0, v5, v7}, Lme/kuehle/carreport/db/FuelType;->create(Lme/kuehle/carreport/db/Car;Ljava/lang/String;I)Lme/kuehle/carreport/db/FuelType;

    goto :goto_1

    .line 155
    .end local v0    # "car":Lme/kuehle/carreport/db/Car;
    .end local v1    # "ftView":Landroid/view/View;
    .end local v2    # "ftViews":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/View;>;"
    .end local v3    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "tank":I
    :cond_2
    iget-object v0, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->editItem:Lme/kuehle/carreport/db/AbstractItem;

    check-cast v0, Lme/kuehle/carreport/db/Car;

    .line 156
    .restart local v0    # "car":Lme/kuehle/carreport/db/Car;
    invoke-virtual {v0, v5}, Lme/kuehle/carreport/db/Car;->setName(Ljava/lang/String;)V

    .line 157
    iget v8, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->color:I

    invoke-virtual {v0, v8}, Lme/kuehle/carreport/db/Car;->setColor(I)V

    .line 158
    invoke-virtual {v0, v6}, Lme/kuehle/carreport/db/Car;->setSuspended(Ljava/util/Date;)V

    .line 159
    invoke-virtual {v0}, Lme/kuehle/carreport/db/Car;->save()V

    goto :goto_0

    .line 172
    .restart local v1    # "ftView":Landroid/view/View;
    .restart local v2    # "ftViews":Ljava/util/Set;, "Ljava/util/Set<Landroid/view/View;>;"
    .restart local v3    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "tank":I
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 173
    invoke-virtual {v3, v5}, Lme/kuehle/carreport/db/FuelType;->setName(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v3, v7}, Lme/kuehle/carreport/db/FuelType;->setTank(I)V

    .line 175
    invoke-virtual {v3}, Lme/kuehle/carreport/db/FuelType;->save()V

    goto :goto_1

    .line 176
    :cond_4
    if-eqz v3, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 177
    invoke-virtual {v3}, Lme/kuehle/carreport/db/FuelType;->delete()V

    goto :goto_1

    .line 181
    .end local v1    # "ftView":Landroid/view/View;
    .end local v3    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    .end local v7    # "tank":I
    :cond_5
    iget-object v8, p0, Lme/kuehle/carreport/gui/DataDetailCarFragment;->fuelTypeRemovals:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/kuehle/carreport/db/FuelType;

    .line 182
    .restart local v3    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    invoke-virtual {v3}, Lme/kuehle/carreport/db/FuelType;->delete()V

    goto :goto_2

    .line 185
    .end local v3    # "fuelType":Lme/kuehle/carreport/db/FuelType;
    :cond_6
    invoke-virtual {p0}, Lme/kuehle/carreport/gui/DataDetailCarFragment;->saveSuccess()V

    .line 186
    return-void
.end method

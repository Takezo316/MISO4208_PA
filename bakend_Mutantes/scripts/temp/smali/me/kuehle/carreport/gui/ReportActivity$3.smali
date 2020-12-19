.class Lme/kuehle/carreport/gui/ReportActivity$3;
.super Ljava/lang/Object;
.source "ReportActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/gui/ReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private graphAnimator:Lme/kuehle/carreport/util/gui/SimpleAnimator;

.field private input:Landroid/widget/EditText;

.field private option:I

.field final synthetic this$0:Lme/kuehle/carreport/gui/ReportActivity;


# direct methods
.method constructor <init>(Lme/kuehle/carreport/gui/ReportActivity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lme/kuehle/carreport/gui/ReportActivity$3;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lme/kuehle/carreport/gui/ReportActivity$3;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lme/kuehle/carreport/gui/ReportActivity$3;->applyCalculation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lme/kuehle/carreport/gui/ReportActivity$3;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/gui/ReportActivity$3;

    .prologue
    .line 95
    iget-object v0, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->input:Landroid/widget/EditText;

    return-object v0
.end method

.method private applyCalculation(Ljava/lang/String;)V
    .locals 4
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 180
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 182
    .local v0, "value1":D
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 185
    :goto_0
    iget-object v2, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    invoke-static {v2}, Lme/kuehle/carreport/gui/ReportActivity;->access$200(Lme/kuehle/carreport/gui/ReportActivity;)Lme/kuehle/carreport/reports/AbstractReport;

    move-result-object v2

    invoke-virtual {v2}, Lme/kuehle/carreport/reports/AbstractReport;->getData()Lme/kuehle/carreport/reports/ReportData;

    move-result-object v2

    iget v3, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->option:I

    invoke-virtual {v2, v0, v1, v3}, Lme/kuehle/carreport/reports/ReportData;->applyCalculation(DI)V

    .line 186
    iget-object v2, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    const v3, 0x7f0c0005

    invoke-virtual {v2, v3}, Lme/kuehle/carreport/gui/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 188
    return-void

    .line 183
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 102
    invoke-interface {p2}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    iput v0, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->option:I

    .line 103
    iget-object v0, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->input:Landroid/widget/EditText;

    iget-object v1, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    invoke-static {v1}, Lme/kuehle/carreport/gui/ReportActivity;->access$200(Lme/kuehle/carreport/gui/ReportActivity;)Lme/kuehle/carreport/reports/AbstractReport;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/reports/AbstractReport;->getCalculationOptions()[Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;

    move-result-object v1

    iget v2, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->option:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;->getHint1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lme/kuehle/carreport/gui/ReportActivity$3;->applyCalculation(Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 9
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    iget-object v6, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    invoke-static {v6}, Lme/kuehle/carreport/gui/ReportActivity;->access$200(Lme/kuehle/carreport/gui/ReportActivity;)Lme/kuehle/carreport/reports/AbstractReport;

    move-result-object v6

    invoke-virtual {v6}, Lme/kuehle/carreport/reports/AbstractReport;->getCalculationOptions()[Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;

    move-result-object v3

    .line 113
    .local v3, "options":[Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;
    array-length v6, v3

    if-nez v6, :cond_0

    .line 161
    :goto_0
    return v4

    .line 115
    :cond_0
    array-length v6, v3

    if-le v6, v5, :cond_1

    .line 116
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v3

    if-ge v1, v6, :cond_1

    .line 117
    aget-object v6, v3, v1

    invoke-virtual {v6}, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v4, v4, v1, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 119
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_1
    iput v4, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->option:I

    .line 124
    iget-object v4, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    const v6, 0x7f0c0003

    invoke-virtual {v4, v6}, Lme/kuehle/carreport/gui/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    .local v0, "graph":Landroid/view/View;
    new-instance v4, Lme/kuehle/carreport/util/gui/SimpleAnimator;

    iget-object v6, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    sget-object v7, Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;->Weight:Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;

    const/16 v8, 0x1f4

    invoke-direct {v4, v6, v0, v7, v8}, Lme/kuehle/carreport/util/gui/SimpleAnimator;-><init>(Landroid/content/Context;Landroid/view/View;Lme/kuehle/carreport/util/gui/SimpleAnimator$Property;I)V

    iput-object v4, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->graphAnimator:Lme/kuehle/carreport/util/gui/SimpleAnimator;

    .line 128
    new-instance v4, Landroid/widget/EditText;

    iget-object v6, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    invoke-direct {v4, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->input:Landroid/widget/EditText;

    .line 129
    iget-object v4, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->input:Landroid/widget/EditText;

    const/16 v6, 0x2002

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 131
    iget-object v4, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->input:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setLines(I)V

    .line 132
    iget-object v4, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->input:Landroid/widget/EditText;

    iget v6, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->option:I

    aget-object v6, v3, v6

    invoke-virtual {v6}, Lme/kuehle/carreport/reports/AbstractReport$CalculationOption;->getHint1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v4, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->input:Landroid/widget/EditText;

    new-instance v6, Lme/kuehle/carreport/gui/ReportActivity$3$1;

    invoke-direct {v6, p0}, Lme/kuehle/carreport/gui/ReportActivity$3$1;-><init>(Lme/kuehle/carreport/gui/ReportActivity$3;)V

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v4, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->input:Landroid/widget/EditText;

    invoke-virtual {p1, v4}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 150
    iget-object v4, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->input:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 152
    iget-object v4, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->graphAnimator:Lme/kuehle/carreport/util/gui/SimpleAnimator;

    const/4 v6, 0x0

    new-instance v7, Lme/kuehle/carreport/gui/ReportActivity$3$2;

    invoke-direct {v7, p0}, Lme/kuehle/carreport/gui/ReportActivity$3$2;-><init>(Lme/kuehle/carreport/gui/ReportActivity$3;)V

    invoke-virtual {v4, v6, v7}, Lme/kuehle/carreport/util/gui/SimpleAnimator;->hide(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 160
    iget-object v4, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->input:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lme/kuehle/carreport/gui/ReportActivity$3;->applyCalculation(Ljava/lang/String;)V

    move v4, v5

    .line 161
    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v3, 0x0

    .line 166
    iget-object v1, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    invoke-static {v1}, Lme/kuehle/carreport/gui/ReportActivity;->access$200(Lme/kuehle/carreport/gui/ReportActivity;)Lme/kuehle/carreport/reports/AbstractReport;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/reports/AbstractReport;->getData()Lme/kuehle/carreport/reports/ReportData;

    move-result-object v1

    invoke-virtual {v1}, Lme/kuehle/carreport/reports/ReportData;->resetCalculation()V

    .line 168
    iget-object v1, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->this$0:Lme/kuehle/carreport/gui/ReportActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lme/kuehle/carreport/gui/ReportActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 169
    .local v0, "keyboard":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 171
    iget-object v1, p0, Lme/kuehle/carreport/gui/ReportActivity$3;->graphAnimator:Lme/kuehle/carreport/util/gui/SimpleAnimator;

    invoke-virtual {v1, v3, v3}, Lme/kuehle/carreport/util/gui/SimpleAnimator;->show(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

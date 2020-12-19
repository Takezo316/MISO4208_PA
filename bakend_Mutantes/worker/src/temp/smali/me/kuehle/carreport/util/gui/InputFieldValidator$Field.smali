.class Lme/kuehle/carreport/util/gui/InputFieldValidator$Field;
.super Ljava/lang/Object;
.source "InputFieldValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/util/gui/InputFieldValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Field"
.end annotation


# instance fields
.field private field:Landroid/view/View;

.field private message:Ljava/lang/String;

.field final synthetic this$0:Lme/kuehle/carreport/util/gui/InputFieldValidator;

.field private type:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;


# direct methods
.method public constructor <init>(Lme/kuehle/carreport/util/gui/InputFieldValidator;Landroid/view/View;Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;Ljava/lang/String;)V
    .locals 4
    .param p2, "field"    # Landroid/view/View;
    .param p3, "type"    # Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lme/kuehle/carreport/util/gui/InputFieldValidator$Field;->this$0:Lme/kuehle/carreport/util/gui/InputFieldValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lme/kuehle/carreport/util/gui/InputFieldValidator$Field;->field:Landroid/view/View;

    .line 36
    iput-object p3, p0, Lme/kuehle/carreport/util/gui/InputFieldValidator$Field;->type:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    .line 37
    invoke-static {p1}, Lme/kuehle/carreport/util/gui/InputFieldValidator;->access$000(Lme/kuehle/carreport/util/gui/InputFieldValidator;)Landroid/content/Context;

    move-result-object v1

    sget-object v0, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;->GreaterZero:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    if-ne p3, v0, :cond_0

    const v0, 0x7f09003d

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/kuehle/carreport/util/gui/InputFieldValidator$Field;->message:Ljava/lang/String;

    .line 41
    return-void

    .line 37
    :cond_0
    const v0, 0x7f09003e

    goto :goto_0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/InputFieldValidator$Field;->message:Ljava/lang/String;

    return-object v0
.end method

.method public validate()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 48
    iget-object v5, p0, Lme/kuehle/carreport/util/gui/InputFieldValidator$Field;->field:Landroid/view/View;

    instance-of v5, v5, Landroid/widget/EditText;

    if-eqz v5, :cond_2

    .line 49
    iget-object v1, p0, Lme/kuehle/carreport/util/gui/InputFieldValidator$Field;->field:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    .line 50
    .local v1, "editText":Landroid/widget/EditText;
    iget-object v5, p0, Lme/kuehle/carreport/util/gui/InputFieldValidator$Field;->type:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    sget-object v6, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;->NotEmpty:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    if-ne v5, v6, :cond_1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    .end local v1    # "editText":Landroid/widget/EditText;
    :cond_0
    :goto_0
    return v4

    .line 53
    .restart local v1    # "editText":Landroid/widget/EditText;
    :cond_1
    iget-object v5, p0, Lme/kuehle/carreport/util/gui/InputFieldValidator$Field;->type:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    sget-object v6, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;->GreaterZero:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;

    if-ne v5, v6, :cond_2

    .line 55
    :try_start_0
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 57
    .local v2, "number":D
    const-wide/16 v5, 0x0

    cmpg-double v5, v2, v5

    if-lez v5, :cond_0

    .line 65
    .end local v1    # "editText":Landroid/widget/EditText;
    .end local v2    # "number":D
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 60
    .restart local v1    # "editText":Landroid/widget/EditText;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

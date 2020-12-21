.class public Lme/kuehle/carreport/util/gui/InputFieldValidator;
.super Ljava/lang/Object;
.source "InputFieldValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;,
        Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationCallback;,
        Lme/kuehle/carreport/util/gui/InputFieldValidator$Field;
    }
.end annotation


# instance fields
.field private callback:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationCallback;

.field private context:Landroid/content/Context;

.field private fragmentManager:Landroid/app/FragmentManager;

.field private requiredFields:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lme/kuehle/carreport/util/gui/InputFieldValidator$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/app/FragmentManager;
    .param p3, "callback"    # Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationCallback;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lme/kuehle/carreport/util/gui/InputFieldValidator;->requiredFields:Ljava/util/Vector;

    .line 84
    iput-object p1, p0, Lme/kuehle/carreport/util/gui/InputFieldValidator;->context:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lme/kuehle/carreport/util/gui/InputFieldValidator;->fragmentManager:Landroid/app/FragmentManager;

    .line 86
    iput-object p3, p0, Lme/kuehle/carreport/util/gui/InputFieldValidator;->callback:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationCallback;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lme/kuehle/carreport/util/gui/InputFieldValidator;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lme/kuehle/carreport/util/gui/InputFieldValidator;

    .prologue
    .line 28
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/InputFieldValidator;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public add(Landroid/view/View;Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;
    .param p3, "messageID"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/InputFieldValidator;->requiredFields:Ljava/util/Vector;

    new-instance v1, Lme/kuehle/carreport/util/gui/InputFieldValidator$Field;

    iget-object v2, p0, Lme/kuehle/carreport/util/gui/InputFieldValidator;->context:Landroid/content/Context;

    invoke-virtual {v2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Lme/kuehle/carreport/util/gui/InputFieldValidator$Field;-><init>(Lme/kuehle/carreport/util/gui/InputFieldValidator;Landroid/view/View;Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public validate()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 94
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 95
    .local v8, "messages":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v1, p0, Lme/kuehle/carreport/util/gui/InputFieldValidator;->requiredFields:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lme/kuehle/carreport/util/gui/InputFieldValidator$Field;

    .line 96
    .local v6, "field":Lme/kuehle/carreport/util/gui/InputFieldValidator$Field;
    invoke-virtual {v6}, Lme/kuehle/carreport/util/gui/InputFieldValidator$Field;->validate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {v6}, Lme/kuehle/carreport/util/gui/InputFieldValidator$Field;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    .end local v6    # "field":Lme/kuehle/carreport/util/gui/InputFieldValidator$Field;
    :cond_1
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 102
    const/4 v1, 0x0

    const v2, 0x7f09003c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "\n"

    invoke-static {v3, v8}, Lme/kuehle/carreport/util/Strings;->join(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x104000a

    move-object v5, v0

    invoke-static/range {v0 .. v5}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->newInstance(Landroid/app/Fragment;ILjava/lang/Integer;Ljava/lang/String;ILjava/lang/Integer;)Lme/kuehle/carreport/util/gui/MessageDialogFragment;

    move-result-object v1

    iget-object v2, p0, Lme/kuehle/carreport/util/gui/InputFieldValidator;->fragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1, v2, v0}, Lme/kuehle/carreport/util/gui/MessageDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 109
    :goto_1
    return-void

    .line 107
    :cond_2
    iget-object v0, p0, Lme/kuehle/carreport/util/gui/InputFieldValidator;->callback:Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationCallback;

    invoke-interface {v0}, Lme/kuehle/carreport/util/gui/InputFieldValidator$ValidationCallback;->validationSuccessfull()V

    goto :goto_1
.end method

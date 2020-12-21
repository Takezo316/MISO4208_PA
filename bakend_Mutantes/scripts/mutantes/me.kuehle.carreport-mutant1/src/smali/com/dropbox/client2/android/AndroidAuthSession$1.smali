.class Lcom/dropbox/client2/android/AndroidAuthSession$1;
.super Ljava/lang/Object;
.source "AndroidAuthSession.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/client2/android/AndroidAuthSession;->startAuthentication(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dropbox/client2/android/AndroidAuthSession;


# direct methods
.method constructor <init>(Lcom/dropbox/client2/android/AndroidAuthSession;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/dropbox/client2/android/AndroidAuthSession$1;->this$0:Lcom/dropbox/client2/android/AndroidAuthSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 118
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 119
    return-void
.end method

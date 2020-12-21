.class public final Lme/kuehle/carreport/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/kuehle/carreport/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ColorBars:[I

.field public static final ColorBars_bar_length:I = 0x1

.field public static final ColorBars_bar_pointer_halo_radius:I = 0x3

.field public static final ColorBars_bar_pointer_radius:I = 0x2

.field public static final ColorBars_bar_thickness:I = 0x0

.field public static final ColorPicker:[I

.field public static final ColorPicker_color_center_halo_radius:I = 0x3

.field public static final ColorPicker_color_center_radius:I = 0x2

.field public static final ColorPicker_color_pointer_halo_radius:I = 0x5

.field public static final ColorPicker_color_pointer_radius:I = 0x4

.field public static final ColorPicker_color_wheel_radius:I = 0x0

.field public static final ColorPicker_color_wheel_thickness:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lme/kuehle/carreport/R$styleable;->ColorBars:[I

    .line 536
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lme/kuehle/carreport/R$styleable;->ColorPicker:[I

    return-void

    .line 449
    nop

    :array_0
    .array-data 4
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
    .end array-data

    .line 536
    :array_1
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
        0x7f010005
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

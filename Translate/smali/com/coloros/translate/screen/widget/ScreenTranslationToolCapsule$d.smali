.class final Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/coloros/translate/screen/widget/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d;

    invoke-direct {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d;-><init>()V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d;->INSTANCE:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/animation/ArgbEvaluator;
    .locals 0

    .line 2
    new-instance p0, Landroid/animation/ArgbEvaluator;

    invoke-direct {p0}, Landroid/animation/ArgbEvaluator;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d;->invoke()Landroid/animation/ArgbEvaluator;

    move-result-object p0

    return-object p0
.end method

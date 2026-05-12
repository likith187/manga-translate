.class public final Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getINSETS_EVALUATOR()Landroid/animation/TypeEvaluator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Insets;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->access$getINSETS_EVALUATOR$cp()Landroid/animation/TypeEvaluator;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Lcom/coui/appcompat/searchview/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Landroid/graphics/Insets;

    check-cast p3, Landroid/graphics/Insets;

    invoke-static {p1, p2, p3}, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->c(FLandroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

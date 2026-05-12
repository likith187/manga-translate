.class public final synthetic Lcom/coloros/translate/screen/widget/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

.field public final synthetic b:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/b1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/b1;->b:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/b1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/b1;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

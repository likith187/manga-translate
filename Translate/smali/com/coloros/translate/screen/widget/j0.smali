.class public final synthetic Lcom/coloros/translate/screen/widget/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/j0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iput p2, p0, Lcom/coloros/translate/screen/widget/j0;->b:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/j0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iget p0, p0, Lcom/coloros/translate/screen/widget/j0;->b:F

    invoke-static {v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;F)V

    return-void
.end method

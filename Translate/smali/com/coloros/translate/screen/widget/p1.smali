.class public final synthetic Lcom/coloros/translate/screen/widget/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

.field public final synthetic b:Lcom/coloros/translate/screen/translate/business/m;

.field public final synthetic c:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/p1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/p1;->b:Lcom/coloros/translate/screen/translate/business/m;

    iput-object p3, p0, Lcom/coloros/translate/screen/widget/p1;->c:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/p1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/p1;->b:Lcom/coloros/translate/screen/translate/business/m;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/p1;->c:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->s(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;Landroid/graphics/Bitmap;)V

    return-void
.end method

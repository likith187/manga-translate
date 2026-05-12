.class public final synthetic Lcom/coloros/translate/screen/widget/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

.field public final synthetic b:Lcom/coloros/translate/screen/translate/business/m;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/x1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/x1;->b:Lcom/coloros/translate/screen/translate/business/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/x1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/x1;->b:Lcom/coloros/translate/screen/translate/business/m;

    invoke-static {v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->v(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;)V

    return-void
.end method

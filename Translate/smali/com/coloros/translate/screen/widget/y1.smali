.class public final synthetic Lcom/coloros/translate/screen/widget/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

.field public final synthetic b:Lcom/coloros/translate/screen/translate/business/m;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/y1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/y1;->b:Lcom/coloros/translate/screen/translate/business/m;

    iput p3, p0, Lcom/coloros/translate/screen/widget/y1;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/y1;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/y1;->b:Lcom/coloros/translate/screen/translate/business/m;

    iget p0, p0, Lcom/coloros/translate/screen/widget/y1;->c:I

    invoke-static {v0, v1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;->z(Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;Lcom/coloros/translate/screen/translate/business/m;I)V

    return-void
.end method

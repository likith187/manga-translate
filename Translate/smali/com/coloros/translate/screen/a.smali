.class public final synthetic Lcom/coloros/translate/screen/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/ScreenTranslationService;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/ScreenTranslationService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/a;->a:Lcom/coloros/translate/screen/ScreenTranslationService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/a;->a:Lcom/coloros/translate/screen/ScreenTranslationService;

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

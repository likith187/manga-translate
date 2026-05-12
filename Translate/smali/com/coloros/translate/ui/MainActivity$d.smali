.class public final Lcom/coloros/translate/ui/MainActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/MainActivity;->p1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/MainActivity$d;->a:Lcom/coloros/translate/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "MainActivity"

    const-string v2, "jump to SimultaneousMainActivity"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/MainActivity$d;->a:Lcom/coloros/translate/ui/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object p0, p0, Lcom/coloros/translate/ui/MainActivity$d;->a:Lcom/coloros/translate/ui/MainActivity;

    const-class v2, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.class public final Lcom/coloros/translate/ui/texttranslation/m0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/repository/remote/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/m0;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/texttranslation/m0;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/m0;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/m0$c;->a:Lcom/coloros/translate/ui/texttranslation/m0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/repository/remote/c$b$a;->a(Lcom/coloros/translate/repository/remote/c$b;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/m0$c;->a:Lcom/coloros/translate/ui/texttranslation/m0;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/m0;->q(Lcom/coloros/translate/ui/texttranslation/m0;)V

    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/repository/remote/c;->H(Lcom/coloros/translate/repository/remote/c$b;)V

    return-void
.end method

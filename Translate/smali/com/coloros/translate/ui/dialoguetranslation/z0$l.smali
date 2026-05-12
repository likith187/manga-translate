.class final synthetic Lcom/coloros/translate/ui/dialoguetranslation/z0$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/b0;
.implements Lkotlin/jvm/internal/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/ui/dialoguetranslation/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lw8/l;


# direct methods
.method constructor <init>(Lw8/l;)V
    .locals 1

    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$l;->a:Lw8/l;

    return-void
.end method


# virtual methods
.method public final a()Ln8/g;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$l;->a:Lw8/l;

    return-object p0
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/z0$l;->a:Lw8/l;

    invoke-interface {p0, p1}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/lifecycle/b0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lkotlin/jvm/internal/l;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0$l;->a()Ln8/g;

    move-result-object p0

    check-cast p1, Lkotlin/jvm/internal/l;

    invoke-interface {p1}, Lkotlin/jvm/internal/l;->a()Ln8/g;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/z0$l;->a()Ln8/g;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

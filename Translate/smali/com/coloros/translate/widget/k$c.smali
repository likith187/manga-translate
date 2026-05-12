.class public final Lcom/coloros/translate/widget/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/widget/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/widget/k;->j(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/widget/k;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/coloros/translate/widget/k;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/widget/k$c;->a:Lcom/coloros/translate/widget/k;

    iput-object p2, p0, Lcom/coloros/translate/widget/k$c;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/translate/widget/k$c;->a:Lcom/coloros/translate/widget/k;

    iget-object p0, p0, Lcom/coloros/translate/widget/k$c;->b:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/coloros/translate/widget/k;->b(Lcom/coloros/translate/widget/k;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

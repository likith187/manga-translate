.class public final synthetic Lcom/coloros/translate/screen/widget/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lw8/l;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lw8/l;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/x;->a:Lw8/l;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/x;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/x;->a:Lw8/l;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/x;->b:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/coloros/translate/screen/widget/a0;->c(Lw8/l;Landroid/view/View;)V

    return-void
.end method

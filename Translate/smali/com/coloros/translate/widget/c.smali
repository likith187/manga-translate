.class public final synthetic Lcom/coloros/translate/widget/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/widget/d;

.field public final synthetic b:Landroid/window/OnBackInvokedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/widget/d;Landroid/window/OnBackInvokedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/widget/c;->a:Lcom/coloros/translate/widget/d;

    iput-object p2, p0, Lcom/coloros/translate/widget/c;->b:Landroid/window/OnBackInvokedCallback;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/widget/c;->a:Lcom/coloros/translate/widget/d;

    iget-object p0, p0, Lcom/coloros/translate/widget/c;->b:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, p0, p1}, Lcom/coloros/translate/widget/d;->b(Lcom/coloros/translate/widget/d;Landroid/window/OnBackInvokedCallback;Landroid/content/DialogInterface;)V

    return-void
.end method

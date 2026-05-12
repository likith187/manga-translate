.class public final synthetic Lcom/coloros/translate/ui/simultaneous/main/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/simultaneous/main/c;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/simultaneous/main/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/b;->a:Lcom/coloros/translate/ui/simultaneous/main/c;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/b;->a:Lcom/coloros/translate/ui/simultaneous/main/c;

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/c;->b(Lcom/coloros/translate/ui/simultaneous/main/c;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

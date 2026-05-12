.class public final synthetic Lcom/coloros/translate/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/o;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/m;->a:Lcom/coloros/translate/o;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/m;->a:Lcom/coloros/translate/o;

    invoke-static {p0, p1}, Lcom/coloros/translate/o;->d(Lcom/coloros/translate/o;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

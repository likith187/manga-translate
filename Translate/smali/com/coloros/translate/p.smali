.class public final synthetic Lcom/coloros/translate/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coloros/translate/o$b;

.field public final synthetic c:Lcom/coloros/translate/b;


# direct methods
.method public synthetic constructor <init>(ILcom/coloros/translate/o$b;Lcom/coloros/translate/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coloros/translate/p;->a:I

    iput-object p2, p0, Lcom/coloros/translate/p;->b:Lcom/coloros/translate/o$b;

    iput-object p3, p0, Lcom/coloros/translate/p;->c:Lcom/coloros/translate/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/coloros/translate/p;->a:I

    iget-object v1, p0, Lcom/coloros/translate/p;->b:Lcom/coloros/translate/o$b;

    iget-object p0, p0, Lcom/coloros/translate/p;->c:Lcom/coloros/translate/b;

    invoke-static {v0, v1, p0, p1}, Lcom/coloros/translate/o$b$c;->b(ILcom/coloros/translate/o$b;Lcom/coloros/translate/b;Landroid/view/View;)V

    return-void
.end method

.class public final synthetic Lcom/coloros/translate/widget/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/widget/LanguageChooseView;

.field public final synthetic b:Lw8/l;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/widget/LanguageChooseView;Lw8/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/widget/m;->a:Lcom/coloros/translate/widget/LanguageChooseView;

    iput-object p2, p0, Lcom/coloros/translate/widget/m;->b:Lw8/l;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/widget/m;->a:Lcom/coloros/translate/widget/LanguageChooseView;

    iget-object p0, p0, Lcom/coloros/translate/widget/m;->b:Lw8/l;

    invoke-static {v0, p0, p1}, Lcom/coloros/translate/widget/LanguageChooseView;->d(Lcom/coloros/translate/widget/LanguageChooseView;Lw8/l;Landroid/view/View;)V

    return-void
.end method

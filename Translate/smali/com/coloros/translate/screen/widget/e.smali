.class public final synthetic Lcom/coloros/translate/screen/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lw8/l;

.field public final synthetic b:Lcom/coloros/translate/screen/widget/LanguageChooseView;


# direct methods
.method public synthetic constructor <init>(Lw8/l;Lcom/coloros/translate/screen/widget/LanguageChooseView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/e;->a:Lw8/l;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/e;->b:Lcom/coloros/translate/screen/widget/LanguageChooseView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e;->a:Lw8/l;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/e;->b:Lcom/coloros/translate/screen/widget/LanguageChooseView;

    invoke-static {v0, p0, p1}, Lcom/coloros/translate/screen/widget/LanguageChooseView;->c(Lw8/l;Lcom/coloros/translate/screen/widget/LanguageChooseView;Landroid/view/View;)V

    return-void
.end method

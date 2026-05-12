.class public final synthetic Lcom/coloros/translate/ui/texttranslation/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/texttranslation/h$b;

.field public final synthetic b:Lcom/coloros/translate/ui/texttranslation/h;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/texttranslation/h$b;Lcom/coloros/translate/ui/texttranslation/h;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/e;->a:Lcom/coloros/translate/ui/texttranslation/h$b;

    iput-object p2, p0, Lcom/coloros/translate/ui/texttranslation/e;->b:Lcom/coloros/translate/ui/texttranslation/h;

    iput p3, p0, Lcom/coloros/translate/ui/texttranslation/e;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/e;->a:Lcom/coloros/translate/ui/texttranslation/h$b;

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/e;->b:Lcom/coloros/translate/ui/texttranslation/h;

    iget p0, p0, Lcom/coloros/translate/ui/texttranslation/e;->c:I

    invoke-static {v0, v1, p0, p1}, Lcom/coloros/translate/ui/texttranslation/h;->f(Lcom/coloros/translate/ui/texttranslation/h$b;Lcom/coloros/translate/ui/texttranslation/h;ILandroid/view/View;)V

    return-void
.end method

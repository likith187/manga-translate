.class public final synthetic Lcom/coloros/translate/ui/texttranslation/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/texttranslation/h;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/texttranslation/h;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/g;->a:Lcom/coloros/translate/ui/texttranslation/h;

    iput p2, p0, Lcom/coloros/translate/ui/texttranslation/g;->b:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/g;->a:Lcom/coloros/translate/ui/texttranslation/h;

    iget p0, p0, Lcom/coloros/translate/ui/texttranslation/g;->b:I

    invoke-static {v0, p0, p1}, Lcom/coloros/translate/ui/texttranslation/h;->g(Lcom/coloros/translate/ui/texttranslation/h;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

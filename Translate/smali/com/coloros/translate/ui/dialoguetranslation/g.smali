.class public final synthetic Lcom/coloros/translate/ui/dialoguetranslation/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/dialoguetranslation/i;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/g;->a:Lcom/coloros/translate/ui/dialoguetranslation/i;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/g;->a:Lcom/coloros/translate/ui/dialoguetranslation/i;

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/dialoguetranslation/i;->d(Lcom/coloros/translate/ui/dialoguetranslation/i;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

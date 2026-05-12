.class public final synthetic Lcom/coloros/translate/screen/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/widget/PaintCustomView;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/widget/PaintCustomView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/j;->a:Lcom/coloros/translate/screen/widget/PaintCustomView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/j;->a:Lcom/coloros/translate/screen/widget/PaintCustomView;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/PaintCustomView;->h(Lcom/coloros/translate/screen/widget/PaintCustomView;)V

    return-void
.end method

.class public final synthetic Lcom/coloros/translate/screen/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/widget/DrawingView;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/widget/DrawingView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/a;->a:Lcom/coloros/translate/screen/widget/DrawingView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/a;->a:Lcom/coloros/translate/screen/widget/DrawingView;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/DrawingView;->b(Lcom/coloros/translate/screen/widget/DrawingView;)V

    return-void
.end method

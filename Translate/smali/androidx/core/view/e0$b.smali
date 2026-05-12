.class Landroidx/core/view/e0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/e0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/view/ScrollFeedbackProvider;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/ScrollFeedbackProvider;->createProvider(Landroid/view/View;)Landroid/view/ScrollFeedbackProvider;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/e0$b;->a:Landroid/view/ScrollFeedbackProvider;

    return-void
.end method


# virtual methods
.method public a(IIIZ)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/e0$b;->a:Landroid/view/ScrollFeedbackProvider;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ScrollFeedbackProvider;->onScrollLimit(IIIZ)V

    return-void
.end method

.method public b(IIII)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/e0$b;->a:Landroid/view/ScrollFeedbackProvider;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ScrollFeedbackProvider;->onScrollProgress(IIII)V

    return-void
.end method

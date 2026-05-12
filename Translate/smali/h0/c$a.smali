.class public Lh0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Landroidx/emoji2/text/e;->f(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    move-result p0

    return p0
.end method

.method public b(Landroid/view/inputmethod/EditorInfo;)V
    .locals 0

    invoke-static {}, Landroidx/emoji2/text/e;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroidx/emoji2/text/e;->c()Landroidx/emoji2/text/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/e;->v(Landroid/view/inputmethod/EditorInfo;)V

    :cond_0
    return-void
.end method

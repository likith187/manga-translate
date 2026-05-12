.class Landroidx/customview/widget/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/customview/widget/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/collection/j;

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/a$b;->c(Landroidx/collection/j;I)Ld0/h;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/collection/j;

    invoke-virtual {p0, p1}, Landroidx/customview/widget/a$b;->d(Landroidx/collection/j;)I

    move-result p0

    return p0
.end method

.method public c(Landroidx/collection/j;I)Ld0/h;
    .locals 0

    invoke-virtual {p1, p2}, Landroidx/collection/j;->j(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld0/h;

    return-object p0
.end method

.method public d(Landroidx/collection/j;)I
    .locals 0

    invoke-virtual {p1}, Landroidx/collection/j;->i()I

    move-result p0

    return p0
.end method

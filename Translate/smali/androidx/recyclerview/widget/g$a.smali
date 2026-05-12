.class Landroidx/recyclerview/widget/g$a;
.super Landroidx/dynamicanimation/animation/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/g;->m(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/g;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/g$a;->a:Landroidx/recyclerview/widget/g;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/g;)F
    .locals 0

    invoke-static {p1}, Landroidx/recyclerview/widget/g;->a(Landroidx/recyclerview/widget/g;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public b(Landroidx/recyclerview/widget/g;F)V
    .locals 0

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/g;->b(Landroidx/recyclerview/widget/g;F)V

    return-void
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Landroidx/recyclerview/widget/g;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g$a;->a(Landroidx/recyclerview/widget/g;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroidx/recyclerview/widget/g;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/g$a;->b(Landroidx/recyclerview/widget/g;F)V

    return-void
.end method

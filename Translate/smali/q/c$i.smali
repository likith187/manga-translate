.class Lq/c$i;
.super Lq/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq/c;-><init>()V

    return-void
.end method


# virtual methods
.method public j(Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p0, p2}, Lm/e;->a(F)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method

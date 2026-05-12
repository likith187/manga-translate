.class Lq/d$o;
.super Lq/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq/d;-><init>()V

    return-void
.end method


# virtual methods
.method public h(Landroid/view/View;F)V
    .locals 0

    invoke-virtual {p0, p2}, Lm/j;->a(F)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method

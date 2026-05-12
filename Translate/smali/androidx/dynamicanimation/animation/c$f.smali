.class Landroidx/dynamicanimation/animation/c$f;
.super Landroidx/dynamicanimation/animation/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/dynamicanimation/animation/c;-><init>(Landroidx/dynamicanimation/animation/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/dynamicanimation/animation/e;

.field final synthetic b:Landroidx/dynamicanimation/animation/c;


# direct methods
.method constructor <init>(Landroidx/dynamicanimation/animation/c;Ljava/lang/String;Landroidx/dynamicanimation/animation/e;)V
    .locals 0

    iput-object p1, p0, Landroidx/dynamicanimation/animation/c$f;->b:Landroidx/dynamicanimation/animation/c;

    iput-object p3, p0, Landroidx/dynamicanimation/animation/c$f;->a:Landroidx/dynamicanimation/animation/e;

    invoke-direct {p0, p2}, Landroidx/dynamicanimation/animation/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .locals 0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/c$f;->a:Landroidx/dynamicanimation/animation/e;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/e;->a()F

    move-result p0

    return p0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/c$f;->a:Landroidx/dynamicanimation/animation/e;

    invoke-virtual {p0, p2}, Landroidx/dynamicanimation/animation/e;->b(F)V

    return-void
.end method

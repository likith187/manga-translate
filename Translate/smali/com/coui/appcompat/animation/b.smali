.class public final synthetic Lcom/coui/appcompat/animation/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coui/appcompat/animation/b;->a:F

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/animation/b;->a:F

    check-cast p1, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    check-cast p2, Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;

    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/animation/COUISpringDragHelper;->a(FLcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;Lcom/coui/appcompat/animation/COUISpringDragHelper$Vec2;)I

    move-result p0

    return p0
.end method

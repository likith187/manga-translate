.class public final synthetic Lcom/coui/appcompat/progressbar/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/c$r;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/c;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/dynamicanimation/animation/c;FF)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/c;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-static {p0, p1, p2, p3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->e(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;Landroidx/dynamicanimation/animation/c;FF)V

    return-void
.end method

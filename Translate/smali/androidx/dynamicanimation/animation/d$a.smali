.class final Landroidx/dynamicanimation/animation/d$a;
.super Landroidx/dynamicanimation/animation/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/dynamicanimation/animation/d;->createFloatPropertyCompat(Landroid/util/FloatProperty;)Landroidx/dynamicanimation/animation/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/FloatProperty;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/util/FloatProperty;)V
    .locals 0

    iput-object p2, p0, Landroidx/dynamicanimation/animation/d$a;->a:Landroid/util/FloatProperty;

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/d;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)F
    .locals 0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/d$a;->a:Landroid/util/FloatProperty;

    invoke-virtual {p0, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public setValue(Ljava/lang/Object;F)V
    .locals 0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/d$a;->a:Landroid/util/FloatProperty;

    invoke-virtual {p0, p1, p2}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    return-void
.end method

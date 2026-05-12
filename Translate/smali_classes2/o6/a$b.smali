.class abstract Lo6/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static screenshot:Lcom/oplus/utils/reflect/RefMethod;
    .annotation runtime Lcom/oplus/utils/reflect/MethodName;
        name = "screenshot"
        params = {
            Landroid/graphics/Rect;,
            I,
            I,
            I,
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static screenshotBelowP:Lcom/oplus/utils/reflect/RefMethod;
    .annotation runtime Lcom/oplus/utils/reflect/MethodName;
        name = "screenshot"
        params = {
            Landroid/graphics/Rect;,
            I,
            I,
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lo6/a$b;

    invoke-static {}, Lo6/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    return-void
.end method

.method static synthetic a()Lcom/oplus/utils/reflect/RefMethod;
    .locals 1

    sget-object v0, Lo6/a$b;->screenshot:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic b()Lcom/oplus/utils/reflect/RefMethod;
    .locals 1

    sget-object v0, Lo6/a$b;->screenshotBelowP:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

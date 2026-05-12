.class abstract Lo6/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static createFromGraphicBuffer:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Landroid/hardware/HardwareBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lo6/a$a;

    const-class v1, Landroid/hardware/HardwareBuffer;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    return-void
.end method

.method static synthetic a()Lcom/oplus/utils/reflect/RefMethod;
    .locals 1

    sget-object v0, Lo6/a$a;->createFromGraphicBuffer:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

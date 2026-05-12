.class public Lcom/heytap/reflect/RefStaticInt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RefStaticInt"


# instance fields
.field private mField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/reflect/RefStaticInt;->mField:Ljava/lang/reflect/Field;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/heytap/reflect/RefStaticInt;->mField:Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "RefStaticInt"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getWithException()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object p0, p0, Lcom/heytap/reflect/RefStaticInt;->mField:Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public set(I)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/heytap/reflect/RefStaticInt;->mField:Ljava/lang/reflect/Field;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RefStaticInt"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

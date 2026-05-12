.class public abstract Lcom/oplus/vfxsdk/naive/parse/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlin/text/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/text/n;

    const-string v1, "^(.+)\\.\\[(\\d+)\\]\\.([^.]*)$"

    invoke-direct {v0, v1}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/parse/b;->a:Lkotlin/text/n;

    return-void
.end method

.method public static final a()Lkotlin/text/n;
    .locals 1

    sget-object v0, Lcom/oplus/vfxsdk/naive/parse/b;->a:Lkotlin/text/n;

    return-object v0
.end method

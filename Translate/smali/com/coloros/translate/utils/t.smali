.class public final Lcom/coloros/translate/utils/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/utils/t;

.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/utils/t;

    invoke-direct {v0}, Lcom/coloros/translate/utils/t;-><init>()V

    sput-object v0, Lcom/coloros/translate/utils/t;->INSTANCE:Lcom/coloros/translate/utils/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Z
    .locals 1

    sget-boolean v0, Lcom/coloros/translate/utils/t;->a:Z

    return v0
.end method

.method public static final b(Z)V
    .locals 0

    sput-boolean p0, Lcom/coloros/translate/utils/t;->a:Z

    return-void
.end method

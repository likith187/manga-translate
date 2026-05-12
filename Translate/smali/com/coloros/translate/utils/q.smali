.class public final Lcom/coloros/translate/utils/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/utils/q;

.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/utils/q;

    invoke-direct {v0}, Lcom/coloros/translate/utils/q;-><init>()V

    sput-object v0, Lcom/coloros/translate/utils/q;->INSTANCE:Lcom/coloros/translate/utils/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Z
    .locals 1

    sget-boolean v0, Lcom/coloros/translate/utils/q;->a:Z

    return v0
.end method

.method public static final b(Z)V
    .locals 0

    sput-boolean p0, Lcom/coloros/translate/utils/q;->a:Z

    return-void
.end method
